/*
 * operaciones.h
 *
 *  Created on: 15 sep. 2018
 *      Author: esteban
 */

#ifndef STACK_H_INCLUDED
#define STACK_H_INCLUDED


#include "chip.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stopwatch.h>
#include "hardware_nxp.h"

/**
* Estructura  definida  para  representar  cada  pila  particular. Nótese  que el
* vector  de  almacenamiento  se  establece a través de la  función pilaInit
* y debe  ser  definido , de  forma  externa a la  estructura y de tipo  congruente
* con  los  valores a alojar  en la pila.
*/
typedef  struct
{
uint8_t  pos; 		/*  Posición donde  cargar  el  proximo  valor  */
uint8_t  dataSize; 	/* Tamaño de cada  dato en el  arreglo   buf */
uint8_t  dataCount;	/* Tamaño del  buffer                           */
uint8_t *buf;   	/*  Buffer  de  almacenamiento                  */
} pilaData;

const uint32_t MAX_STACK_SIZE;
/**
 * @brief Stack initilization
 * @param pilaData *p: reppresentation of a stack
 * \param void *buffer: vector of stack
 * \param uint8_t  bufLen: size of the stack
 * \param uint8_t  dataSize: each items on the stack size
 */
void     pilaInit(pilaData *p,void *buffer ,uint8_t  bufLen ,uint8_t  dataSize);

/**
 * Adds the element *data to the stack pilaData
 */
void     pilaPush (pilaData *p, void *data);

/**
 * Retrieves the last element of pilaData and stores it on data
 */
void     pilaPop   (pilaData *p, void *data);

/**
 * Returns the emptyness of the stack.
 * \return 0 if not empty
 * \return 1 if empty
 */
uint8_t  pilaEmpty(pilaData *p);

/**
 * Returns the fullstate of the stack.
 * \returns 0 if not full.
 * \returns 1 if full.
 */
uint8_t  pilaFull (pilaData *p);
#endif /* INC_OPERACIONES_H_ */
