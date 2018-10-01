/*
 * operaciones.c
 *
 *  Created on: 15 sep. 2018
 *      Author: root
 */
#include "operaciones.h"
#include "hardware_nxp.h"


volatile uint8_t PressedTEC1 = 0;/*TEC1 no esta pulsada*/
volatile uint8_t PressedTEC2 = 0;
volatile uint8_t PressedTEC3 = 0;
volatile uint8_t PressedTEC4 = 0;

char str[100];
static char valor [10];
uint8_t key;


const digitalIO leds[] =
{
		{PORT_PIN_RGB, PIN_RGB_RED, GPIO_PORT_RGB, GPIO_PIN_RED, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_LED1, PIN_LED1, GPIO_PORT_LED1, GPIO_PIN_LED1, SCU_MODE_INACT | SCU_MODE_FUNC0},
		{PORT_PIN_LED2, PIN_LED2, GPIO_PORT_LED2, GPIO_PIN_LED2, SCU_MODE_INACT | SCU_MODE_FUNC0},
		{PORT_PIN_LED3, PIN_LED3, GPIO_PORT_LED3, GPIO_PIN_LED3, SCU_MODE_INACT | SCU_MODE_FUNC0},
		{PORT_PIN_RGB, PIN_RGB_GRN, GPIO_PORT_RGB, GPIO_PIN_GRN, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_RGB, PIN_RGB_BLU, GPIO_PORT_RGB, GPIO_PIN_BLU, SCU_MODE_INACT | SCU_MODE_FUNC4}
};

const digitalIO keys[]=
{
		{PORT_PIN_KEY1, PIN_KEY1, GPIO_PORT_KEY1, GPIO_PIN_KEY1, MD_EZI|MD_ZI, FUNC0, TEC1_IRQ, PIN_INT1_IRQn},
		{PORT_PIN_KEY2, PIN_KEY2, GPIO_PORT_KEY2, GPIO_PIN_KEY2, MD_EZI|MD_ZI, FUNC0, TEC2_IRQ, PIN_INT2_IRQn},
		{PORT_PIN_KEY3, PIN_KEY3, GPIO_PORT_KEY3, GPIO_PIN_KEY3, MD_EZI|MD_ZI, FUNC0, TEC3_IRQ, PIN_INT3_IRQn},
		{PORT_PIN_KEY4, PIN_KEY4, GPIO_PORT_KEY4, GPIO_PIN_KEY4, MD_EZI|MD_ZI, FUNC0, TEC4_IRQ, PIN_INT4_IRQn},
};

void inicializar_sistema()
{
	Chip_SetupXtalClocking();
	SystemCoreClockUpdate();
	StopWatch_Init();
	fpuInit();

}

void inicializar_leds()
{
	uint8_t i;




	Chip_GPIO_Init(LPC_GPIO_PORT);
	for(i=0; i<sizeof(leds)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_PinMuxSet (leds[i].hwPort , leds[i].hwPin , leds[i].modo);
		Chip_GPIO_SetPinDIROutput (LPC_GPIO_PORT, leds[i].gpioPort, leds[i].gpioPin);
		Chip_GPIO_SetPortOutLow (LPC_GPIO_PORT , leds[i].gpioPort , leds[i].gpioPin );
	}
}

void inicializar_teclado()
{
	uint8_t i;

	for(i=0; i<sizeof(keys)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_PinMuxSet (keys[i].hwPort , keys[i].hwPin , keys[i].modo);
		Chip_GPIO_SetPinDIRInput (LPC_GPIO_PORT, keys[i].gpioPort, keys[i].gpioPin);
	}
}


void inicializar_USART(void)
{

	Chip_UART_Init(LPC_USART2);
	Chip_UART_SetBaud(LPC_USART2, 115200);
	Chip_UART_ConfigData(LPC_USART2, UART_LCR_WLEN8 | UART_LCR_SBS_1BIT | UART_LCR_PARITY_DIS);
	Chip_UART_TXEnable(LPC_USART2);
	Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_RX_RS | UART_FCR_TX_RS | UART_FCR_TRG_LEV3));
	Chip_UART_IntEnable(LPC_USART2, (UART_IER_RBRINT | UART_IER_RLSINT | UART_IER_THREINT));

	RingBuffer_Init(&rxRing, rxBuff, 1, BUFFSize);
	RingBuffer_Init(&txRing, txBuff, 1, BUFFSize);
	NVIC_EnableIRQ(USART2_IRQn); /*máscara en el cmsis_43xx.h*/

	Chip_SCU_PinMux(7, 1, MD_PDN, FUNC6);
	Chip_SCU_PinMux(7, 2, MD_PLN|MD_EZI|MD_ZI, FUNC6); /*pg 373 hoja de datos*/

}

void init_interrupciones()
{
	uint8_t i;
	Chip_PININT_Init (LPC_GPIO_PIN_INT);

	for(i=0; i<sizeof(keys)/ sizeof(digitalIO); i++)
	{
		Chip_SCU_GPIOIntPinSel  (keys[i].pinsel , keys[i].gpioPort , keys[i].gpioPin);
		Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT, PININTCH(keys[i].pinsel));
		Chip_PININT_SetPinModeEdge(LPC_GPIO_PIN_INT, PININTCH(keys[i].pinsel));
		Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT, PININTCH(keys[i].pinsel));
		NVIC_ClearPendingIRQ(keys[i].nvic_mask);
		NVIC_EnableIRQ(keys[i].nvic_mask);
	}

}

void displayCounter(uint8_t v)
{
	setLedFromMsk((0x0F & v)<<2);

}

void putChr(char* ch)
{
	Chip_UART_SendRB (LPC_USART2, &txRing, &ch, 1);
}

