/*
 * GENERATED FILE - DO NOT EDIT
 * (c) Code Red Technologies Ltd, 2008-${year}
 * (c) NXP Semiconductors 2013-${year}
 * Generated linker script file for 2014
 * Created from LPC4337 (Sun May 11 09:57:34 ART 2014)
 * By generic_c.ld on LPCXpresso v7.1.1 [Build 125] [2014-04-01] 
 */


ENTRY(ResetISR)

SECTIONS
{
    .text : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(stext = .);
        __vectors_start__ = ABSOLUTE(.) ;
        KEEP(*(.isr_vector))
        /* Global Section Table */
        . = ALIGN(4) ;
        __section_table_start_ = .;
        __data_section_table_ = .;
        LONG(LOADADDR(.data));
        LONG(    ADDR(.data));
        LONG(  SIZEOF(.data));
        __data_section_table_end_ = .;
        __bss_section_table_ = .;
        LONG(    ADDR(.bss));
        LONG(  SIZEOF(.bss));
        __bss_section_table_end_ = .;
        __section_table_end = . ;
        

        *(.after_vectors*)
        
        /* Code Read Protect data */
        . = 0x000002FC ;
        PROVIDE(__CRP_WORD_START__ = .) ;
        KEEP(*(.crp))
        PROVIDE(__CRP_WORD_END__ = .) ;
        ASSERT(!(__CRP_WORD_START__ == __CRP_WORD_END__), "Linker CRP Enabled, but no CRP_WORD provided within application");
        /* End of Code Read Protect */
        
    } >flash
    
    .text : ALIGN(4)    
    {
         *(.text*)
        *(.rodata .rodata.* .constdata .constdata.*) 
        . = ALIGN(4);
        PROVIDE(etext = .);
	PROVIDE(startFlashFs = .);
        *(.flashFs*)
	PROVIDE(endFlashFs = .);
    } > flash

    /*
     * for exception handling/unwind - some Newlib functions (in common
     * with C++ and STDC++) use this. 
     */
    .ARM.extab : ALIGN(4)
    {
    	*(.ARM.extab* .gnu.linkonce.armextab.*)
    } > flash
    __exidx_start = .;
    
    .ARM.exidx : ALIGN(4)
    {
    	*(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } > flash
    __exidx_end = .;
    
    _etext = .;
        
      
    /* MAIN DATA SECTION */    

    .uninit_RESERVED : ALIGN(4)
    {
        KEEP(*(.bss.$RESERVED*))
         . = ALIGN(4) ; 
        _end_uninit_RESERVED = .;
    } > stack

	
    /* Main DATA section (RamLoc32) */
    .data : ALIGN(4)
    {
      FILL(0xff)
      _data = . ;
      *(vtable)
      *(.ramfunc*)
      *(.data*)
        . = ALIGN(4) ;
        _edata = . ;
    } > stack AT>flash


    /* MAIN BSS SECTION */
    .bss : ALIGN(4)
    {
        _bss = .;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4) ;
        _ebss = .;
        PROVIDE(end = .);
    } > stack
        
    /* RamLoc32: utilizado como stack */
    .noinit (NOLOAD): ALIGN(4)
    {
        _noinit = .;
        *(.noinit*) 
        _end_noinit = .;
	_vStackBottom = .;	
    } > stack
    
    _vStackTop = __top_stack;
    PROVIDE(_sStack = _vStackTop);
    PROVIDE(_eStack = _vStackBottom); 
}
