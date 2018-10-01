/*
 * operaciones.c
 *
 *  Created on: 15 sep. 2018
 *      Author: esteban
 */
#include "stack.h"
const uint32_t MAX_STACK_SIZE = 32000;

void     pilaInit(pilaData *p,void *buffer ,uint8_t  bufLen ,uint8_t  dataSize)
{
	p->pos = NULL;
}

/**
 * Adds the element *data to the stack pilaData
 */
void     pilaPush (pilaData *p, void *data)
{

}

/**
 * Retrieves the last element of pilaData and stores it on data
 */
void     pilaPop   (pilaData *p, void *data)
{

}
/**
 * Returns the emptyness of the stack.
 * \return 0 if not empty
 * \return 1 if empty
 */
uint8_t  pilaEmpty(pilaData *p)
{

}
/**
 * Returns the fullstate of the stack.
 * \returns 0 if not full.
 * \returns 1 if full.
 */
uint8_t  pilaFull (pilaData *p);
