#include "chip.h"
#include <stopwatch.h>
//#include "hardware.h"
#include "operaciones.h"

volatile uint8_t inicio = 0;


void respuesta_teclado(uint8_t tecla)
{
	if(!inicio)
		{
			genera_semilla();
			generar_secuencia();
			inicio = 1;
		}
		else
		{
			titilar(leds[tecla],1,500);
			secuencia_ingresada.leds[pos_ingreso] = leds[tecla];
			pos_ingreso++;

			if(pos_ingreso > pos_secuencia)
			{
				pos_ingreso = 0;
				evaluar_secuencia();
			}
		}
}


/**
 * Manejo de interrupciones asociadas a la tecla 1
 */
void GPIO1_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);

	respuesta_teclado(5);
		/*limpiar el estado de la interrupción*/
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC1_IRQ));
	configurar_SysTick();
}

/**
 * Manejo de interrupciones asociadas a la tecla 2
 */
void GPIO2_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	respuesta_teclado(1);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC2_IRQ));
	configurar_SysTick();
}


void GPIO3_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	respuesta_teclado(2);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC3_IRQ));
	configurar_SysTick();
}

/**
 * Manejo de interrupciones asociadas a la tecla 4
 */
void GPIO4_IRQHandler(void)
{
	disable_SysTick();
	delayMs(400);
	respuesta_teclado(3);
	Chip_PININT_ClearIntStatus (LPC_GPIO_PIN_INT , PININTCH (TEC4_IRQ));
	configurar_SysTick();
}


void SysTick_Handler (void)
{

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



  while (1)
  {
	  __WFI();

  }
  return 0;
}