void print(void *txt)
{
	Chip_UART_SendRB (LPC_USART2, &txRing, txt, strlen(txt));
}

void USARTSendInt(uint8_t entero)
{

	itoa(entero, valor, 10);
	//Chip_UART_SendBlocking ( LPC_USART2 ,valor, sizeof(valor));
	Chip_UART_SendRB (LPC_USART2, &txRing, valor, strlen(valor));

}

uint8_t serialRead(uint8_t *data, uint8_t maxData)
{
  return Chip_UART_ReadRB(LPC_USART2, &rxRing, data, maxData);
}

void terminal_eco()
{
	uint8_t bytes =0;

			  bytes = serialRead(&key, 1);

			  if(bytes > 0)
			  {
				  if(key == 13)
				  {
					  print("\n\r");
				  }
				  else
				  {
					  print((const char*) &key);
				  }

			  }

}

void configurar_SysTick()
{
	SysTick_Config ( SystemCoreClock / 100); /*cada 10 ms*/
	SystemCoreClockUpdate();
}

void disable_SysTick()
{
	SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk;

}

uint8_t evaluar_teclas(estado_anticipacion estado, BoardKeys pressed_key)
{
	uint8_t k,resultado = 0;
	uint16_t periodo_parpadeo = 500;
	if(estado.sentido == 0)
	{
		if((pressed_key >> 1) == estado.led_activo)
		{
			resultado = 1;
			periodo_parpadeo = 200;
		}
	}
	else
	{
		if((pressed_key << 1) == estado.led_activo)
		{
			resultado = 1;
			periodo_parpadeo = 200;
		}

	}

	switch(estado.led_activo)
	{
		case primer_led:
			k=5; break;
		case segundo_led:
			k=1; break;
		case tercer_led:
			k=2; break;
		case ultimo_led:
			k=3; break;
	}

	ledOff(leds[k].gpioPort, leds[k].gpioPin);

	for(k=0; k<10; k++)
	{
		ledToggle(leds[1].gpioPort, leds[1].gpioPin);
		ledToggle(leds[2].gpioPort, leds[2].gpioPin);
		ledToggle(leds[3].gpioPort, leds[3].gpioPin);
		ledToggle(leds[5].gpioPort, leds[5].gpioPin);
		delayMs(periodo_parpadeo);
	}

	return resultado;
}


uint32_t genera_semilla()
{
	uint32_t tstart = 0;
	uint32_t telapsed = 0;
	tstart = StopWatch_Start();
	while(!PressedTEC1)
	{
		escanear_teclado();
		PressedTEC2 = 0;
		PressedTEC3 = 0;
		PressedTEC4 = 0;
	}
	telapsed = StopWatch_TicksToMs(StopWatch_Elapsed(tstart));

	PressedTEC1 = 0;
	return telapsed;
}

void generar_secuencia()
{
	uint8_t k;
	for(k=0; k<max_iter; k++)
	{
		secuencia_ingresada.leds[k] = keys[0];
		switch(rand()%4)
		{
			case 0:
				secuencia.leds[k] = leds[5]; break;
			case 1:
				secuencia.leds[k] = leds[1]; break;
			case 2:
				secuencia.leds[k] = leds[2]; break;
			case 3:
				secuencia.leds[k] = leds[3]; break;
		}
	}
}


void escanear_teclado(void)
{
	static uint8_t anterior = 0;
	uint8_t tecla;
	tecla = getKeyPressed();

	if(tecla != anterior)
	{

		if(tecla==key1){
			PressedTEC1 = 1;
		}
		if(tecla==key2){
			PressedTEC2 = 1;
		}
		if(tecla==key3){
			PressedTEC3 = 1;
		}
		if(tecla==key4){
			PressedTEC4 = 1;
		}


		anterior = tecla;
	}

	delayMs(100);
}

void titilar(digitalIO led,uint16_t periodo, uint8_t cant)
{
	uint8_t ite = 0;
	setLedFromMsk(0);
	for (ite = 0;ite < cant*2; ite++)
	{
		ledToggle(led.gpioPort, led.gpioPin);
		delayMs(periodo);
	}
	setLedFromMsk(0);
}

void mostrar_secuencia()
{
	uint8_t i = 0;
	setLedFromMsk(0);
	for(i = 0; i < pos_secuencia; i++)
	{
		Chip_GPIO_SetPinState(LPC_GPIO_PORT,secuencia.leds[i].gpioPort,secuencia.leds[i].gpioPin,TRUE);
		delayMs(secuencia.periodo-pos_secuencia*10);
		Chip_GPIO_SetPinState(LPC_GPIO_PORT,secuencia.leds[i].gpioPort,secuencia.leds[i].gpioPin,FALSE);
		delayMs(secuencia.periodo-pos_secuencia*10);
	}
	pos_ingreso = 0;
	// tirar la cuenta regresiva
}

void evaluar_secuencia()
{
	uint8_t resultado,i= 0;
	resultado = 1;
	while(i<pos_secuencia)
	{
		if ((secuencia.leds[i].gpioPin != secuencia_ingresada.leds[i].gpioPin ) && (secuencia.leds[i].gpioPort != secuencia_ingresada.leds[i].gpioPort ))
		{
			resultado = 0;
			i = pos_secuencia;
			titilar(leds[0],250, 5); // titila el led rojo del rgb
			pos_secuencia = 1;
		}
		i++;
	}
	if(resultado)
	{
		titilar(leds[4],250, 5); // titila el led verde del rgb
		pos_secuencia++;
		if(pos_secuencia > max_iter)
		{
			pos_secuencia = 1;
		}
	}
	if(pos_secuencia < max_iter)
	{
		mostrar_secuencia();
	}
}
