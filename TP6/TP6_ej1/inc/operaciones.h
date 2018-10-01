/*
 * operaciones.h
 *
 *  Created on: 15 sep. 2018
 *      Author: root
 */

#ifndef OPERACIONES_H_INCLUDED
#define OPERACIONES_H_INCLUDED


#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stopwatch.h>
#include "hardware_nxp.h"

#define TEC1_IRQ 1
#define TEC2_IRQ 2
#define TEC3_IRQ 3
#define TEC4_IRQ 4

#define BUFFSize 512 /**< Cantidad máxima de valores a alojar en el buffer de entrada y en el de salida*/

#define primer_led	4
#define segundo_led 8
#define tercer_led 16
#define ultimo_led 32

#define max_iter 11


typedef enum {
	Key1=4, /**< Tecla 1 (TEC1) */
	Key2=8, /**< Tecla 2 (TEC2) */
	Key3=16, /**< Tecla 3 (TEC3) */
	Key4=32  /**< Tecla 4 (TEC4) */
} BoardKeys;

typedef struct
{
	uint8_t hwPort ;
	uint8_t hwPin ;
	uint8_t gpioPort ;
	uint8_t gpioPin ;
	uint16_t modo ;
	uint16_t func ;
	uint8_t pinsel;
	uint8_t nvic_mask;
} digitalIO ;

typedef struct
{
	digitalIO leds[max_iter];
	uint16_t periodo;
}secuencia_t;

typedef struct
{
	uint16_t intervalo;
	uint8_t led_activo;
	uint8_t sentido;
} estado_anticipacion;

extern const digitalIO leds[];

extern const digitalIO keys[];

secuencia_t secuencia , secuencia_ingresada;

unsigned char rxBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de entrada */
unsigned char txBuff[BUFFSize]; /**< Vector para contener los datos asociados el buffer de salida */



RINGBUFF_T txRing; /**< Estructura asociado al buffer circular de transmisión. */
RINGBUFF_T rxRing; /**< Estructura asociada al buffer circular de recepción.  */
uint8_t pos_secuencia;
uint8_t pos_ingreso;


void inicializar_sistema(void);

void inicializar_leds(void);

void inicializar_teclado(void);

void inicializar_USART(void);

void init_interrupciones(void);

void displayCounter(uint8_t);

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

void terminal_eco();

void configurar_SysTick(void);

void disable_SysTick(void);

uint8_t evaluar_teclas(estado_anticipacion, BoardKeys);

void generar_secuencia();

/**
 * Cuando se genero una secuencia de botones con el mismo numero de elementos que la mostrada, evalua que hayan sido los mismos
 */
void evaluar_secuencia(void);

/**
 * Recorre el vector de secuencias hasta la posicion en juego y larga la cuenta regresiva para el ingreso de la secuencia.
 */
void mostrar_secuencia();


/**
 * Hace titilar un led en particular, una cierta cantidad de veces, durante un periodo determinado.
 * Usa retardo bloqueante.
 */
void titilar(digitalIO led,uint16_t periodo, uint8_t cant);

#endif /* INC_OPERACIONES_H_ */
