#include "chip.h"
#include "hardware_nxp.h"
#include "operaciones.h"



volatile uint8_t habilitado = 0;
volatile uint8_t flag_refresco = 1;
volatile uint8_t cuentas = 4;
const char msg1[] = "apagando leds ";
const char msg2[] = "prendiendo leds ";
const char msg3[] = "Habilitado el conteo, el mismo se muestra por pantalla\r\n";
const char msg4[] = "Deshabilitado el conteo, ingrese un caracter para mostrar el eco\r\n";


/**
 * Manejo de interrupciones asociadas a la tecla 1
 */
void GPIO1_IRQHandler(void)
{
	/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	delayMs(300);
	cuentas ++;
	flag_refresco = 1;
}

/**
 * Manejo de interrupciones asociadas a la tecla 2
 */
void GPIO2_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	delayMs(300);
	if(habilitado)
	{
		NVIC_DisableIRQ(PIN_INT1_IRQn);
		disable_SysTick();
		setLedFromMsk(0);
		NVIC_EnableIRQ(USART2_IRQn);
	}
	else
	{	NVIC_DisableIRQ(USART2_IRQn);
		configurar_SysTick();
		/*importante el orden, la forma alternativa es deshabilitar el periférico
	 	 con el Chip_PININT_DisableIntLow*/
		Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
		NVIC_ClearPendingIRQ (PIN_INT1_IRQn);

		NVIC_EnableIRQ(PIN_INT1_IRQn);
		setLedFromMsk((0x0F & cuentas)<<2);
		Chip_UART_SendBlocking(LPC_USART2,"\n\r",strlen("\n\r"));
	}

	habilitado = (habilitado + 1)%2;
}

/**
 * Manejo de interrupciones asociadas a la tecla 4
 */
void GPIO4_IRQHandler(void)
{
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	delayMs(300);
	cuentas = 0;
	flag_refresco = 1;
}


void SysTick_Handler (void)
{
	if(cuentas>7)
	{
			cuentas = 4;
	}

	//uint8_t mask = cuentas & 0x0F;
	if(flag_refresco)
	{
		Chip_UART_SendRB (LPC_USART2, &txRing, msg1, strlen(msg1));
		ledOn(leds[cuentas].gpioPort,leds[cuentas].gpioPin);
		USARTSendInt(cuentas);
		flag_refresco = 0;
	}
	else
	{
		Chip_UART_SendRB (LPC_USART2, &txRing, msg2, strlen(msg2));
		ledOff(leds[cuentas].gpioPort,leds[cuentas].gpioPin);
		USARTSendInt(cuentas);
		flag_refresco = 1;
		cuentas++;
		}

}

void UART2_IRQHandler(void)
{

	Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
}

int main(void)
{
	uint8_t key = 0;
	uint8_t bytes;
	inicializar_sistema();
	inicializar_leds();
	inicializar_teclado();
	init_interrupciones();
	inicializar_USART();
	configurar_SysTick();

	Chip_UART_SendRB (LPC_USART2, &txRing, msg1, strlen(msg1));
	Chip_UART_SendRB (LPC_USART2, &txRing, msg2, strlen(msg2));
	Chip_UART_SendRB (LPC_USART2, &txRing, msg3, strlen(msg3));
	Chip_UART_SendRB (LPC_USART2, &txRing, msg4, strlen(msg4));

  while (1)
  {

	  __WFI();
  }
  return 0;
}
