-include config.mk

appExt=c
appSrc=$(BASEPATH)/src
appInc=$(BASEPATH)/inc

appBldDir=$(BASEPATH)/$(BUILDIR)/app
srcLst=$(wildcard $(appSrc)/*.$(appExt))
objLst:=$(foreach obj, $(subst .c,.o,$(notdir $(srcLst))), $(appBldDir)/$(obj))

dummy:=$(shell mkdir -p $(BASEPATH)/$(BUILDIR))
dummy:=$(shell mkdir -p $(BASEPATH)/$(OUTDIR))
dummy:=$(shell mkdir -p $(appBldDir))

.PHONY: \
all \
clean \
doc \
program \
erase 

all: $(OUTDIR)/firmware.elf

$(OUTDIR)/firmware.elf: $(OUTDIR)/liblpcopen.a $(objLst)
	@$(GCC) $(LDFLAGS) $(objLst) -L$(OUTDIR) -llpcopen -lc -lm -o $(OUTDIR)/firmware.elf
	@$(COPY) -O binary $(OUTDIR)/firmware.elf $(OUTDIR)/firmware.bin
	@$(READELF) -a $(OUTDIR)/firmware.elf > $(OUTDIR)/firmware.txt
	@$(DUMP) -d $(OUTDIR)/firmware.elf > $(OUTDIR)/firmware.asm
	@$(SIZE) -d $(OUTDIR)/firmware.elf

$(appBldDir)/%.o: src/%.c
	@echo -n "  -" $(notdir $<)...
	@$(GCC) -c -w $(CFLAGS) -Iinc $< -o $@
	@echo ok

$(OUTDIR)/liblpcopen.a:
	@make -s -C lpc moduleName=liblpcopen

clean:
	@make -s -C lpc moduleName=liblpcopen clean
	@rm -Rf $(OUTDIR)
	@rm -Rf $(BUILDIR)
	@rm -Rf doc/html
	@rm -Rf doc/latex
	@rm -Rf doc/man
	@rm -Rf doc/rtf

doc:
	@cd doc && doxygen doxygen.cfg
	
program: out/firmware.bin
	@echo $(OPENOCD_BIN)
	$(OPENOCD_BIN) -f $(OPENOCD_CFG) -c "init" -c "halt 0" -c "flash write_image erase unlock out/firmware.bin 0x1A000000 bin" -c "reset run" -c "shutdown"

erase:
	$(OPENOCD_BIN) -f $(OPENOCD_CFG) -c "init" -c "halt 0" -c "flash erase_sector 0 0 last" -c "shutdown"
