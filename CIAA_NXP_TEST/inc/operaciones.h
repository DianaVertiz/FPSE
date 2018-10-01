/*
 * operaciones.h
 *
 *  Created on: 15 sep. 2018
 *      Author: root
 */

#ifndef INC_OPERACIONES_H_
#define INC_OPERACIONES_H_


#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hardware_nxp.h"

#define TEC1_IRQ 1
#define TEC2_IRQ 2
#define TEC3_IRQ 3
#define TEC4_IRQ 4
#define BUFFSize 512 /**< Cantidad máxima de valores a alojar en el buffer de entrada y en el de salida*/

char str[100];
static char valor [10];

unsigned char rxBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de entrada */
unsigned char txBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de salida */

RINGBUFF_T txRing; /**< Estructura asociado al buffer circular de transmisión. */
RINGBUFF_T rxRing; /**< Estructura asociada al buffer circular de recepción.  */

typedef struct
{
uint8_t hwPort ;
uint8_t hwPin ;
uint8_t gpioPort ;
uint8_t gpioPin ;
uint16_t modo ;
} digitalIO ;

const digitalIO leds[];


void inicializar_sistema(void);
void inicializar_leds(void);
void inicializar_teclado(void);
void inicializar_USART(void);
void init_interrupciones(void);
void displayCounter(uint8_t);

//char* my_itoa(uint8_t, char*, uint8_t);

/**
 * Representa en los leds los 4 bits menos significativos del argumento v.
 * Utiliza operadores
 * a nivel de bit
 * @arguments v: valor a enmascarar.
 */
void displayCounter(uint8_t v);

/**
 * Enviar un carácter a través de la USART2.
 *
 */
void putChr(char* ch);


/**
 * Enviar una cadena de caracteres a través de la USART2. Considere utilizar la función
strlen del header string.h.
 */
void print(void*);

/**
 * Envia enteros a traves de USART
 */
void USARTSendInt(uint8_t);

uint8_t serialRead(uint8_t*, uint8_t);

void terminal_eco(uint8_t);

void configurar_SysTick(void);

void disable_SysTick(void);

char* itoa(int, char*, int );


#endif /* INC_OPERACIONES_H_ */
