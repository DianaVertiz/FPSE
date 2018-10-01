#include "hardware.h"
#include <stdint.h>
#include <lpc_types.h>
#include <string.h>


/** @addtogroup hardware
 *  @{
 */

const uint32_t ExtRateIn = 0;  /**< Frecuencia de clock externa inyectada al microcontrolador. No utilizado en las CIAA. */
const uint32_t OscRateIn = 12000000; /**< Frecuencia del oscilador externo incorporado en la CIAA-NXP. */


//#define BUFFSize 512 /**< Cantidad máxima de valores a alojar en el buffer de entrada y en el de salida*/
//static unsigned char rxBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de entrada */
//static unsigned char txBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de salida */

//static RINGBUFF_T txRing; /**< Estructura asociado al buffer circular de transmisión. */
//static RINGBUFF_T rxRing; /**< Estructura asociada al buffer circular de recepción.  */


void systemInit(void)
{
	Chip_SetupXtalClocking();
	SystemCoreClockUpdate();
    fpuInit();
	Chip_GPIO_Init(LPC_GPIO_PORT);

	Chip_SCU_PinMux(PORT_PIN_RGB,  PIN_RGB_RED, MD_PUP, FUNC4);
	Chip_SCU_PinMux(PORT_PIN_RGB,  PIN_RGB_GRN, MD_PUP, FUNC4);
	Chip_SCU_PinMux(PORT_PIN_RGB,  PIN_RGB_BLU, MD_PUP, FUNC4);

	Chip_SCU_PinMux(PORT_PIN_LED1, PIN_LED1, MD_PUP, FUNC0);
	Chip_SCU_PinMux(PORT_PIN_LED2, PIN_LED2, MD_PUP, FUNC0);
	Chip_SCU_PinMux(PORT_PIN_LED3, PIN_LED3, MD_PUP, FUNC0);

	Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, GPIO_PORT_LED1, GPIO_PIN_LED1);
	Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, GPIO_PORT_LED2, GPIO_PIN_LED2);
	Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, GPIO_PORT_LED3, GPIO_PIN_LED3);

	Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, GPIO_PORT_RGB, GPIO_PIN_RED);
	Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, GPIO_PORT_RGB, GPIO_PIN_GRN);
	Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, GPIO_PORT_RGB, GPIO_PIN_BLU);

	Chip_GPIO_SetPinState(LPC_GPIO_PORT, GPIO_PORT_LED1, GPIO_PIN_LED1, FALSE);
	Chip_GPIO_SetPinState(LPC_GPIO_PORT, GPIO_PORT_LED1, GPIO_PIN_LED2, FALSE);
	Chip_GPIO_SetPinState(LPC_GPIO_PORT, GPIO_PORT_LED1, GPIO_PIN_LED3, FALSE);
	Chip_GPIO_SetPinState(LPC_GPIO_PORT, GPIO_PORT_RGB, GPIO_PIN_RED, FALSE);
	Chip_GPIO_SetPinState(LPC_GPIO_PORT, GPIO_PORT_RGB, GPIO_PIN_GRN, FALSE);
	Chip_GPIO_SetPinState(LPC_GPIO_PORT, GPIO_PORT_RGB, GPIO_PIN_BLU, FALSE);

	Chip_SCU_PinMux(PORT_PIN_KEY1, PIN_KEY1, MD_EZI|MD_ZI, FUNC0);
	Chip_SCU_PinMux(PORT_PIN_KEY2, PIN_KEY2, MD_EZI|MD_ZI, FUNC0);
	Chip_SCU_PinMux(PORT_PIN_KEY3, PIN_KEY3, MD_EZI|MD_ZI, FUNC0);
	Chip_SCU_PinMux(PORT_PIN_KEY4, PIN_KEY4, MD_EZI|MD_ZI, FUNC0);

	Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, GPIO_PORT_KEY1, GPIO_PIN_KEY1);
	Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, GPIO_PORT_KEY2, GPIO_PIN_KEY2);
	Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, GPIO_PORT_KEY3, GPIO_PIN_KEY3);
	Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, GPIO_PORT_KEY4, GPIO_PIN_KEY4);

	/*Chip_UART_Init(LPC_USART2);
    Chip_UART_ConfigData(LPC_USART2, UART_LCR_WLEN8 | UART_LCR_SBS_1BIT | UART_LCR_PARITY_DIS);
    Chip_UART_SetBaud(LPC_USART2, 115200);
    Chip_UART_SetupFIFOS(LPC_USART2, UART_FCR_FIFO_EN | UART_FCR_TRG_LEV3);
    Chip_SCU_PinMux(7, 1, MD_PDN, FUNC6);
    Chip_SCU_PinMux(7, 2, MD_PLN|MD_EZI|MD_ZI, FUNC6);
      
    RingBuffer_Init(&rxRing, rxBuff, 1, BUFFSize);
    RingBuffer_Init(&txRing, txBuff, 1, BUFFSize);
    Chip_UART_SetupFIFOS(LPC_USART2, (UART_FCR_FIFO_EN | UART_FCR_RX_RS | UART_FCR_TX_RS | UART_FCR_TRG_LEV3));
    Chip_UART_IntEnable(LPC_USART2, (UART_IER_RBRINT | UART_IER_RLSINT));
    NVIC_EnableIRQ(26);
    Chip_UART_TXEnable(LPC_USART2);*/

    StopWatch_Init();
}
/*
void UART2_IRQHandler (void)
{
  Chip_UART_IRQRBHandler(LPC_USART2, &rxRing, &txRing);
}*/

