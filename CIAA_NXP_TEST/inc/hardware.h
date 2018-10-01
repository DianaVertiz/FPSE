/** @addtogroup hardware
 *  @{
 *  @file hardware.h
 *  @brief Declaraciones de funciones y constantes simbólicas correspondientes con la EDU-CIAA NXP
 *  @date 09/07/2018
 */

#ifndef hardware_h
#define hardware_h

#include "chip.h"
#include <stopwatch.h>
#include <stdint.h>

#define PORT_PIN_LED1  0x02  /**< Puerto del microcontrolador asociado al led1 */
#define PIN_LED1       0x0A  /**< Pin del puerto 2 asociado al led 1  */
#define PORT_PIN_LED2  0x02  /**< Puerto del microcontrolador asociado al led2 */
#define PIN_LED2       0x0B  /**< Pin del puerto 2 asociado al led 2  */
#define PORT_PIN_LED3  0x02  /**< Puerto del microcontrolador asociado al led3 */
#define PIN_LED3       0x0C  /**< Pin del puerto 2 asociado al led 3  */

#define PORT_PIN_RGB   0x02  /**< Puerto del microcontrolador asociado al led RGB. Si bien utiliza 3 pines, están todos en el mismo puerto */
#define PIN_RGB_RED    0x00  /**< Pin del puerto 2 asociado al color rojo del led RGB   */
#define PIN_RGB_GRN    0x01  /**< Pin del puerto 2 asociado al color verde del led RGB   */
#define PIN_RGB_BLU    0x02  /**< Pin del puerto 2 asociado al color azul del led RGB   */

#define GPIO_PORT_LED1 0x00  /**< Puerto del módulo GPIO asociado al led 1 */
#define GPIO_PIN_LED1  0x0E  /**< Identificación del pin asociado al led 1 del módulo GPIO */
#define GPIO_PORT_LED2 0x01  /**< Puerto del módulo GPIO asociado al led 2 */
#define GPIO_PIN_LED2  0x0B  /**< Identificación del pin asociado al led 2 del módulo GPIO */
#define GPIO_PORT_LED3 0x01  /**< Puerto del módulo GPIO asociado al led 3 */
#define GPIO_PIN_LED3  0x0C  /**< Identificación del pin asociado al led 3 del módulo GPIO */

#define GPIO_PORT_RGB  0x05  /**< Puerto del módulo GPIO asociado al led RGB */
#define GPIO_PIN_RED   0x00  /**< Identificación del pin asociado al color rojo del LED RGB del módulo GPIO */
#define GPIO_PIN_GRN   0x01  /**< Identificación del pin asociado al color verde del LED RGB del módulo GPIO */
#define GPIO_PIN_BLU   0x02  /**< Identificación del pin asociado al color azul del LED RGB del módulo GPIO */

#define PORT_PIN_KEY1  0x01  /**< Puerto del microcontrolador asociado al pulsador 1 */
#define PIN_KEY1       0x00  /**< Pin del puerto asociado al pulsador 1  */
#define PORT_PIN_KEY2  0x01  /**< Puerto del microcontrolador asociado al pulsador 2 */
#define PIN_KEY2       0x01  /**< Pin del puerto asociado al pulsador 2  */
#define PORT_PIN_KEY3  0x01  /**< Puerto del microcontrolador asociado al pulsador 3 */
#define PIN_KEY3       0x02  /**< Pin del puerto asociado al pulsador 3  */
#define PORT_PIN_KEY4  0x01  /**< Puerto del microcontrolador asociado al pulsador 4 */
#define PIN_KEY4       0x06  /**< Pin del puerto asociado al pulsador 4  */

