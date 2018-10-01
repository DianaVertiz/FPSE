/*
 * operaciones.c
 *
 *  Created on: 15 sep. 2018
 *      Author: root
 */
#include "operaciones.h"



/*const digitalIO leds[] =
{
		{PORT_PIN_RGB, PIN_RGB_RED, GPIO_PORT_RGB, GPIO_PIN_RED, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_LED1, PIN_LED1, GPIO_PORT_LED1, GPIO_PIN_LED1, SCU_MODE_INACT | SCU_MODE_FUNC0},
		{PORT_PIN_LED2, PIN_LED2, GPIO_PORT_LED2, GPIO_PIN_LED2, SCU_MODE_INACT | SCU_MODE_FUNC0},
		{PORT_PIN_LED3, PIN_LED3, GPIO_PORT_LED3, GPIO_PIN_LED3, SCU_MODE_INACT | SCU_MODE_FUNC0},
		{PORT_PIN_RGB, PIN_RGB_GRN, GPIO_PORT_RGB, GPIO_PIN_GRN, SCU_MODE_INACT | SCU_MODE_FUNC4},
		{PORT_PIN_RGB, PIN_RGB_BLU, GPIO_PORT_RGB, GPIO_PIN_BLU, SCU_MODE_INACT | SCU_MODE_FUNC4}
};
*/
const digitalIO leds[] = {
		{PORT_PIN_LED3,PIN_LED3,GPIO_PORT_LED3,GPIO_PIN_LED3,LED3_FUNC},
		{PORT_PIN_LED2,PIN_LED2,GPIO_PORT_LED2,GPIO_PIN_LED2,LED2_FUNC},
		{PORT_PIN_LED1,PIN_LED1,GPIO_PORT_LED1,GPIO_PIN_LED1,LED1_FUNC},
		{PORT_PIN_LED0,PIN_LED0,GPIO_PORT_LED0,GPIO_PIN_LED0,LED0_FUNC},
		{PORT_PIN_LED4,PIN_LED4,GPIO_PORT_LED4,GPIO_PIN_LED4,LED4_FUNC},
		{PORT_PIN_LED5,PIN_LED5,GPIO_PORT_LED5,GPIO_PIN_LED5,LED5_FUNC},
		{PORT_PIN_LED6,PIN_LED6,GPIO_PORT_LED6,GPIO_PIN_LED6,LED6_FUNC},
		{PORT_PIN_LED7,PIN_LED7,GPIO_PORT_LED7,GPIO_PIN_LED7,LED7_FUNC},
};

const digitalIO keys[] =
{
		{PORT_PIN_KEY1, PIN_KEY1, GPIO_PORT_KEY1, GPIO_PIN_KEY1, MD_EZI|MD_ZI, FUNC0},
		{PORT_PIN_KEY2, PIN_KEY2, GPIO_PORT_KEY2, GPIO_PIN_KEY2, MD_EZI|MD_ZI, FUNC0},
		{PORT_PIN_KEY3, PIN_KEY3, GPIO_PORT_KEY3, GPIO_PIN_KEY3, MD_EZI|MD_ZI, FUNC0},
		{PORT_PIN_KEY4, PIN_KEY4, GPIO_PORT_KEY4, GPIO_PIN_KEY4, MD_EZI|MD_ZI, FUNC0},
};

void inicializar_sistema()
{
	Chip_SetupXtalClocking();
	SystemCoreClockUpdate();
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
	//RingBuffer_Flush(&rxRing);
	//RingBuffer_Flush(&txRing);
	NVIC_EnableIRQ(USART2_IRQn); /*máscara en el cmsis_43xx.h*/

	Chip_SCU_PinMux(7, 1, MD_PDN, FUNC6);
	Chip_SCU_PinMux(7, 2, MD_PLN|MD_EZI|MD_ZI, FUNC6); /*pg 373 hoja de datos*/

}

void init_interrupciones()
{
	Chip_PININT_Init (LPC_GPIO_PIN_INT);
	Chip_SCU_GPIOIntPinSel (TEC1_IRQ, GPIO_PORT_KEY1, GPIO_PIN_KEY1);
	Chip_SCU_GPIOIntPinSel (TEC2_IRQ, GPIO_PORT_KEY2, GPIO_PIN_KEY2);
	Chip_SCU_GPIOIntPinSel (TEC4_IRQ, GPIO_PORT_KEY4, GPIO_PIN_KEY4);

	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_SetPinModeEdge ( LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	Chip_PININT_EnableIntLow (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));

	NVIC_ClearPendingIRQ (PIN_INT1_IRQn);/*PIN_INT1_IRQn es la máscara de interrupción del NVIC*/
	NVIC_ClearPendingIRQ (PIN_INT2_IRQn);
	NVIC_ClearPendingIRQ (PIN_INT4_IRQn);

	//NVIC_DisableIRQ (PIN_INT1_IRQn);/*empieza deshabilitada*/
	NVIC_EnableIRQ (PIN_INT2_IRQn);
	NVIC_EnableIRQ (PIN_INT4_IRQn);

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
	Chip_UART_SendBlocking ( LPC_USART2 ,strcat(valor,"\n\r"), sizeof(valor));


}

uint8_t serialRead(uint8_t *data, uint8_t maxData)
{
  return Chip_UART_ReadRB(LPC_USART2, &rxRing, data, maxData);
}

void terminal_eco(uint8_t key)
{
	uint8_t bytes =0;


			  bytes = Chip_UART_ReadRB(LPC_USART2, &rxRing, &key, 1);

			  if(bytes > 0)
			  {
				  if(key == 13)
				  {
					  Chip_UART_SendRB(LPC_USART2, &txRing,(const uint8_t *)"\n\r", 2);
				  }
				  else
				  {
					  Chip_UART_SendRB(LPC_USART2, &txRing, (const uint8_t *) &key, 1);
				  }

			  }

}



void configurar_SysTick(void)
{
	SysTick_Config ( SystemCoreClock / 50 ); /*cada 1000 ms*/

}

void disable_SysTick(void)
{
	SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk;

}
