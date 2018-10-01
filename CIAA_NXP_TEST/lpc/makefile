libOutDir=$(BASEPATH)/$(BUILDIR)/$(moduleName)
SRCLST:=$(wildcard src/*.c)
SRCOBJ:=$(subst src/,$(libOutDir)/,$(subst .c,.o,$(SRCLST)))

dummy:=$(shell mkdir -p $(libOutDir))

.PHONY: \
startMsg \
all \
clean 

all: $(BASEPATH)/$(OUTDIR)/$(moduleName).a

$(BASEPATH)/$(OUTDIR)/$(moduleName).a: startMsg $(SRCOBJ)
	$(AR) rcs $(BASEPATH)/$(OUTDIR)/$(moduleName).a $(SRCOBJ)
	$(RANLIB) $(BASEPATH)/$(OUTDIR)/$(moduleName).a
	@echo terminado

startMsg:
	@echo -n Compilando librería $(moduleName)...

$(libOutDir)/%.o: src/%.c
	@$(GCC) -c -w $(CFLAGS) -Iinc $< -o $@

clean:
	@rm -rf $(libOutDir)
	@rm -rf $(BASEPATH)/$(OUTDIR)/$(moduleName).a