#define GPIO_PORT_KEY1 0x00  /**< Puerto del módulo GPIO asociado al pulsador 1 */
#define GPIO_PIN_KEY1  0x04  /**< Identificación del pin asociado al pulsador 1 del módulo GPIO */
#define GPIO_PORT_KEY2 0x00  /**< Puerto del módulo GPIO asociado al pulsador 2 */
#define GPIO_PIN_KEY2  0x08  /**< Identificación del pin asociado al pulsador 2 del módulo GPIO */
#define GPIO_PORT_KEY3 0x00  /**< Puerto del módulo GPIO asociado al pulsador 3 */
#define GPIO_PIN_KEY3  0x09  /**< Identificación del pin asociado al pulsador 3 del módulo GPIO */
#define GPIO_PORT_KEY4 0x01  /**< Puerto del módulo GPIO asociado al pulsador 4 */
#define GPIO_PIN_KEY4  0x09  /**< Identificación del pin asociado al pulsador 4 del módulo GPIO */

/**
 * @brief Enumeración utilizada para identificar los pulsadores presentes en la EDU-CIAA NXP
 */
typedef enum {
	key1=1, /**< Tecla 1 (TEC1) */
	key2=2, /**< Tecla 2 (TEC2) */
	key3=4, /**< Tecla 3 (TEC3) */
	key4=8  /**< Tecla 4 (TEC4) */
} boardKeys;

/**
 * @brief Enumeración asociada a los terminales de los leds RGB
 */

typedef enum {
	Led_Rojo = 1,   /**< Identificación del terminal asociado al color rojo  */
	Led_Verde = 2,  /**< Identificación del terminal asociado al color verde */
	Led_Azul = 4    /**< Identificación del terminal asociado al color azul  */
}rgbLeds;

/**
 * @brief Enumeración utilizada para identificar los leds presentes en la EDU-CIAA NXP
 */
typedef enum {
	led4 = Led_Rojo,  /**< Led rojo (RGB)   */
	led5 = Led_Verde, /**< Led verde (RGB)   */
	led6 = Led_Azul,  /**< Led zul (RGB)  */
	led1 = 8,        /**< Led 1            */
	led2 = 16,       /**< Led 2            */
	led3 = 32,       /**< Led 3            */
} boardLeds;

/**
 * @brief Establece el siguiente valor en la enumeración \ref boardLeds
 * @param[in,out] x Variable de tipo boardLeds que contiene un valor de la enumeración, al terminar
 * la ejecución de la macro contendrá el valor del siguiente elemento.
  * @note Esta macro no realiza ningún tipo de control de rango, por lo que previo a su invocación
 * se deberá asegurar que el valor contenido es menor a lastLed.
 */
#define next_led(x) ((x) = (x) << 1)
/**
 * @brief Establece el valor previo en la enumeración \ref boardLeds
 * @param[in,out] x Variable de tipo boardLeds que contiene un valor de la enumeración, al terminar
 * la ejecución de la macro contendrá el valor previo elemento contenido originalmente.
 * @note Esta macro no realiza ningún tipo de control de rango, por lo que previo a su invocación
 * se deberá asegurar que el valor contenido es mayor a firstLed.
 */
#define prev_led(x) ((x) = (x) >> 1)

/**
 * @brief Las definiciones fistLed, middleLed y lastLed permiten encender los leds en
 * secuencia desde el rgb Azul al led 3 (de middleLed a lastLed) o la secuencia
 * rojo, verde, azul al led 3 (utilizando de firstLed a lastLed).
 * Estas definiciones permiten realizar operaciones como:
 * @code
 * boardLeds ledCnt;
 *
 * for (ledCnt = middle_led; ledCnt <= last_led; next_led(ledCnt))
 * {
 *   setLedFromMsk(ledCnt);
 *   delayMs(250);
 * }
 * @endcode
 *
 * O, utilizando todos los colores del led RGB:
 *
 * @code
 * boardLeds ledCnt;
 *
 * for (ledCnt = first_led; ledCnt <= last_led; next_led(ledCnt))
 * {
 *   setLedFromMsk(ledCnt);
 *   delayMs(250);
 * }
 * @endcode
 */
#define first_led Led_Rojo  /**< Identificación del primer led */
#define middle_led Led_Azul /**< Identificación del led intermedio. Véase \ref first_led */
#define last_led  led3     /**< Identificación del último led. Véase \ref first_led */