/*
unsigned int serialWrite(const uint8_t *data, unsigned int dataLen)
{
  unsigned int transmited = 0;
  unsigned int toInsert;
  unsigned int freeSpc;
  while(transmited < dataLen)
  {
    freeSpc = RingBuffer_GetFree(&txRing);
    while(!freeSpc) 
      freeSpc = RingBuffer_GetFree(&txRing); 
    toInsert = ((freeSpc > dataLen) ? dataLen : freeSpc);
    Chip_UART_SendRB(LPC_USART2, &txRing, &data[transmited], toInsert);
    transmited += toInsert;
  }
  return transmited;
}

unsigned int serialRead(uint8_t *data, unsigned int maxData)
{
  return Chip_UART_ReadRB(LPC_USART2, &rxRing, data, maxData);
}
*/
void setLedFromMsk(uint8_t msk)
{
  if (msk & led1) ledOn(GPIO_PORT_LED1, GPIO_PIN_LED1);
  else            ledOff(GPIO_PORT_LED1, GPIO_PIN_LED1);

  if (msk & led2) ledOn(GPIO_PORT_LED2, GPIO_PIN_LED2);
  else            ledOff(GPIO_PORT_LED2, GPIO_PIN_LED2);

  if (msk & led3) ledOn(GPIO_PORT_LED3, GPIO_PIN_LED3);
  else            ledOff(GPIO_PORT_LED3, GPIO_PIN_LED3);

  if (msk & led4) ledOn(GPIO_PORT_RGB, GPIO_PIN_RED);
  else            ledOff(GPIO_PORT_RGB, GPIO_PIN_RED);

  if (msk & led5) ledOn(GPIO_PORT_RGB, GPIO_PIN_GRN);
  else            ledOff(GPIO_PORT_RGB, GPIO_PIN_GRN);

  if (msk & led6) ledOn(GPIO_PORT_RGB, GPIO_PIN_BLU);
  else            ledOff(GPIO_PORT_RGB, GPIO_PIN_BLU);
}

void waitKeyPress(boardKeys key)
{
	switch(key)
	{
		case key1:
			while (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY1, GPIO_PIN_KEY1)) ;
			break;

		case key2:
			while (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY2, GPIO_PIN_KEY2)) ;
			break;

		case key3:
			while (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY3, GPIO_PIN_KEY3)) ;
			break;

		case key4:
			while (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY4, GPIO_PIN_KEY4)) ;
			break;
	}
}

uint8_t getKeyPressed(void)
{
  uint8_t ret = 0;
  if (!Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY1, GPIO_PIN_KEY1))
	  ret = ret | key1;
  if (!Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY2, GPIO_PIN_KEY2))
  	  ret = ret | key2;
  if (!Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY3, GPIO_PIN_KEY3))
  	  ret = ret | key3;
  if (!Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, GPIO_PORT_KEY4, GPIO_PIN_KEY4))
  	  ret = ret | key4;
  return ret;
}
/** @}*/
