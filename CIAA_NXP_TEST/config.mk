# Path donde se encuentra instalado el compilador 
# gcc para arm (arm-none-eabi)
export GCCPATH=/home/esteban/Documentos/Cursos_ESE/FPSE/bin/gcc-arm-none-eabi-7-2018-q2-update

# Prefijo del compilador.
export GCCPREFIX=arm-none-eabi

# Carpeta donde se alojarán los archivos objetos resultantes
# del proceso de compilación.
export BUILDIR=build

# Carpeta donde se alojarán los binarios de la aplicación
export OUTDIR=out

export INCBASEDIR=$(GCCPATH)/$(GCCPREFIX)/include

export OPENOCD_BIN=/usr/bin/openocd
export OPENOCD_CFG=/home/esteban/Documentos/Cursos_ESE/FPSE/TP5/TP5_ej1/openocd/lpc4337/ciaa-nxp.cfg


export BUILDTYPE=debug

export LD:=$(GCCPATH)/bin/$(GCCPREFIX)-ld
export AS:=$(GCCPATH)/bin/$(GCCPREFIX)-as
export GCC:=$(GCCPATH)/bin/$(GCCPREFIX)-gcc
export AR:=$(GCCPATH)/bin/$(GCCPREFIX)-ar
export DUMP:=$(GCCPATH)/bin/$(GCCPREFIX)-objdump
export COPY:=$(GCCPATH)/bin/$(GCCPREFIX)-objcopy
export READELF:=$(GCCPATH)/bin/$(GCCPREFIX)-readelf
export SIZE:=$(GCCPATH)/bin/$(GCCPREFIX)-size
export RANLIB:=$(GCCPATH)/bin/$(GCCPREFIX)-ranlib

export BASEPATH:=$(CURDIR)

ifeq ($(wildcard $(GCC)),)
  # Si ha visto este mensaje deberá asegurarse que tenga instalado
  # el compilador gcc-arm-none-eabi y verificar la ruta de instalación.
  # en función de esto modifique las líneas que indican el path al 
  # directorio de instalación (línea 3 de este archivo).
  $(error "No se ha encontrado gcc en : $(GCC).")
endif

ifeq ($(wildcard $(OPENOCD_BIN)),)
  # Si ha visto este mensaje es debido a que no se ha encontrado 
  # openocd instalado en su equipo. Verifique que esta herramienta
  # se encuentre instalada y su path. En función de esto modifique
  # la definición de la línea 17 de este archivo.
  $(warning "No se ha encontrado OpenOCD en : $(OPENOCD_BIN)")
endif

ifeq ($(BUILDTYPE),debug)
  export OPT=-O0 -ggdb3 
else
  export OPT=-O2
endif

export CFLAGS=-Wall $(OPT) -fdata-sections -ffunction-sections -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp \
 -DCORE_M4 -Dchip_lpc43xx -DNO_BOARD_LIB -D__USE_LPCOPEN -D__LPC43XX__ -D__CODE_RED -D_GNU_SOURCE -I$(BASEPATH)/inc \
-I$(INCBASEDIR) -I$(BASEPATH)/cortex-m4/inc -I$(BASEPATH)/lpc/config_43xx -I$(BASEPATH)/lpc/inc 

export LDFLAGS=-static -fno-builtin -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Wl,-gc-sections -Xlinker   \
 -Tld/libs.ld -Tld/mem.ld -Tld/areas.ld -L$(OUTDIR)/lib