/** @brief Inicializa los módulos básicos de la EDU-CIAA NXP.
 *
 * Los módulos configurados por esta función son:
 * - Oscilador principal: Establece la configuración para utilizar el cristal externo incorporado
 * en la placa.
 * - USART: configura la USART2 utilizando interrupciones (115200/8/N/1). La configuración utilizada
 * es transparente al usuario, la que el resultado del uso de interrupciones permite el envío y
 * la recepción de caracteres sin bloqueo. La gestión de la información debe realizarce utilizando
 * Chip_UART_SendRB y Chip_UART_ReadRB o serialWrite y serialRead.
 * - GPIO Leds: configura los pines asociados a los leds como salidas, estableciendo como valor inicial "apagado"
 * - GPIO teclas: configura los pines asociadas a las teclas como entradas.
 *
*/
void systemInit(void);

/** @brief Carga una cadena de caracteres para ser enviada a través de la USART.
 * Debe considerarse que la transmisión se realiza sin bloqueo y a través de interrupciones. Para
 * eso, esta función invoca a Chip_UART_SendRB, la cuál copia la cadena en un buffer circular e
 * inicia la transmición del primer caracter. Una vez disparada la interrupción que indica la finalización
 * del envío, continúa con el siguiente caracter hasta que se completa la transmición de la cadena.
 * @param[in] data Cadena de caracteres a transmitir.
 * @param[in] dataLen Longitud de la cadena de caracteres a transmitir. Este parámetro puede
 * ser directamente obtenido a través de la función strlen si se trabaja con cadenas de caracteres
 * terminadas en null.
 * @return La cantidad de caractereres copiados para ser transmitidos.
 * @note Podría darse que la longitud de la cadena de caracteres que se desea alojar se de mayor
 * longitud que el espacio disponible en el buffer circular. Si este fuese el caso, esta función
 * esperará (modo bloqueante) a que sea posible alojar todas la cadena dada antes de retornar.
 */
unsigned int serialWrite(const uint8_t *data, unsigned int dataLen);

/**
 * @brief Obtiene los caracteres disponibles en el buffer circular asociado al flujo de entrada
 * de caracteres ("lee el puerto").
 * @param[out] data Cadena de caracteres donde se alojaran tantos como \b maxData elementos.
 * @param[in] maxData Cantidad de caracteres máxima a copiar del buffer circular asociado a los
 * datos de entrada.
 * @return Cantidad de caracteres retornados.
 * @note Esta función solo invoca a Chip_UART_ReadRB. Si no hay datos disponibles en el buffer
 * circular asociado a la entrada, esta función retornará cero (0).
 */
//unsigned int serialRead(uint8_t *data, unsigned int maxData);

/**
 * \brief Función implementada para procesar las interrupciones del puerto de comunicaciones serie.
 * Esta función invoca a Chip_UART_IRQRBHandler de modo de gestionar la asignación de los caracteres
 * recibidos en la cola circular asociada a la entrada y continuar la transmisión de los datos
 * asociados a la cola circular de salida.
 */
void UART2_IRQHandler (void);

/**
 * @brief Enciende un led
 * @param[in] gpioPort Identificación del puerto vinculado al led de interés a través del módulo gpio.
 * Pueden utilizarce como valor de este argumento las constantes simbólicas:
 * - GPIO_PORT_LED1
 * - GPIO_PORT_LED2
 * - GPIO_PORT_LED3
 * - GPIO_PORT_RGB
 * @param[in] gpioPin Identificación del pin asociado al led que se desea accionar a través del módulo GPIO.
 * Pueden utilizarce como valor de este argumento las constantes simbólicas:
 * - GPIO_PIN_LED1
 * - GPIO_PIN_LED2
 * - GPIO_PIN_LED3
 * - GPIO_PIN_RED
 * - GPIO_PIN_GRN
 * - GPIO_PIN_BLU
 * @note Esta es una macro para invocar de modo indirecto a la función \a Chip_GPIO_SetPinState
 */
