MEMORY
{
  flash (rx) : ORIGIN = 0x1a000000, LENGTH = 0x80000 /* 512K bytes */
  stack (rwx) : ORIGIN = 0x10000000, LENGTH = 0x8000  /* 32K bytes */
}
 
__top_stack = 0x10000000 + 0x8000;