#define ledOn(gpioPort, gpioPin) \
  Chip_GPIO_SetPinState(LPC_GPIO_PORT, gpioPort, gpioPin, TRUE)

/**
 * @brief Apaga un led
 * @param[in] gpioPort Identificación del puerto vinculado al led de interés a través del módulo gpio.
 * Pueden utilizarce como valor de este argumento las constantes simbólicas:
 * - GPIO_PORT_LED1
 * - GPIO_PORT_LED2
 * - GPIO_PORT_LED3
 * - GPIO_PORT_RGB
 * @param[in] gpioPin Identificación del pin asociado al led que se desea accionar a través del módulo GPIO.
 * Pueden utilizarce como valor de este argumento las constantes simbólicas:
 * - GPIO_PIN_LED1
 * - GPIO_PIN_LED2
 * - GPIO_PIN_LED3
 * - GPIO_PIN_RED
 * - GPIO_PIN_GRN
 * - GPIO_PIN_BLU
 * @note Esta es una macro para invocar de modo indirecto a la función \a Chip_GPIO_SetPinState
 */
#define ledOff(gpioPort, gpioPin) \
		Chip_GPIO_SetPinState(LPC_GPIO_PORT, gpioPort, gpioPin, FALSE)

/**
 * @brief Modifica el estado de un led particular (lo apaga si está encendido o lo enciende si está apagado).
 * @param[in] gpioPort Identificación del puerto vinculado al led de interés a través del módulo gpio.
 * Pueden utilizarce como valor de este argumento las constantes simbólicas:
 * - GPIO_PORT_LED1
 * - GPIO_PORT_LED2
 * - GPIO_PORT_LED3
 * - GPIO_PORT_RGB
 * @param[in] gpioPin Identificación del pin asociado al led que se desea accionar a través del módulo GPIO.
 * Pueden utilizarce como valor de este argumento las constantes simbólicas:
 * - GPIO_PIN_LED1
 * - GPIO_PIN_LED2
 * - GPIO_PIN_LED3
 * - GPIO_PIN_RED
 * - GPIO_PIN_GRN
 * - GPIO_PIN_BLU
 * @note Esta es una macro para invocar de modo indirecto a la función \a Chip_GPIO_SetPinState
 */
#define ledToggle(gpioPort, gpioPin) \
		Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, gpioPort, gpioPin)

/**
 * @brief Enciend o apaga un led según la máscara dada como argumento.
 *
 * @param[in] msk Máscara de bits donde el primer bit está asociado al led uno, el segundo
 * al led dos, el tercero al led tres, el cuarto al color rojo del RGB, quinto al color verde
 * y sexto al color azul. Esta máscara puede conformarce utilizando la enumeración \ref boardLeds
 */
void setLedFromMsk(uint8_t msk);

/**
 * @brief Genera un delay de x milisegundos utilizando las primitivas del módulo "stopwatch" de lpcOpen.
 * @param[in] x Cantidad de milisegundos de espera.
 */
#define delayMs(x) \
		StopWatch_DelayMs(x)

/**
 * @brief Genera un delay de x microsegundos utilizando las primitivas del módulo "stopwatch" de lpcOpen.
 * @param[in] x Cantidad de microsegundos de espera.
 */
#define delayUs(x) \
		StopWatch_DelayUs(x)

/**
 * @brief Espera a que se presione la tecla indicada a partir del argumento utilizado.
 * @param[in] key Tecla que se espera sea pulsada. El argumento puede ser uno de los
 * miembros de la enumeración boardKeys (key1, key2, key3, key4).
 */
void waitKeyPress(boardKeys key);

/**
 * @brief Retorna una máscara con el estado de las teclas. Si una tecla está presionada,
 * retorna un bit en alto y si está suelta un bit en bajo.
 * @return El estado de la primer tecla en el bit menos significativo, el de la segunda tecla
 * en el bit siguiente y así sucesivamente. Véase \ref boardKeys
 */
uint8_t getKeyPressed(void);

#endif

/** @}*/

