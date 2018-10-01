
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 bd 04 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	c1 07 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a c5 08 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a b5 06 00 1a ed 06 00 1a     ................
1a0000cc:	db 01 00 1a 91 07 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a0028d8 	.word	0x1a0028d8
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000004 	.word	0x00000004

1a000120 <__bss_section_table_>:
1a000120:	10000004 	.word	0x10000004
1a000124:	000004b0 	.word	0x000004b0

1a000128 <data_init>:
1a000128:	b480      	push	{r7}
1a00012a:	b089      	sub	sp, #36	; 0x24
1a00012c:	af00      	add	r7, sp, #0
1a00012e:	60f8      	str	r0, [r7, #12]
1a000130:	60b9      	str	r1, [r7, #8]
1a000132:	607a      	str	r2, [r7, #4]
1a000134:	68bb      	ldr	r3, [r7, #8]
1a000136:	61fb      	str	r3, [r7, #28]
1a000138:	68fb      	ldr	r3, [r7, #12]
1a00013a:	61bb      	str	r3, [r7, #24]
1a00013c:	2300      	movs	r3, #0
1a00013e:	617b      	str	r3, [r7, #20]
1a000140:	e00a      	b.n	1a000158 <data_init+0x30>
1a000142:	69ba      	ldr	r2, [r7, #24]
1a000144:	1d13      	adds	r3, r2, #4
1a000146:	61bb      	str	r3, [r7, #24]
1a000148:	69fb      	ldr	r3, [r7, #28]
1a00014a:	1d19      	adds	r1, r3, #4
1a00014c:	61f9      	str	r1, [r7, #28]
1a00014e:	6812      	ldr	r2, [r2, #0]
1a000150:	601a      	str	r2, [r3, #0]
1a000152:	697b      	ldr	r3, [r7, #20]
1a000154:	3304      	adds	r3, #4
1a000156:	617b      	str	r3, [r7, #20]
1a000158:	697a      	ldr	r2, [r7, #20]
1a00015a:	687b      	ldr	r3, [r7, #4]
1a00015c:	429a      	cmp	r2, r3
1a00015e:	d3f0      	bcc.n	1a000142 <data_init+0x1a>
1a000160:	bf00      	nop
1a000162:	3724      	adds	r7, #36	; 0x24
1a000164:	46bd      	mov	sp, r7
1a000166:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00016a:	4770      	bx	lr

1a00016c <bss_init>:
1a00016c:	b480      	push	{r7}
1a00016e:	b085      	sub	sp, #20
1a000170:	af00      	add	r7, sp, #0
1a000172:	6078      	str	r0, [r7, #4]
1a000174:	6039      	str	r1, [r7, #0]
1a000176:	687b      	ldr	r3, [r7, #4]
1a000178:	60fb      	str	r3, [r7, #12]
1a00017a:	2300      	movs	r3, #0
1a00017c:	60bb      	str	r3, [r7, #8]
1a00017e:	e007      	b.n	1a000190 <bss_init+0x24>
1a000180:	68fb      	ldr	r3, [r7, #12]
1a000182:	1d1a      	adds	r2, r3, #4
1a000184:	60fa      	str	r2, [r7, #12]
1a000186:	2200      	movs	r2, #0
1a000188:	601a      	str	r2, [r3, #0]
1a00018a:	68bb      	ldr	r3, [r7, #8]
1a00018c:	3304      	adds	r3, #4
1a00018e:	60bb      	str	r3, [r7, #8]
1a000190:	68ba      	ldr	r2, [r7, #8]
1a000192:	683b      	ldr	r3, [r7, #0]
1a000194:	429a      	cmp	r2, r3
1a000196:	d3f3      	bcc.n	1a000180 <bss_init+0x14>
1a000198:	bf00      	nop
1a00019a:	3714      	adds	r7, #20
1a00019c:	46bd      	mov	sp, r7
1a00019e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001a2:	4770      	bx	lr

1a0001a4 <NMI_Handler>:
1a0001a4:	b480      	push	{r7}
1a0001a6:	af00      	add	r7, sp, #0
1a0001a8:	e7fe      	b.n	1a0001a8 <NMI_Handler+0x4>

1a0001aa <HardFault_Handler>:
1a0001aa:	b480      	push	{r7}
1a0001ac:	af00      	add	r7, sp, #0
1a0001ae:	e7fe      	b.n	1a0001ae <HardFault_Handler+0x4>

1a0001b0 <MemManage_Handler>:
1a0001b0:	b480      	push	{r7}
1a0001b2:	af00      	add	r7, sp, #0
1a0001b4:	e7fe      	b.n	1a0001b4 <MemManage_Handler+0x4>

1a0001b6 <BusFault_Handler>:
1a0001b6:	b480      	push	{r7}
1a0001b8:	af00      	add	r7, sp, #0
1a0001ba:	e7fe      	b.n	1a0001ba <BusFault_Handler+0x4>

1a0001bc <UsageFault_Handler>:
1a0001bc:	b480      	push	{r7}
1a0001be:	af00      	add	r7, sp, #0
1a0001c0:	e7fe      	b.n	1a0001c0 <UsageFault_Handler+0x4>

1a0001c2 <SVC_Handler>:
1a0001c2:	b480      	push	{r7}
1a0001c4:	af00      	add	r7, sp, #0
1a0001c6:	e7fe      	b.n	1a0001c6 <SVC_Handler+0x4>

1a0001c8 <DebugMon_Handler>:
1a0001c8:	b480      	push	{r7}
1a0001ca:	af00      	add	r7, sp, #0
1a0001cc:	e7fe      	b.n	1a0001cc <DebugMon_Handler+0x4>

1a0001ce <PendSV_Handler>:
1a0001ce:	b480      	push	{r7}
1a0001d0:	af00      	add	r7, sp, #0
1a0001d2:	e7fe      	b.n	1a0001d2 <PendSV_Handler+0x4>
1a0001d4:	b480      	push	{r7}
1a0001d6:	af00      	add	r7, sp, #0
1a0001d8:	e7fe      	b.n	1a0001d8 <PendSV_Handler+0xa>

1a0001da <ADC0_IRQHandler>:
1a0001da:	b480      	push	{r7}
1a0001dc:	af00      	add	r7, sp, #0
1a0001de:	e7fe      	b.n	1a0001de <ADC0_IRQHandler+0x4>
1a0001e0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001e4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001e8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001ec:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001f0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001f4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001f8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001fc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000200:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000204:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000208:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00020c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000210:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000214:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000218:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00021c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000220:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000224:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000228:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00022c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000230:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000234:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000238:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00023c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000240:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000244:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000248:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00024c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000250:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000254:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000258:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00025c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000260:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000264:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000268:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00026c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000270:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000274:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000278:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00027c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000280:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000284:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000288:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00028c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000290:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000294:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000298:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00029c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002a0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002a4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002a8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002ac:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002b0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002b4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002b8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002bc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002c0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002c4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002c8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002cc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002d0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002d4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002d8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002dc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002e0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002e4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002e8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002ec:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002f0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002f4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002f8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0002fc <CRP_WORD>:
1a0002fc:	ffff ffff                                   ....

1a000300 <memset>:
1a000300:	b4f0      	push	{r4, r5, r6, r7}
1a000302:	0786      	lsls	r6, r0, #30
1a000304:	d043      	beq.n	1a00038e <memset+0x8e>
1a000306:	1e54      	subs	r4, r2, #1
1a000308:	2a00      	cmp	r2, #0
1a00030a:	d03e      	beq.n	1a00038a <memset+0x8a>
1a00030c:	b2ca      	uxtb	r2, r1
1a00030e:	4603      	mov	r3, r0
1a000310:	e002      	b.n	1a000318 <memset+0x18>
1a000312:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
1a000316:	d338      	bcc.n	1a00038a <memset+0x8a>
1a000318:	f803 2b01 	strb.w	r2, [r3], #1
1a00031c:	079d      	lsls	r5, r3, #30
1a00031e:	d1f8      	bne.n	1a000312 <memset+0x12>
1a000320:	2c03      	cmp	r4, #3
1a000322:	d92b      	bls.n	1a00037c <memset+0x7c>
1a000324:	b2cd      	uxtb	r5, r1
1a000326:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
1a00032a:	2c0f      	cmp	r4, #15
1a00032c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
1a000330:	d916      	bls.n	1a000360 <memset+0x60>
1a000332:	f1a4 0710 	sub.w	r7, r4, #16
1a000336:	093f      	lsrs	r7, r7, #4
1a000338:	f103 0620 	add.w	r6, r3, #32
1a00033c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
1a000340:	f103 0210 	add.w	r2, r3, #16
1a000344:	e942 5504 	strd	r5, r5, [r2, #-16]
1a000348:	e942 5502 	strd	r5, r5, [r2, #-8]
1a00034c:	3210      	adds	r2, #16
1a00034e:	42b2      	cmp	r2, r6
1a000350:	d1f8      	bne.n	1a000344 <memset+0x44>
1a000352:	f004 040f 	and.w	r4, r4, #15
1a000356:	3701      	adds	r7, #1
1a000358:	2c03      	cmp	r4, #3
1a00035a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
1a00035e:	d90d      	bls.n	1a00037c <memset+0x7c>
1a000360:	461e      	mov	r6, r3
1a000362:	4622      	mov	r2, r4
1a000364:	3a04      	subs	r2, #4
1a000366:	2a03      	cmp	r2, #3
1a000368:	f846 5b04 	str.w	r5, [r6], #4
1a00036c:	d8fa      	bhi.n	1a000364 <memset+0x64>
1a00036e:	1f22      	subs	r2, r4, #4
1a000370:	f022 0203 	bic.w	r2, r2, #3
1a000374:	3204      	adds	r2, #4
1a000376:	4413      	add	r3, r2
1a000378:	f004 0403 	and.w	r4, r4, #3
1a00037c:	b12c      	cbz	r4, 1a00038a <memset+0x8a>
1a00037e:	b2c9      	uxtb	r1, r1
1a000380:	441c      	add	r4, r3
1a000382:	f803 1b01 	strb.w	r1, [r3], #1
1a000386:	429c      	cmp	r4, r3
1a000388:	d1fb      	bne.n	1a000382 <memset+0x82>
1a00038a:	bcf0      	pop	{r4, r5, r6, r7}
1a00038c:	4770      	bx	lr
1a00038e:	4614      	mov	r4, r2
1a000390:	4603      	mov	r3, r0
1a000392:	e7c5      	b.n	1a000320 <memset+0x20>

1a000394 <Chip_GPIO_SetPinState>:
1a000394:	b480      	push	{r7}
1a000396:	b083      	sub	sp, #12
1a000398:	af00      	add	r7, sp, #0
1a00039a:	6078      	str	r0, [r7, #4]
1a00039c:	4608      	mov	r0, r1
1a00039e:	4611      	mov	r1, r2
1a0003a0:	461a      	mov	r2, r3
1a0003a2:	4603      	mov	r3, r0
1a0003a4:	70fb      	strb	r3, [r7, #3]
1a0003a6:	460b      	mov	r3, r1
1a0003a8:	70bb      	strb	r3, [r7, #2]
1a0003aa:	4613      	mov	r3, r2
1a0003ac:	707b      	strb	r3, [r7, #1]
1a0003ae:	78fa      	ldrb	r2, [r7, #3]
1a0003b0:	78bb      	ldrb	r3, [r7, #2]
1a0003b2:	7878      	ldrb	r0, [r7, #1]
1a0003b4:	6879      	ldr	r1, [r7, #4]
1a0003b6:	0152      	lsls	r2, r2, #5
1a0003b8:	440a      	add	r2, r1
1a0003ba:	4413      	add	r3, r2
1a0003bc:	4602      	mov	r2, r0
1a0003be:	701a      	strb	r2, [r3, #0]
1a0003c0:	bf00      	nop
1a0003c2:	370c      	adds	r7, #12
1a0003c4:	46bd      	mov	sp, r7
1a0003c6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003ca:	4770      	bx	lr

1a0003cc <setLedFromMsk>:
1a0003cc:	b580      	push	{r7, lr}
1a0003ce:	b082      	sub	sp, #8
1a0003d0:	af00      	add	r7, sp, #0
1a0003d2:	4603      	mov	r3, r0
1a0003d4:	71fb      	strb	r3, [r7, #7]
1a0003d6:	79fb      	ldrb	r3, [r7, #7]
1a0003d8:	f003 0308 	and.w	r3, r3, #8
1a0003dc:	2b00      	cmp	r3, #0
1a0003de:	d006      	beq.n	1a0003ee <setLedFromMsk+0x22>
1a0003e0:	2301      	movs	r3, #1
1a0003e2:	2205      	movs	r2, #5
1a0003e4:	2102      	movs	r1, #2
1a0003e6:	4834      	ldr	r0, [pc, #208]	; (1a0004b8 <setLedFromMsk+0xec>)
1a0003e8:	f7ff ffd4 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0003ec:	e005      	b.n	1a0003fa <setLedFromMsk+0x2e>
1a0003ee:	2300      	movs	r3, #0
1a0003f0:	2205      	movs	r2, #5
1a0003f2:	2102      	movs	r1, #2
1a0003f4:	4830      	ldr	r0, [pc, #192]	; (1a0004b8 <setLedFromMsk+0xec>)
1a0003f6:	f7ff ffcd 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0003fa:	79fb      	ldrb	r3, [r7, #7]
1a0003fc:	f003 0310 	and.w	r3, r3, #16
1a000400:	2b00      	cmp	r3, #0
1a000402:	d006      	beq.n	1a000412 <setLedFromMsk+0x46>
1a000404:	2301      	movs	r3, #1
1a000406:	2206      	movs	r2, #6
1a000408:	2102      	movs	r1, #2
1a00040a:	482b      	ldr	r0, [pc, #172]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00040c:	f7ff ffc2 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000410:	e005      	b.n	1a00041e <setLedFromMsk+0x52>
1a000412:	2300      	movs	r3, #0
1a000414:	2206      	movs	r2, #6
1a000416:	2102      	movs	r1, #2
1a000418:	4827      	ldr	r0, [pc, #156]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00041a:	f7ff ffbb 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00041e:	79fb      	ldrb	r3, [r7, #7]
1a000420:	f003 0320 	and.w	r3, r3, #32
1a000424:	2b00      	cmp	r3, #0
1a000426:	d006      	beq.n	1a000436 <setLedFromMsk+0x6a>
1a000428:	2301      	movs	r3, #1
1a00042a:	2201      	movs	r2, #1
1a00042c:	2105      	movs	r1, #5
1a00042e:	4822      	ldr	r0, [pc, #136]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000430:	f7ff ffb0 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000434:	e005      	b.n	1a000442 <setLedFromMsk+0x76>
1a000436:	2300      	movs	r3, #0
1a000438:	2201      	movs	r2, #1
1a00043a:	2105      	movs	r1, #5
1a00043c:	481e      	ldr	r0, [pc, #120]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00043e:	f7ff ffa9 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000442:	79fb      	ldrb	r3, [r7, #7]
1a000444:	f003 0301 	and.w	r3, r3, #1
1a000448:	2b00      	cmp	r3, #0
1a00044a:	d006      	beq.n	1a00045a <setLedFromMsk+0x8e>
1a00044c:	2301      	movs	r3, #1
1a00044e:	220c      	movs	r2, #12
1a000450:	2105      	movs	r1, #5
1a000452:	4819      	ldr	r0, [pc, #100]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000454:	f7ff ff9e 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000458:	e005      	b.n	1a000466 <setLedFromMsk+0x9a>
1a00045a:	2300      	movs	r3, #0
1a00045c:	220c      	movs	r2, #12
1a00045e:	2105      	movs	r1, #5
1a000460:	4815      	ldr	r0, [pc, #84]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000462:	f7ff ff97 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000466:	79fb      	ldrb	r3, [r7, #7]
1a000468:	f003 0302 	and.w	r3, r3, #2
1a00046c:	2b00      	cmp	r3, #0
1a00046e:	d006      	beq.n	1a00047e <setLedFromMsk+0xb2>
1a000470:	2301      	movs	r3, #1
1a000472:	220d      	movs	r2, #13
1a000474:	2105      	movs	r1, #5
1a000476:	4810      	ldr	r0, [pc, #64]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000478:	f7ff ff8c 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00047c:	e005      	b.n	1a00048a <setLedFromMsk+0xbe>
1a00047e:	2300      	movs	r3, #0
1a000480:	220d      	movs	r2, #13
1a000482:	2105      	movs	r1, #5
1a000484:	480c      	ldr	r0, [pc, #48]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000486:	f7ff ff85 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00048a:	79fb      	ldrb	r3, [r7, #7]
1a00048c:	f003 0304 	and.w	r3, r3, #4
1a000490:	2b00      	cmp	r3, #0
1a000492:	d006      	beq.n	1a0004a2 <setLedFromMsk+0xd6>
1a000494:	2301      	movs	r3, #1
1a000496:	220e      	movs	r2, #14
1a000498:	2105      	movs	r1, #5
1a00049a:	4807      	ldr	r0, [pc, #28]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00049c:	f7ff ff7a 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004a0:	e005      	b.n	1a0004ae <setLedFromMsk+0xe2>
1a0004a2:	2300      	movs	r3, #0
1a0004a4:	220e      	movs	r2, #14
1a0004a6:	2105      	movs	r1, #5
1a0004a8:	4803      	ldr	r0, [pc, #12]	; (1a0004b8 <setLedFromMsk+0xec>)
1a0004aa:	f7ff ff73 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004ae:	bf00      	nop
1a0004b0:	3708      	adds	r7, #8
1a0004b2:	46bd      	mov	sp, r7
1a0004b4:	bd80      	pop	{r7, pc}
1a0004b6:	bf00      	nop
1a0004b8:	400f4000 	.word	0x400f4000

1a0004bc <ResetISR>:
1a0004bc:	b580      	push	{r7, lr}
1a0004be:	b088      	sub	sp, #32
1a0004c0:	af00      	add	r7, sp, #0
1a0004c2:	b672      	cpsid	i
1a0004c4:	4b26      	ldr	r3, [pc, #152]	; (1a000560 <ResetISR+0xa4>)
1a0004c6:	617b      	str	r3, [r7, #20]
1a0004c8:	697b      	ldr	r3, [r7, #20]
1a0004ca:	4a26      	ldr	r2, [pc, #152]	; (1a000564 <ResetISR+0xa8>)
1a0004cc:	601a      	str	r2, [r3, #0]
1a0004ce:	697b      	ldr	r3, [r7, #20]
1a0004d0:	3304      	adds	r3, #4
1a0004d2:	4a25      	ldr	r2, [pc, #148]	; (1a000568 <ResetISR+0xac>)
1a0004d4:	601a      	str	r2, [r3, #0]
1a0004d6:	4b25      	ldr	r3, [pc, #148]	; (1a00056c <ResetISR+0xb0>)
1a0004d8:	613b      	str	r3, [r7, #16]
1a0004da:	2300      	movs	r3, #0
1a0004dc:	61fb      	str	r3, [r7, #28]
1a0004de:	e009      	b.n	1a0004f4 <ResetISR+0x38>
1a0004e0:	69fb      	ldr	r3, [r7, #28]
1a0004e2:	009b      	lsls	r3, r3, #2
1a0004e4:	693a      	ldr	r2, [r7, #16]
1a0004e6:	4413      	add	r3, r2
1a0004e8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a0004ec:	601a      	str	r2, [r3, #0]
1a0004ee:	69fb      	ldr	r3, [r7, #28]
1a0004f0:	3301      	adds	r3, #1
1a0004f2:	61fb      	str	r3, [r7, #28]
1a0004f4:	69fb      	ldr	r3, [r7, #28]
1a0004f6:	2b07      	cmp	r3, #7
1a0004f8:	d9f2      	bls.n	1a0004e0 <ResetISR+0x24>
1a0004fa:	b662      	cpsie	i
1a0004fc:	4b1c      	ldr	r3, [pc, #112]	; (1a000570 <ResetISR+0xb4>)
1a0004fe:	61bb      	str	r3, [r7, #24]
1a000500:	e013      	b.n	1a00052a <ResetISR+0x6e>
1a000502:	69bb      	ldr	r3, [r7, #24]
1a000504:	1d1a      	adds	r2, r3, #4
1a000506:	61ba      	str	r2, [r7, #24]
1a000508:	681b      	ldr	r3, [r3, #0]
1a00050a:	607b      	str	r3, [r7, #4]
1a00050c:	69bb      	ldr	r3, [r7, #24]
1a00050e:	1d1a      	adds	r2, r3, #4
1a000510:	61ba      	str	r2, [r7, #24]
1a000512:	681b      	ldr	r3, [r3, #0]
1a000514:	60fb      	str	r3, [r7, #12]
1a000516:	69bb      	ldr	r3, [r7, #24]
1a000518:	1d1a      	adds	r2, r3, #4
1a00051a:	61ba      	str	r2, [r7, #24]
1a00051c:	681b      	ldr	r3, [r3, #0]
1a00051e:	60bb      	str	r3, [r7, #8]
1a000520:	68ba      	ldr	r2, [r7, #8]
1a000522:	68f9      	ldr	r1, [r7, #12]
1a000524:	6878      	ldr	r0, [r7, #4]
1a000526:	f7ff fdff 	bl	1a000128 <data_init>
1a00052a:	69bb      	ldr	r3, [r7, #24]
1a00052c:	4a11      	ldr	r2, [pc, #68]	; (1a000574 <ResetISR+0xb8>)
1a00052e:	4293      	cmp	r3, r2
1a000530:	d3e7      	bcc.n	1a000502 <ResetISR+0x46>
1a000532:	e00d      	b.n	1a000550 <ResetISR+0x94>
1a000534:	69bb      	ldr	r3, [r7, #24]
1a000536:	1d1a      	adds	r2, r3, #4
1a000538:	61ba      	str	r2, [r7, #24]
1a00053a:	681b      	ldr	r3, [r3, #0]
1a00053c:	60fb      	str	r3, [r7, #12]
1a00053e:	69bb      	ldr	r3, [r7, #24]
1a000540:	1d1a      	adds	r2, r3, #4
1a000542:	61ba      	str	r2, [r7, #24]
1a000544:	681b      	ldr	r3, [r3, #0]
1a000546:	60bb      	str	r3, [r7, #8]
1a000548:	68b9      	ldr	r1, [r7, #8]
1a00054a:	68f8      	ldr	r0, [r7, #12]
1a00054c:	f7ff fe0e 	bl	1a00016c <bss_init>
1a000550:	69bb      	ldr	r3, [r7, #24]
1a000552:	4a09      	ldr	r2, [pc, #36]	; (1a000578 <ResetISR+0xbc>)
1a000554:	4293      	cmp	r3, r2
1a000556:	d3ed      	bcc.n	1a000534 <ResetISR+0x78>
1a000558:	f000 f9c4 	bl	1a0008e4 <main>
1a00055c:	e7fe      	b.n	1a00055c <ResetISR+0xa0>
1a00055e:	bf00      	nop
1a000560:	40053100 	.word	0x40053100
1a000564:	10df1000 	.word	0x10df1000
1a000568:	01dff7ff 	.word	0x01dff7ff
1a00056c:	e000e280 	.word	0xe000e280
1a000570:	1a000114 	.word	0x1a000114
1a000574:	1a000120 	.word	0x1a000120
1a000578:	1a000128 	.word	0x1a000128

1a00057c <NVIC_EnableIRQ>:
1a00057c:	b480      	push	{r7}
1a00057e:	b083      	sub	sp, #12
1a000580:	af00      	add	r7, sp, #0
1a000582:	4603      	mov	r3, r0
1a000584:	71fb      	strb	r3, [r7, #7]
1a000586:	79fb      	ldrb	r3, [r7, #7]
1a000588:	f003 031f 	and.w	r3, r3, #31
1a00058c:	2201      	movs	r2, #1
1a00058e:	fa02 f103 	lsl.w	r1, r2, r3
1a000592:	4a06      	ldr	r2, [pc, #24]	; (1a0005ac <NVIC_EnableIRQ+0x30>)
1a000594:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000598:	095b      	lsrs	r3, r3, #5
1a00059a:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00059e:	bf00      	nop
1a0005a0:	370c      	adds	r7, #12
1a0005a2:	46bd      	mov	sp, r7
1a0005a4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005a8:	4770      	bx	lr
1a0005aa:	bf00      	nop
1a0005ac:	e000e100 	.word	0xe000e100

1a0005b0 <NVIC_DisableIRQ>:
1a0005b0:	b480      	push	{r7}
1a0005b2:	b083      	sub	sp, #12
1a0005b4:	af00      	add	r7, sp, #0
1a0005b6:	4603      	mov	r3, r0
1a0005b8:	71fb      	strb	r3, [r7, #7]
1a0005ba:	79fb      	ldrb	r3, [r7, #7]
1a0005bc:	f003 031f 	and.w	r3, r3, #31
1a0005c0:	2201      	movs	r2, #1
1a0005c2:	fa02 f103 	lsl.w	r1, r2, r3
1a0005c6:	4a06      	ldr	r2, [pc, #24]	; (1a0005e0 <NVIC_DisableIRQ+0x30>)
1a0005c8:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005cc:	095b      	lsrs	r3, r3, #5
1a0005ce:	3320      	adds	r3, #32
1a0005d0:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0005d4:	bf00      	nop
1a0005d6:	370c      	adds	r7, #12
1a0005d8:	46bd      	mov	sp, r7
1a0005da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005de:	4770      	bx	lr
1a0005e0:	e000e100 	.word	0xe000e100

1a0005e4 <NVIC_ClearPendingIRQ>:
1a0005e4:	b480      	push	{r7}
1a0005e6:	b083      	sub	sp, #12
1a0005e8:	af00      	add	r7, sp, #0
1a0005ea:	4603      	mov	r3, r0
1a0005ec:	71fb      	strb	r3, [r7, #7]
1a0005ee:	79fb      	ldrb	r3, [r7, #7]
1a0005f0:	f003 031f 	and.w	r3, r3, #31
1a0005f4:	2201      	movs	r2, #1
1a0005f6:	fa02 f103 	lsl.w	r1, r2, r3
1a0005fa:	4a06      	ldr	r2, [pc, #24]	; (1a000614 <NVIC_ClearPendingIRQ+0x30>)
1a0005fc:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000600:	095b      	lsrs	r3, r3, #5
1a000602:	3360      	adds	r3, #96	; 0x60
1a000604:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000608:	bf00      	nop
1a00060a:	370c      	adds	r7, #12
1a00060c:	46bd      	mov	sp, r7
1a00060e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000612:	4770      	bx	lr
1a000614:	e000e100 	.word	0xe000e100

1a000618 <Chip_GPIO_SetPinState>:
1a000618:	b480      	push	{r7}
1a00061a:	b083      	sub	sp, #12
1a00061c:	af00      	add	r7, sp, #0
1a00061e:	6078      	str	r0, [r7, #4]
1a000620:	4608      	mov	r0, r1
1a000622:	4611      	mov	r1, r2
1a000624:	461a      	mov	r2, r3
1a000626:	4603      	mov	r3, r0
1a000628:	70fb      	strb	r3, [r7, #3]
1a00062a:	460b      	mov	r3, r1
1a00062c:	70bb      	strb	r3, [r7, #2]
1a00062e:	4613      	mov	r3, r2
1a000630:	707b      	strb	r3, [r7, #1]
1a000632:	78fa      	ldrb	r2, [r7, #3]
1a000634:	78bb      	ldrb	r3, [r7, #2]
1a000636:	7878      	ldrb	r0, [r7, #1]
1a000638:	6879      	ldr	r1, [r7, #4]
1a00063a:	0152      	lsls	r2, r2, #5
1a00063c:	440a      	add	r2, r1
1a00063e:	4413      	add	r3, r2
1a000640:	4602      	mov	r2, r0
1a000642:	701a      	strb	r2, [r3, #0]
1a000644:	bf00      	nop
1a000646:	370c      	adds	r7, #12
1a000648:	46bd      	mov	sp, r7
1a00064a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00064e:	4770      	bx	lr

1a000650 <Chip_PININT_ClearIntStatus>:
1a000650:	b480      	push	{r7}
1a000652:	b083      	sub	sp, #12
1a000654:	af00      	add	r7, sp, #0
1a000656:	6078      	str	r0, [r7, #4]
1a000658:	6039      	str	r1, [r7, #0]
1a00065a:	687b      	ldr	r3, [r7, #4]
1a00065c:	683a      	ldr	r2, [r7, #0]
1a00065e:	625a      	str	r2, [r3, #36]	; 0x24
1a000660:	bf00      	nop
1a000662:	370c      	adds	r7, #12
1a000664:	46bd      	mov	sp, r7
1a000666:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00066a:	4770      	bx	lr

1a00066c <StopWatch_Elapsed>:
1a00066c:	b580      	push	{r7, lr}
1a00066e:	b082      	sub	sp, #8
1a000670:	af00      	add	r7, sp, #0
1a000672:	6078      	str	r0, [r7, #4]
1a000674:	f000 fcbe 	bl	1a000ff4 <StopWatch_Start>
1a000678:	4602      	mov	r2, r0
1a00067a:	687b      	ldr	r3, [r7, #4]
1a00067c:	1ad3      	subs	r3, r2, r3
1a00067e:	4618      	mov	r0, r3
1a000680:	3708      	adds	r7, #8
1a000682:	46bd      	mov	sp, r7
1a000684:	bd80      	pop	{r7, pc}

1a000686 <StopWatch_DelayMs>:
1a000686:	b580      	push	{r7, lr}
1a000688:	b084      	sub	sp, #16
1a00068a:	af00      	add	r7, sp, #0
1a00068c:	6078      	str	r0, [r7, #4]
1a00068e:	6878      	ldr	r0, [r7, #4]
1a000690:	f000 fcba 	bl	1a001008 <StopWatch_MsToTicks>
1a000694:	60f8      	str	r0, [r7, #12]
1a000696:	f000 fcad 	bl	1a000ff4 <StopWatch_Start>
1a00069a:	60b8      	str	r0, [r7, #8]
1a00069c:	bf00      	nop
1a00069e:	68b8      	ldr	r0, [r7, #8]
1a0006a0:	f7ff ffe4 	bl	1a00066c <StopWatch_Elapsed>
1a0006a4:	4602      	mov	r2, r0
1a0006a6:	68fb      	ldr	r3, [r7, #12]
1a0006a8:	4293      	cmp	r3, r2
1a0006aa:	d8f8      	bhi.n	1a00069e <StopWatch_DelayMs+0x18>
1a0006ac:	bf00      	nop
1a0006ae:	3710      	adds	r7, #16
1a0006b0:	46bd      	mov	sp, r7
1a0006b2:	bd80      	pop	{r7, pc}

1a0006b4 <GPIO1_IRQHandler>:
1a0006b4:	b580      	push	{r7, lr}
1a0006b6:	af00      	add	r7, sp, #0
1a0006b8:	2102      	movs	r1, #2
1a0006ba:	4809      	ldr	r0, [pc, #36]	; (1a0006e0 <GPIO1_IRQHandler+0x2c>)
1a0006bc:	f7ff ffc8 	bl	1a000650 <Chip_PININT_ClearIntStatus>
1a0006c0:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0006c4:	f7ff ffdf 	bl	1a000686 <StopWatch_DelayMs>
1a0006c8:	4b06      	ldr	r3, [pc, #24]	; (1a0006e4 <GPIO1_IRQHandler+0x30>)
1a0006ca:	781b      	ldrb	r3, [r3, #0]
1a0006cc:	b2db      	uxtb	r3, r3
1a0006ce:	3301      	adds	r3, #1
1a0006d0:	b2da      	uxtb	r2, r3
1a0006d2:	4b04      	ldr	r3, [pc, #16]	; (1a0006e4 <GPIO1_IRQHandler+0x30>)
1a0006d4:	701a      	strb	r2, [r3, #0]
1a0006d6:	4b04      	ldr	r3, [pc, #16]	; (1a0006e8 <GPIO1_IRQHandler+0x34>)
1a0006d8:	2201      	movs	r2, #1
1a0006da:	701a      	strb	r2, [r3, #0]
1a0006dc:	bf00      	nop
1a0006de:	bd80      	pop	{r7, pc}
1a0006e0:	40087000 	.word	0x40087000
1a0006e4:	10000001 	.word	0x10000001
1a0006e8:	10000000 	.word	0x10000000

1a0006ec <GPIO2_IRQHandler>:
1a0006ec:	b580      	push	{r7, lr}
1a0006ee:	af00      	add	r7, sp, #0
1a0006f0:	2104      	movs	r1, #4
1a0006f2:	4822      	ldr	r0, [pc, #136]	; (1a00077c <GPIO2_IRQHandler+0x90>)
1a0006f4:	f7ff ffac 	bl	1a000650 <Chip_PININT_ClearIntStatus>
1a0006f8:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0006fc:	f7ff ffc3 	bl	1a000686 <StopWatch_DelayMs>
1a000700:	4b1f      	ldr	r3, [pc, #124]	; (1a000780 <GPIO2_IRQHandler+0x94>)
1a000702:	781b      	ldrb	r3, [r3, #0]
1a000704:	b2db      	uxtb	r3, r3
1a000706:	2b00      	cmp	r3, #0
1a000708:	d00b      	beq.n	1a000722 <GPIO2_IRQHandler+0x36>
1a00070a:	2021      	movs	r0, #33	; 0x21
1a00070c:	f7ff ff50 	bl	1a0005b0 <NVIC_DisableIRQ>
1a000710:	f000 fc58 	bl	1a000fc4 <disable_SysTick>
1a000714:	2000      	movs	r0, #0
1a000716:	f7ff fe59 	bl	1a0003cc <setLedFromMsk>
1a00071a:	201a      	movs	r0, #26
1a00071c:	f7ff ff2e 	bl	1a00057c <NVIC_EnableIRQ>
1a000720:	e01e      	b.n	1a000760 <GPIO2_IRQHandler+0x74>
1a000722:	201a      	movs	r0, #26
1a000724:	f7ff ff44 	bl	1a0005b0 <NVIC_DisableIRQ>
1a000728:	f000 fc3a 	bl	1a000fa0 <configurar_SysTick>
1a00072c:	2102      	movs	r1, #2
1a00072e:	4813      	ldr	r0, [pc, #76]	; (1a00077c <GPIO2_IRQHandler+0x90>)
1a000730:	f7ff ff8e 	bl	1a000650 <Chip_PININT_ClearIntStatus>
1a000734:	2021      	movs	r0, #33	; 0x21
1a000736:	f7ff ff55 	bl	1a0005e4 <NVIC_ClearPendingIRQ>
1a00073a:	2021      	movs	r0, #33	; 0x21
1a00073c:	f7ff ff1e 	bl	1a00057c <NVIC_EnableIRQ>
1a000740:	4b10      	ldr	r3, [pc, #64]	; (1a000784 <GPIO2_IRQHandler+0x98>)
1a000742:	781b      	ldrb	r3, [r3, #0]
1a000744:	b2db      	uxtb	r3, r3
1a000746:	009b      	lsls	r3, r3, #2
1a000748:	b2db      	uxtb	r3, r3
1a00074a:	f003 033c 	and.w	r3, r3, #60	; 0x3c
1a00074e:	b2db      	uxtb	r3, r3
1a000750:	4618      	mov	r0, r3
1a000752:	f7ff fe3b 	bl	1a0003cc <setLedFromMsk>
1a000756:	2202      	movs	r2, #2
1a000758:	490b      	ldr	r1, [pc, #44]	; (1a000788 <GPIO2_IRQHandler+0x9c>)
1a00075a:	480c      	ldr	r0, [pc, #48]	; (1a00078c <GPIO2_IRQHandler+0xa0>)
1a00075c:	f000 ff42 	bl	1a0015e4 <Chip_UART_SendBlocking>
1a000760:	4b07      	ldr	r3, [pc, #28]	; (1a000780 <GPIO2_IRQHandler+0x94>)
1a000762:	781b      	ldrb	r3, [r3, #0]
1a000764:	b2db      	uxtb	r3, r3
1a000766:	3301      	adds	r3, #1
1a000768:	2b00      	cmp	r3, #0
1a00076a:	f003 0301 	and.w	r3, r3, #1
1a00076e:	bfb8      	it	lt
1a000770:	425b      	neglt	r3, r3
1a000772:	b2da      	uxtb	r2, r3
1a000774:	4b02      	ldr	r3, [pc, #8]	; (1a000780 <GPIO2_IRQHandler+0x94>)
1a000776:	701a      	strb	r2, [r3, #0]
1a000778:	bf00      	nop
1a00077a:	bd80      	pop	{r7, pc}
1a00077c:	40087000 	.word	0x40087000
1a000780:	10000004 	.word	0x10000004
1a000784:	10000001 	.word	0x10000001
1a000788:	1a002788 	.word	0x1a002788
1a00078c:	400c1000 	.word	0x400c1000

1a000790 <GPIO4_IRQHandler>:
1a000790:	b580      	push	{r7, lr}
1a000792:	af00      	add	r7, sp, #0
1a000794:	2110      	movs	r1, #16
1a000796:	4807      	ldr	r0, [pc, #28]	; (1a0007b4 <GPIO4_IRQHandler+0x24>)
1a000798:	f7ff ff5a 	bl	1a000650 <Chip_PININT_ClearIntStatus>
1a00079c:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0007a0:	f7ff ff71 	bl	1a000686 <StopWatch_DelayMs>
1a0007a4:	4b04      	ldr	r3, [pc, #16]	; (1a0007b8 <GPIO4_IRQHandler+0x28>)
1a0007a6:	2200      	movs	r2, #0
1a0007a8:	701a      	strb	r2, [r3, #0]
1a0007aa:	4b04      	ldr	r3, [pc, #16]	; (1a0007bc <GPIO4_IRQHandler+0x2c>)
1a0007ac:	2201      	movs	r2, #1
1a0007ae:	701a      	strb	r2, [r3, #0]
1a0007b0:	bf00      	nop
1a0007b2:	bd80      	pop	{r7, pc}
1a0007b4:	40087000 	.word	0x40087000
1a0007b8:	10000001 	.word	0x10000001
1a0007bc:	10000000 	.word	0x10000000

1a0007c0 <SysTick_Handler>:
1a0007c0:	b580      	push	{r7, lr}
1a0007c2:	af00      	add	r7, sp, #0
1a0007c4:	4b37      	ldr	r3, [pc, #220]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a0007c6:	781b      	ldrb	r3, [r3, #0]
1a0007c8:	b2db      	uxtb	r3, r3
1a0007ca:	2b07      	cmp	r3, #7
1a0007cc:	d902      	bls.n	1a0007d4 <SysTick_Handler+0x14>
1a0007ce:	4b35      	ldr	r3, [pc, #212]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a0007d0:	2204      	movs	r2, #4
1a0007d2:	701a      	strb	r2, [r3, #0]
1a0007d4:	4b34      	ldr	r3, [pc, #208]	; (1a0008a8 <SysTick_Handler+0xe8>)
1a0007d6:	781b      	ldrb	r3, [r3, #0]
1a0007d8:	b2db      	uxtb	r3, r3
1a0007da:	2b00      	cmp	r3, #0
1a0007dc:	d02c      	beq.n	1a000838 <SysTick_Handler+0x78>
1a0007de:	230e      	movs	r3, #14
1a0007e0:	4a32      	ldr	r2, [pc, #200]	; (1a0008ac <SysTick_Handler+0xec>)
1a0007e2:	4933      	ldr	r1, [pc, #204]	; (1a0008b0 <SysTick_Handler+0xf0>)
1a0007e4:	4833      	ldr	r0, [pc, #204]	; (1a0008b4 <SysTick_Handler+0xf4>)
1a0007e6:	f000 ffa2 	bl	1a00172e <Chip_UART_SendRB>
1a0007ea:	4b2e      	ldr	r3, [pc, #184]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a0007ec:	781b      	ldrb	r3, [r3, #0]
1a0007ee:	b2db      	uxtb	r3, r3
1a0007f0:	4619      	mov	r1, r3
1a0007f2:	4a31      	ldr	r2, [pc, #196]	; (1a0008b8 <SysTick_Handler+0xf8>)
1a0007f4:	460b      	mov	r3, r1
1a0007f6:	005b      	lsls	r3, r3, #1
1a0007f8:	440b      	add	r3, r1
1a0007fa:	005b      	lsls	r3, r3, #1
1a0007fc:	4413      	add	r3, r2
1a0007fe:	3302      	adds	r3, #2
1a000800:	7818      	ldrb	r0, [r3, #0]
1a000802:	4b28      	ldr	r3, [pc, #160]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a000804:	781b      	ldrb	r3, [r3, #0]
1a000806:	b2db      	uxtb	r3, r3
1a000808:	4619      	mov	r1, r3
1a00080a:	4a2b      	ldr	r2, [pc, #172]	; (1a0008b8 <SysTick_Handler+0xf8>)
1a00080c:	460b      	mov	r3, r1
1a00080e:	005b      	lsls	r3, r3, #1
1a000810:	440b      	add	r3, r1
1a000812:	005b      	lsls	r3, r3, #1
1a000814:	4413      	add	r3, r2
1a000816:	3303      	adds	r3, #3
1a000818:	781a      	ldrb	r2, [r3, #0]
1a00081a:	2301      	movs	r3, #1
1a00081c:	4601      	mov	r1, r0
1a00081e:	4827      	ldr	r0, [pc, #156]	; (1a0008bc <SysTick_Handler+0xfc>)
1a000820:	f7ff fefa 	bl	1a000618 <Chip_GPIO_SetPinState>
1a000824:	4b1f      	ldr	r3, [pc, #124]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a000826:	781b      	ldrb	r3, [r3, #0]
1a000828:	b2db      	uxtb	r3, r3
1a00082a:	4618      	mov	r0, r3
1a00082c:	f000 fb90 	bl	1a000f50 <USARTSendInt>
1a000830:	4b1d      	ldr	r3, [pc, #116]	; (1a0008a8 <SysTick_Handler+0xe8>)
1a000832:	2200      	movs	r2, #0
1a000834:	701a      	strb	r2, [r3, #0]
1a000836:	e032      	b.n	1a00089e <SysTick_Handler+0xde>
1a000838:	2310      	movs	r3, #16
1a00083a:	4a21      	ldr	r2, [pc, #132]	; (1a0008c0 <SysTick_Handler+0x100>)
1a00083c:	491c      	ldr	r1, [pc, #112]	; (1a0008b0 <SysTick_Handler+0xf0>)
1a00083e:	481d      	ldr	r0, [pc, #116]	; (1a0008b4 <SysTick_Handler+0xf4>)
1a000840:	f000 ff75 	bl	1a00172e <Chip_UART_SendRB>
1a000844:	4b17      	ldr	r3, [pc, #92]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a000846:	781b      	ldrb	r3, [r3, #0]
1a000848:	b2db      	uxtb	r3, r3
1a00084a:	4619      	mov	r1, r3
1a00084c:	4a1a      	ldr	r2, [pc, #104]	; (1a0008b8 <SysTick_Handler+0xf8>)
1a00084e:	460b      	mov	r3, r1
1a000850:	005b      	lsls	r3, r3, #1
1a000852:	440b      	add	r3, r1
1a000854:	005b      	lsls	r3, r3, #1
1a000856:	4413      	add	r3, r2
1a000858:	3302      	adds	r3, #2
1a00085a:	7818      	ldrb	r0, [r3, #0]
1a00085c:	4b11      	ldr	r3, [pc, #68]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a00085e:	781b      	ldrb	r3, [r3, #0]
1a000860:	b2db      	uxtb	r3, r3
1a000862:	4619      	mov	r1, r3
1a000864:	4a14      	ldr	r2, [pc, #80]	; (1a0008b8 <SysTick_Handler+0xf8>)
1a000866:	460b      	mov	r3, r1
1a000868:	005b      	lsls	r3, r3, #1
1a00086a:	440b      	add	r3, r1
1a00086c:	005b      	lsls	r3, r3, #1
1a00086e:	4413      	add	r3, r2
1a000870:	3303      	adds	r3, #3
1a000872:	781a      	ldrb	r2, [r3, #0]
1a000874:	2300      	movs	r3, #0
1a000876:	4601      	mov	r1, r0
1a000878:	4810      	ldr	r0, [pc, #64]	; (1a0008bc <SysTick_Handler+0xfc>)
1a00087a:	f7ff fecd 	bl	1a000618 <Chip_GPIO_SetPinState>
1a00087e:	4b09      	ldr	r3, [pc, #36]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a000880:	781b      	ldrb	r3, [r3, #0]
1a000882:	b2db      	uxtb	r3, r3
1a000884:	4618      	mov	r0, r3
1a000886:	f000 fb63 	bl	1a000f50 <USARTSendInt>
1a00088a:	4b07      	ldr	r3, [pc, #28]	; (1a0008a8 <SysTick_Handler+0xe8>)
1a00088c:	2201      	movs	r2, #1
1a00088e:	701a      	strb	r2, [r3, #0]
1a000890:	4b04      	ldr	r3, [pc, #16]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a000892:	781b      	ldrb	r3, [r3, #0]
1a000894:	b2db      	uxtb	r3, r3
1a000896:	3301      	adds	r3, #1
1a000898:	b2da      	uxtb	r2, r3
1a00089a:	4b02      	ldr	r3, [pc, #8]	; (1a0008a4 <SysTick_Handler+0xe4>)
1a00089c:	701a      	strb	r2, [r3, #0]
1a00089e:	bf00      	nop
1a0008a0:	bd80      	pop	{r7, pc}
1a0008a2:	bf00      	nop
1a0008a4:	10000001 	.word	0x10000001
1a0008a8:	10000000 	.word	0x10000000
1a0008ac:	1a0026e4 	.word	0x1a0026e4
1a0008b0:	10000024 	.word	0x10000024
1a0008b4:	400c1000 	.word	0x400c1000
1a0008b8:	1a00278c 	.word	0x1a00278c
1a0008bc:	400f4000 	.word	0x400f4000
1a0008c0:	1a0026f4 	.word	0x1a0026f4

1a0008c4 <UART2_IRQHandler>:
1a0008c4:	b580      	push	{r7, lr}
1a0008c6:	af00      	add	r7, sp, #0
1a0008c8:	4a03      	ldr	r2, [pc, #12]	; (1a0008d8 <UART2_IRQHandler+0x14>)
1a0008ca:	4904      	ldr	r1, [pc, #16]	; (1a0008dc <UART2_IRQHandler+0x18>)
1a0008cc:	4804      	ldr	r0, [pc, #16]	; (1a0008e0 <UART2_IRQHandler+0x1c>)
1a0008ce:	f000 ff5e 	bl	1a00178e <Chip_UART_IRQRBHandler>
1a0008d2:	bf00      	nop
1a0008d4:	bd80      	pop	{r7, pc}
1a0008d6:	bf00      	nop
1a0008d8:	10000024 	.word	0x10000024
1a0008dc:	10000238 	.word	0x10000238
1a0008e0:	400c1000 	.word	0x400c1000

1a0008e4 <main>:
1a0008e4:	b580      	push	{r7, lr}
1a0008e6:	b082      	sub	sp, #8
1a0008e8:	af00      	add	r7, sp, #0
1a0008ea:	2300      	movs	r3, #0
1a0008ec:	71fb      	strb	r3, [r7, #7]
1a0008ee:	f000 f9e8 	bl	1a000cc2 <inicializar_sistema>
1a0008f2:	f000 f9f1 	bl	1a000cd8 <inicializar_leds>
1a0008f6:	f000 fa53 	bl	1a000da0 <inicializar_teclado>
1a0008fa:	f000 fadd 	bl	1a000eb8 <init_interrupciones>
1a0008fe:	f000 fa99 	bl	1a000e34 <inicializar_USART>
1a000902:	f000 fb4d 	bl	1a000fa0 <configurar_SysTick>
1a000906:	230e      	movs	r3, #14
1a000908:	4a0c      	ldr	r2, [pc, #48]	; (1a00093c <main+0x58>)
1a00090a:	490d      	ldr	r1, [pc, #52]	; (1a000940 <main+0x5c>)
1a00090c:	480d      	ldr	r0, [pc, #52]	; (1a000944 <main+0x60>)
1a00090e:	f000 ff0e 	bl	1a00172e <Chip_UART_SendRB>
1a000912:	2310      	movs	r3, #16
1a000914:	4a0c      	ldr	r2, [pc, #48]	; (1a000948 <main+0x64>)
1a000916:	490a      	ldr	r1, [pc, #40]	; (1a000940 <main+0x5c>)
1a000918:	480a      	ldr	r0, [pc, #40]	; (1a000944 <main+0x60>)
1a00091a:	f000 ff08 	bl	1a00172e <Chip_UART_SendRB>
1a00091e:	2338      	movs	r3, #56	; 0x38
1a000920:	4a0a      	ldr	r2, [pc, #40]	; (1a00094c <main+0x68>)
1a000922:	4907      	ldr	r1, [pc, #28]	; (1a000940 <main+0x5c>)
1a000924:	4807      	ldr	r0, [pc, #28]	; (1a000944 <main+0x60>)
1a000926:	f000 ff02 	bl	1a00172e <Chip_UART_SendRB>
1a00092a:	2342      	movs	r3, #66	; 0x42
1a00092c:	4a08      	ldr	r2, [pc, #32]	; (1a000950 <main+0x6c>)
1a00092e:	4904      	ldr	r1, [pc, #16]	; (1a000940 <main+0x5c>)
1a000930:	4804      	ldr	r0, [pc, #16]	; (1a000944 <main+0x60>)
1a000932:	f000 fefc 	bl	1a00172e <Chip_UART_SendRB>
1a000936:	bf30      	wfi
1a000938:	e7fd      	b.n	1a000936 <main+0x52>
1a00093a:	bf00      	nop
1a00093c:	1a0026e4 	.word	0x1a0026e4
1a000940:	10000024 	.word	0x10000024
1a000944:	400c1000 	.word	0x400c1000
1a000948:	1a0026f4 	.word	0x1a0026f4
1a00094c:	1a002708 	.word	0x1a002708
1a000950:	1a002744 	.word	0x1a002744

1a000954 <NVIC_EnableIRQ>:
1a000954:	b480      	push	{r7}
1a000956:	b083      	sub	sp, #12
1a000958:	af00      	add	r7, sp, #0
1a00095a:	4603      	mov	r3, r0
1a00095c:	71fb      	strb	r3, [r7, #7]
1a00095e:	79fb      	ldrb	r3, [r7, #7]
1a000960:	f003 031f 	and.w	r3, r3, #31
1a000964:	2201      	movs	r2, #1
1a000966:	fa02 f103 	lsl.w	r1, r2, r3
1a00096a:	4a06      	ldr	r2, [pc, #24]	; (1a000984 <NVIC_EnableIRQ+0x30>)
1a00096c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000970:	095b      	lsrs	r3, r3, #5
1a000972:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000976:	bf00      	nop
1a000978:	370c      	adds	r7, #12
1a00097a:	46bd      	mov	sp, r7
1a00097c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000980:	4770      	bx	lr
1a000982:	bf00      	nop
1a000984:	e000e100 	.word	0xe000e100

1a000988 <NVIC_ClearPendingIRQ>:
1a000988:	b480      	push	{r7}
1a00098a:	b083      	sub	sp, #12
1a00098c:	af00      	add	r7, sp, #0
1a00098e:	4603      	mov	r3, r0
1a000990:	71fb      	strb	r3, [r7, #7]
1a000992:	79fb      	ldrb	r3, [r7, #7]
1a000994:	f003 031f 	and.w	r3, r3, #31
1a000998:	2201      	movs	r2, #1
1a00099a:	fa02 f103 	lsl.w	r1, r2, r3
1a00099e:	4a06      	ldr	r2, [pc, #24]	; (1a0009b8 <NVIC_ClearPendingIRQ+0x30>)
1a0009a0:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0009a4:	095b      	lsrs	r3, r3, #5
1a0009a6:	3360      	adds	r3, #96	; 0x60
1a0009a8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0009ac:	bf00      	nop
1a0009ae:	370c      	adds	r7, #12
1a0009b0:	46bd      	mov	sp, r7
1a0009b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009b6:	4770      	bx	lr
1a0009b8:	e000e100 	.word	0xe000e100

1a0009bc <NVIC_SetPriority>:
1a0009bc:	b480      	push	{r7}
1a0009be:	b083      	sub	sp, #12
1a0009c0:	af00      	add	r7, sp, #0
1a0009c2:	4603      	mov	r3, r0
1a0009c4:	6039      	str	r1, [r7, #0]
1a0009c6:	71fb      	strb	r3, [r7, #7]
1a0009c8:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0009cc:	2b00      	cmp	r3, #0
1a0009ce:	da0b      	bge.n	1a0009e8 <NVIC_SetPriority+0x2c>
1a0009d0:	683b      	ldr	r3, [r7, #0]
1a0009d2:	b2da      	uxtb	r2, r3
1a0009d4:	490c      	ldr	r1, [pc, #48]	; (1a000a08 <NVIC_SetPriority+0x4c>)
1a0009d6:	79fb      	ldrb	r3, [r7, #7]
1a0009d8:	f003 030f 	and.w	r3, r3, #15
1a0009dc:	3b04      	subs	r3, #4
1a0009de:	0152      	lsls	r2, r2, #5
1a0009e0:	b2d2      	uxtb	r2, r2
1a0009e2:	440b      	add	r3, r1
1a0009e4:	761a      	strb	r2, [r3, #24]
1a0009e6:	e009      	b.n	1a0009fc <NVIC_SetPriority+0x40>
1a0009e8:	683b      	ldr	r3, [r7, #0]
1a0009ea:	b2da      	uxtb	r2, r3
1a0009ec:	4907      	ldr	r1, [pc, #28]	; (1a000a0c <NVIC_SetPriority+0x50>)
1a0009ee:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0009f2:	0152      	lsls	r2, r2, #5
1a0009f4:	b2d2      	uxtb	r2, r2
1a0009f6:	440b      	add	r3, r1
1a0009f8:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a0009fc:	bf00      	nop
1a0009fe:	370c      	adds	r7, #12
1a000a00:	46bd      	mov	sp, r7
1a000a02:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a06:	4770      	bx	lr
1a000a08:	e000ed00 	.word	0xe000ed00
1a000a0c:	e000e100 	.word	0xe000e100

1a000a10 <SysTick_Config>:
1a000a10:	b580      	push	{r7, lr}
1a000a12:	b082      	sub	sp, #8
1a000a14:	af00      	add	r7, sp, #0
1a000a16:	6078      	str	r0, [r7, #4]
1a000a18:	687b      	ldr	r3, [r7, #4]
1a000a1a:	3b01      	subs	r3, #1
1a000a1c:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a000a20:	d301      	bcc.n	1a000a26 <SysTick_Config+0x16>
1a000a22:	2301      	movs	r3, #1
1a000a24:	e00f      	b.n	1a000a46 <SysTick_Config+0x36>
1a000a26:	4a0a      	ldr	r2, [pc, #40]	; (1a000a50 <SysTick_Config+0x40>)
1a000a28:	687b      	ldr	r3, [r7, #4]
1a000a2a:	3b01      	subs	r3, #1
1a000a2c:	6053      	str	r3, [r2, #4]
1a000a2e:	2107      	movs	r1, #7
1a000a30:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a000a34:	f7ff ffc2 	bl	1a0009bc <NVIC_SetPriority>
1a000a38:	4b05      	ldr	r3, [pc, #20]	; (1a000a50 <SysTick_Config+0x40>)
1a000a3a:	2200      	movs	r2, #0
1a000a3c:	609a      	str	r2, [r3, #8]
1a000a3e:	4b04      	ldr	r3, [pc, #16]	; (1a000a50 <SysTick_Config+0x40>)
1a000a40:	2207      	movs	r2, #7
1a000a42:	601a      	str	r2, [r3, #0]
1a000a44:	2300      	movs	r3, #0
1a000a46:	4618      	mov	r0, r3
1a000a48:	3708      	adds	r7, #8
1a000a4a:	46bd      	mov	sp, r7
1a000a4c:	bd80      	pop	{r7, pc}
1a000a4e:	bf00      	nop
1a000a50:	e000e010 	.word	0xe000e010

1a000a54 <Chip_SCU_PinMuxSet>:
1a000a54:	b480      	push	{r7}
1a000a56:	b083      	sub	sp, #12
1a000a58:	af00      	add	r7, sp, #0
1a000a5a:	4603      	mov	r3, r0
1a000a5c:	71fb      	strb	r3, [r7, #7]
1a000a5e:	460b      	mov	r3, r1
1a000a60:	71bb      	strb	r3, [r7, #6]
1a000a62:	4613      	mov	r3, r2
1a000a64:	80bb      	strh	r3, [r7, #4]
1a000a66:	4807      	ldr	r0, [pc, #28]	; (1a000a84 <Chip_SCU_PinMuxSet+0x30>)
1a000a68:	79f9      	ldrb	r1, [r7, #7]
1a000a6a:	79bb      	ldrb	r3, [r7, #6]
1a000a6c:	88ba      	ldrh	r2, [r7, #4]
1a000a6e:	0149      	lsls	r1, r1, #5
1a000a70:	440b      	add	r3, r1
1a000a72:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000a76:	bf00      	nop
1a000a78:	370c      	adds	r7, #12
1a000a7a:	46bd      	mov	sp, r7
1a000a7c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a80:	4770      	bx	lr
1a000a82:	bf00      	nop
1a000a84:	40086000 	.word	0x40086000

1a000a88 <Chip_SCU_PinMux>:
1a000a88:	b590      	push	{r4, r7, lr}
1a000a8a:	b083      	sub	sp, #12
1a000a8c:	af00      	add	r7, sp, #0
1a000a8e:	4604      	mov	r4, r0
1a000a90:	4608      	mov	r0, r1
1a000a92:	4611      	mov	r1, r2
1a000a94:	461a      	mov	r2, r3
1a000a96:	4623      	mov	r3, r4
1a000a98:	71fb      	strb	r3, [r7, #7]
1a000a9a:	4603      	mov	r3, r0
1a000a9c:	71bb      	strb	r3, [r7, #6]
1a000a9e:	460b      	mov	r3, r1
1a000aa0:	80bb      	strh	r3, [r7, #4]
1a000aa2:	4613      	mov	r3, r2
1a000aa4:	70fb      	strb	r3, [r7, #3]
1a000aa6:	78fb      	ldrb	r3, [r7, #3]
1a000aa8:	b29a      	uxth	r2, r3
1a000aaa:	88bb      	ldrh	r3, [r7, #4]
1a000aac:	4313      	orrs	r3, r2
1a000aae:	b29a      	uxth	r2, r3
1a000ab0:	79b9      	ldrb	r1, [r7, #6]
1a000ab2:	79fb      	ldrb	r3, [r7, #7]
1a000ab4:	4618      	mov	r0, r3
1a000ab6:	f7ff ffcd 	bl	1a000a54 <Chip_SCU_PinMuxSet>
1a000aba:	bf00      	nop
1a000abc:	370c      	adds	r7, #12
1a000abe:	46bd      	mov	sp, r7
1a000ac0:	bd90      	pop	{r4, r7, pc}
1a000ac2:	Address 0x000000001a000ac2 is out of bounds.


1a000ac4 <Chip_SCU_GPIOIntPinSel>:
1a000ac4:	b480      	push	{r7}
1a000ac6:	b085      	sub	sp, #20
1a000ac8:	af00      	add	r7, sp, #0
1a000aca:	4603      	mov	r3, r0
1a000acc:	71fb      	strb	r3, [r7, #7]
1a000ace:	460b      	mov	r3, r1
1a000ad0:	71bb      	strb	r3, [r7, #6]
1a000ad2:	4613      	mov	r3, r2
1a000ad4:	717b      	strb	r3, [r7, #5]
1a000ad6:	79fb      	ldrb	r3, [r7, #7]
1a000ad8:	00db      	lsls	r3, r3, #3
1a000ada:	f003 0318 	and.w	r3, r3, #24
1a000ade:	60fb      	str	r3, [r7, #12]
1a000ae0:	79bb      	ldrb	r3, [r7, #6]
1a000ae2:	015b      	lsls	r3, r3, #5
1a000ae4:	b2da      	uxtb	r2, r3
1a000ae6:	797b      	ldrb	r3, [r7, #5]
1a000ae8:	f003 031f 	and.w	r3, r3, #31
1a000aec:	431a      	orrs	r2, r3
1a000aee:	68fb      	ldr	r3, [r7, #12]
1a000af0:	fa02 f303 	lsl.w	r3, r2, r3
1a000af4:	60bb      	str	r3, [r7, #8]
1a000af6:	4a0f      	ldr	r2, [pc, #60]	; (1a000b34 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000af8:	79fb      	ldrb	r3, [r7, #7]
1a000afa:	089b      	lsrs	r3, r3, #2
1a000afc:	b2db      	uxtb	r3, r3
1a000afe:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000b02:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a000b06:	21ff      	movs	r1, #255	; 0xff
1a000b08:	68fa      	ldr	r2, [r7, #12]
1a000b0a:	fa01 f202 	lsl.w	r2, r1, r2
1a000b0e:	43d2      	mvns	r2, r2
1a000b10:	401a      	ands	r2, r3
1a000b12:	4908      	ldr	r1, [pc, #32]	; (1a000b34 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000b14:	79fb      	ldrb	r3, [r7, #7]
1a000b16:	089b      	lsrs	r3, r3, #2
1a000b18:	b2db      	uxtb	r3, r3
1a000b1a:	4618      	mov	r0, r3
1a000b1c:	68bb      	ldr	r3, [r7, #8]
1a000b1e:	431a      	orrs	r2, r3
1a000b20:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000b24:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a000b28:	bf00      	nop
1a000b2a:	3714      	adds	r7, #20
1a000b2c:	46bd      	mov	sp, r7
1a000b2e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b32:	4770      	bx	lr
1a000b34:	40086000 	.word	0x40086000

1a000b38 <Chip_GPIO_SetPinDIROutput>:
1a000b38:	b480      	push	{r7}
1a000b3a:	b083      	sub	sp, #12
1a000b3c:	af00      	add	r7, sp, #0
1a000b3e:	6078      	str	r0, [r7, #4]
1a000b40:	460b      	mov	r3, r1
1a000b42:	70fb      	strb	r3, [r7, #3]
1a000b44:	4613      	mov	r3, r2
1a000b46:	70bb      	strb	r3, [r7, #2]
1a000b48:	78fa      	ldrb	r2, [r7, #3]
1a000b4a:	687b      	ldr	r3, [r7, #4]
1a000b4c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000b50:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000b54:	78bb      	ldrb	r3, [r7, #2]
1a000b56:	2201      	movs	r2, #1
1a000b58:	fa02 f303 	lsl.w	r3, r2, r3
1a000b5c:	78fa      	ldrb	r2, [r7, #3]
1a000b5e:	4319      	orrs	r1, r3
1a000b60:	687b      	ldr	r3, [r7, #4]
1a000b62:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000b66:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000b6a:	bf00      	nop
1a000b6c:	370c      	adds	r7, #12
1a000b6e:	46bd      	mov	sp, r7
1a000b70:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b74:	4770      	bx	lr

1a000b76 <Chip_GPIO_SetPinDIRInput>:
1a000b76:	b480      	push	{r7}
1a000b78:	b083      	sub	sp, #12
1a000b7a:	af00      	add	r7, sp, #0
1a000b7c:	6078      	str	r0, [r7, #4]
1a000b7e:	460b      	mov	r3, r1
1a000b80:	70fb      	strb	r3, [r7, #3]
1a000b82:	4613      	mov	r3, r2
1a000b84:	70bb      	strb	r3, [r7, #2]
1a000b86:	78fa      	ldrb	r2, [r7, #3]
1a000b88:	687b      	ldr	r3, [r7, #4]
1a000b8a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000b8e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000b92:	78bb      	ldrb	r3, [r7, #2]
1a000b94:	2201      	movs	r2, #1
1a000b96:	fa02 f303 	lsl.w	r3, r2, r3
1a000b9a:	43db      	mvns	r3, r3
1a000b9c:	78fa      	ldrb	r2, [r7, #3]
1a000b9e:	4019      	ands	r1, r3
1a000ba0:	687b      	ldr	r3, [r7, #4]
1a000ba2:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000ba6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000baa:	bf00      	nop
1a000bac:	370c      	adds	r7, #12
1a000bae:	46bd      	mov	sp, r7
1a000bb0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bb4:	4770      	bx	lr

1a000bb6 <Chip_GPIO_SetPortOutLow>:
1a000bb6:	b480      	push	{r7}
1a000bb8:	b085      	sub	sp, #20
1a000bba:	af00      	add	r7, sp, #0
1a000bbc:	60f8      	str	r0, [r7, #12]
1a000bbe:	460b      	mov	r3, r1
1a000bc0:	607a      	str	r2, [r7, #4]
1a000bc2:	72fb      	strb	r3, [r7, #11]
1a000bc4:	7afa      	ldrb	r2, [r7, #11]
1a000bc6:	68fb      	ldr	r3, [r7, #12]
1a000bc8:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000bcc:	6879      	ldr	r1, [r7, #4]
1a000bce:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000bd2:	bf00      	nop
1a000bd4:	3714      	adds	r7, #20
1a000bd6:	46bd      	mov	sp, r7
1a000bd8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bdc:	4770      	bx	lr

1a000bde <Chip_PININT_Init>:
1a000bde:	b480      	push	{r7}
1a000be0:	b083      	sub	sp, #12
1a000be2:	af00      	add	r7, sp, #0
1a000be4:	6078      	str	r0, [r7, #4]
1a000be6:	bf00      	nop
1a000be8:	370c      	adds	r7, #12
1a000bea:	46bd      	mov	sp, r7
1a000bec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bf0:	4770      	bx	lr

1a000bf2 <Chip_PININT_SetPinModeEdge>:
1a000bf2:	b480      	push	{r7}
1a000bf4:	b083      	sub	sp, #12
1a000bf6:	af00      	add	r7, sp, #0
1a000bf8:	6078      	str	r0, [r7, #4]
1a000bfa:	6039      	str	r1, [r7, #0]
1a000bfc:	687b      	ldr	r3, [r7, #4]
1a000bfe:	681a      	ldr	r2, [r3, #0]
1a000c00:	683b      	ldr	r3, [r7, #0]
1a000c02:	43db      	mvns	r3, r3
1a000c04:	401a      	ands	r2, r3
1a000c06:	687b      	ldr	r3, [r7, #4]
1a000c08:	601a      	str	r2, [r3, #0]
1a000c0a:	bf00      	nop
1a000c0c:	370c      	adds	r7, #12
1a000c0e:	46bd      	mov	sp, r7
1a000c10:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c14:	4770      	bx	lr

1a000c16 <Chip_PININT_EnableIntLow>:
1a000c16:	b480      	push	{r7}
1a000c18:	b083      	sub	sp, #12
1a000c1a:	af00      	add	r7, sp, #0
1a000c1c:	6078      	str	r0, [r7, #4]
1a000c1e:	6039      	str	r1, [r7, #0]
1a000c20:	687b      	ldr	r3, [r7, #4]
1a000c22:	683a      	ldr	r2, [r7, #0]
1a000c24:	615a      	str	r2, [r3, #20]
1a000c26:	bf00      	nop
1a000c28:	370c      	adds	r7, #12
1a000c2a:	46bd      	mov	sp, r7
1a000c2c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c30:	4770      	bx	lr

1a000c32 <Chip_PININT_ClearIntStatus>:
1a000c32:	b480      	push	{r7}
1a000c34:	b083      	sub	sp, #12
1a000c36:	af00      	add	r7, sp, #0
1a000c38:	6078      	str	r0, [r7, #4]
1a000c3a:	6039      	str	r1, [r7, #0]
1a000c3c:	687b      	ldr	r3, [r7, #4]
1a000c3e:	683a      	ldr	r2, [r7, #0]
1a000c40:	625a      	str	r2, [r3, #36]	; 0x24
1a000c42:	bf00      	nop
1a000c44:	370c      	adds	r7, #12
1a000c46:	46bd      	mov	sp, r7
1a000c48:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c4c:	4770      	bx	lr

1a000c4e <Chip_UART_TXEnable>:
1a000c4e:	b480      	push	{r7}
1a000c50:	b083      	sub	sp, #12
1a000c52:	af00      	add	r7, sp, #0
1a000c54:	6078      	str	r0, [r7, #4]
1a000c56:	687b      	ldr	r3, [r7, #4]
1a000c58:	2201      	movs	r2, #1
1a000c5a:	65da      	str	r2, [r3, #92]	; 0x5c
1a000c5c:	bf00      	nop
1a000c5e:	370c      	adds	r7, #12
1a000c60:	46bd      	mov	sp, r7
1a000c62:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c66:	4770      	bx	lr

1a000c68 <Chip_UART_IntEnable>:
1a000c68:	b480      	push	{r7}
1a000c6a:	b083      	sub	sp, #12
1a000c6c:	af00      	add	r7, sp, #0
1a000c6e:	6078      	str	r0, [r7, #4]
1a000c70:	6039      	str	r1, [r7, #0]
1a000c72:	687b      	ldr	r3, [r7, #4]
1a000c74:	685a      	ldr	r2, [r3, #4]
1a000c76:	683b      	ldr	r3, [r7, #0]
1a000c78:	431a      	orrs	r2, r3
1a000c7a:	687b      	ldr	r3, [r7, #4]
1a000c7c:	605a      	str	r2, [r3, #4]
1a000c7e:	bf00      	nop
1a000c80:	370c      	adds	r7, #12
1a000c82:	46bd      	mov	sp, r7
1a000c84:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c88:	4770      	bx	lr

1a000c8a <Chip_UART_SetupFIFOS>:
1a000c8a:	b480      	push	{r7}
1a000c8c:	b083      	sub	sp, #12
1a000c8e:	af00      	add	r7, sp, #0
1a000c90:	6078      	str	r0, [r7, #4]
1a000c92:	6039      	str	r1, [r7, #0]
1a000c94:	687b      	ldr	r3, [r7, #4]
1a000c96:	683a      	ldr	r2, [r7, #0]
1a000c98:	609a      	str	r2, [r3, #8]
1a000c9a:	bf00      	nop
1a000c9c:	370c      	adds	r7, #12
1a000c9e:	46bd      	mov	sp, r7
1a000ca0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ca4:	4770      	bx	lr

1a000ca6 <Chip_UART_ConfigData>:
1a000ca6:	b480      	push	{r7}
1a000ca8:	b083      	sub	sp, #12
1a000caa:	af00      	add	r7, sp, #0
1a000cac:	6078      	str	r0, [r7, #4]
1a000cae:	6039      	str	r1, [r7, #0]
1a000cb0:	687b      	ldr	r3, [r7, #4]
1a000cb2:	683a      	ldr	r2, [r7, #0]
1a000cb4:	60da      	str	r2, [r3, #12]
1a000cb6:	bf00      	nop
1a000cb8:	370c      	adds	r7, #12
1a000cba:	46bd      	mov	sp, r7
1a000cbc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cc0:	4770      	bx	lr

1a000cc2 <inicializar_sistema>:
1a000cc2:	b580      	push	{r7, lr}
1a000cc4:	af00      	add	r7, sp, #0
1a000cc6:	f000 fa9b 	bl	1a001200 <Chip_SetupXtalClocking>
1a000cca:	f001 fb8b 	bl	1a0023e4 <SystemCoreClockUpdate>
1a000cce:	f000 faa3 	bl	1a001218 <fpuInit>
1a000cd2:	bf00      	nop
1a000cd4:	bd80      	pop	{r7, pc}
1a000cd6:	Address 0x000000001a000cd6 is out of bounds.


1a000cd8 <inicializar_leds>:
1a000cd8:	b590      	push	{r4, r7, lr}
1a000cda:	b083      	sub	sp, #12
1a000cdc:	af00      	add	r7, sp, #0
1a000cde:	482e      	ldr	r0, [pc, #184]	; (1a000d98 <inicializar_leds+0xc0>)
1a000ce0:	f001 fb8c 	bl	1a0023fc <Chip_GPIO_Init>
1a000ce4:	2300      	movs	r3, #0
1a000ce6:	71fb      	strb	r3, [r7, #7]
1a000ce8:	e04e      	b.n	1a000d88 <inicializar_leds+0xb0>
1a000cea:	79fa      	ldrb	r2, [r7, #7]
1a000cec:	492b      	ldr	r1, [pc, #172]	; (1a000d9c <inicializar_leds+0xc4>)
1a000cee:	4613      	mov	r3, r2
1a000cf0:	005b      	lsls	r3, r3, #1
1a000cf2:	4413      	add	r3, r2
1a000cf4:	005b      	lsls	r3, r3, #1
1a000cf6:	440b      	add	r3, r1
1a000cf8:	7818      	ldrb	r0, [r3, #0]
1a000cfa:	79fa      	ldrb	r2, [r7, #7]
1a000cfc:	4927      	ldr	r1, [pc, #156]	; (1a000d9c <inicializar_leds+0xc4>)
1a000cfe:	4613      	mov	r3, r2
1a000d00:	005b      	lsls	r3, r3, #1
1a000d02:	4413      	add	r3, r2
1a000d04:	005b      	lsls	r3, r3, #1
1a000d06:	440b      	add	r3, r1
1a000d08:	3301      	adds	r3, #1
1a000d0a:	781c      	ldrb	r4, [r3, #0]
1a000d0c:	79fa      	ldrb	r2, [r7, #7]
1a000d0e:	4923      	ldr	r1, [pc, #140]	; (1a000d9c <inicializar_leds+0xc4>)
1a000d10:	4613      	mov	r3, r2
1a000d12:	005b      	lsls	r3, r3, #1
1a000d14:	4413      	add	r3, r2
1a000d16:	005b      	lsls	r3, r3, #1
1a000d18:	440b      	add	r3, r1
1a000d1a:	3304      	adds	r3, #4
1a000d1c:	881b      	ldrh	r3, [r3, #0]
1a000d1e:	461a      	mov	r2, r3
1a000d20:	4621      	mov	r1, r4
1a000d22:	f7ff fe97 	bl	1a000a54 <Chip_SCU_PinMuxSet>
1a000d26:	79fa      	ldrb	r2, [r7, #7]
1a000d28:	491c      	ldr	r1, [pc, #112]	; (1a000d9c <inicializar_leds+0xc4>)
1a000d2a:	4613      	mov	r3, r2
1a000d2c:	005b      	lsls	r3, r3, #1
1a000d2e:	4413      	add	r3, r2
1a000d30:	005b      	lsls	r3, r3, #1
1a000d32:	440b      	add	r3, r1
1a000d34:	3302      	adds	r3, #2
1a000d36:	7818      	ldrb	r0, [r3, #0]
1a000d38:	79fa      	ldrb	r2, [r7, #7]
1a000d3a:	4918      	ldr	r1, [pc, #96]	; (1a000d9c <inicializar_leds+0xc4>)
1a000d3c:	4613      	mov	r3, r2
1a000d3e:	005b      	lsls	r3, r3, #1
1a000d40:	4413      	add	r3, r2
1a000d42:	005b      	lsls	r3, r3, #1
1a000d44:	440b      	add	r3, r1
1a000d46:	3303      	adds	r3, #3
1a000d48:	781b      	ldrb	r3, [r3, #0]
1a000d4a:	461a      	mov	r2, r3
1a000d4c:	4601      	mov	r1, r0
1a000d4e:	4812      	ldr	r0, [pc, #72]	; (1a000d98 <inicializar_leds+0xc0>)
1a000d50:	f7ff fef2 	bl	1a000b38 <Chip_GPIO_SetPinDIROutput>
1a000d54:	79fa      	ldrb	r2, [r7, #7]
1a000d56:	4911      	ldr	r1, [pc, #68]	; (1a000d9c <inicializar_leds+0xc4>)
1a000d58:	4613      	mov	r3, r2
1a000d5a:	005b      	lsls	r3, r3, #1
1a000d5c:	4413      	add	r3, r2
1a000d5e:	005b      	lsls	r3, r3, #1
1a000d60:	440b      	add	r3, r1
1a000d62:	3302      	adds	r3, #2
1a000d64:	7818      	ldrb	r0, [r3, #0]
1a000d66:	79fa      	ldrb	r2, [r7, #7]
1a000d68:	490c      	ldr	r1, [pc, #48]	; (1a000d9c <inicializar_leds+0xc4>)
1a000d6a:	4613      	mov	r3, r2
1a000d6c:	005b      	lsls	r3, r3, #1
1a000d6e:	4413      	add	r3, r2
1a000d70:	005b      	lsls	r3, r3, #1
1a000d72:	440b      	add	r3, r1
1a000d74:	3303      	adds	r3, #3
1a000d76:	781b      	ldrb	r3, [r3, #0]
1a000d78:	461a      	mov	r2, r3
1a000d7a:	4601      	mov	r1, r0
1a000d7c:	4806      	ldr	r0, [pc, #24]	; (1a000d98 <inicializar_leds+0xc0>)
1a000d7e:	f7ff ff1a 	bl	1a000bb6 <Chip_GPIO_SetPortOutLow>
1a000d82:	79fb      	ldrb	r3, [r7, #7]
1a000d84:	3301      	adds	r3, #1
1a000d86:	71fb      	strb	r3, [r7, #7]
1a000d88:	79fb      	ldrb	r3, [r7, #7]
1a000d8a:	2b07      	cmp	r3, #7
1a000d8c:	d9ad      	bls.n	1a000cea <inicializar_leds+0x12>
1a000d8e:	bf00      	nop
1a000d90:	370c      	adds	r7, #12
1a000d92:	46bd      	mov	sp, r7
1a000d94:	bd90      	pop	{r4, r7, pc}
1a000d96:	bf00      	nop
1a000d98:	400f4000 	.word	0x400f4000
1a000d9c:	1a00278c 	.word	0x1a00278c

1a000da0 <inicializar_teclado>:
1a000da0:	b590      	push	{r4, r7, lr}
1a000da2:	b083      	sub	sp, #12
1a000da4:	af00      	add	r7, sp, #0
1a000da6:	2300      	movs	r3, #0
1a000da8:	71fb      	strb	r3, [r7, #7]
1a000daa:	e037      	b.n	1a000e1c <inicializar_teclado+0x7c>
1a000dac:	79fa      	ldrb	r2, [r7, #7]
1a000dae:	491f      	ldr	r1, [pc, #124]	; (1a000e2c <inicializar_teclado+0x8c>)
1a000db0:	4613      	mov	r3, r2
1a000db2:	005b      	lsls	r3, r3, #1
1a000db4:	4413      	add	r3, r2
1a000db6:	005b      	lsls	r3, r3, #1
1a000db8:	440b      	add	r3, r1
1a000dba:	7818      	ldrb	r0, [r3, #0]
1a000dbc:	79fa      	ldrb	r2, [r7, #7]
1a000dbe:	491b      	ldr	r1, [pc, #108]	; (1a000e2c <inicializar_teclado+0x8c>)
1a000dc0:	4613      	mov	r3, r2
1a000dc2:	005b      	lsls	r3, r3, #1
1a000dc4:	4413      	add	r3, r2
1a000dc6:	005b      	lsls	r3, r3, #1
1a000dc8:	440b      	add	r3, r1
1a000dca:	3301      	adds	r3, #1
1a000dcc:	781c      	ldrb	r4, [r3, #0]
1a000dce:	79fa      	ldrb	r2, [r7, #7]
1a000dd0:	4916      	ldr	r1, [pc, #88]	; (1a000e2c <inicializar_teclado+0x8c>)
1a000dd2:	4613      	mov	r3, r2
1a000dd4:	005b      	lsls	r3, r3, #1
1a000dd6:	4413      	add	r3, r2
1a000dd8:	005b      	lsls	r3, r3, #1
1a000dda:	440b      	add	r3, r1
1a000ddc:	3304      	adds	r3, #4
1a000dde:	881b      	ldrh	r3, [r3, #0]
1a000de0:	461a      	mov	r2, r3
1a000de2:	4621      	mov	r1, r4
1a000de4:	f7ff fe36 	bl	1a000a54 <Chip_SCU_PinMuxSet>
1a000de8:	79fa      	ldrb	r2, [r7, #7]
1a000dea:	4910      	ldr	r1, [pc, #64]	; (1a000e2c <inicializar_teclado+0x8c>)
1a000dec:	4613      	mov	r3, r2
1a000dee:	005b      	lsls	r3, r3, #1
1a000df0:	4413      	add	r3, r2
1a000df2:	005b      	lsls	r3, r3, #1
1a000df4:	440b      	add	r3, r1
1a000df6:	3302      	adds	r3, #2
1a000df8:	7818      	ldrb	r0, [r3, #0]
1a000dfa:	79fa      	ldrb	r2, [r7, #7]
1a000dfc:	490b      	ldr	r1, [pc, #44]	; (1a000e2c <inicializar_teclado+0x8c>)
1a000dfe:	4613      	mov	r3, r2
1a000e00:	005b      	lsls	r3, r3, #1
1a000e02:	4413      	add	r3, r2
1a000e04:	005b      	lsls	r3, r3, #1
1a000e06:	440b      	add	r3, r1
1a000e08:	3303      	adds	r3, #3
1a000e0a:	781b      	ldrb	r3, [r3, #0]
1a000e0c:	461a      	mov	r2, r3
1a000e0e:	4601      	mov	r1, r0
1a000e10:	4807      	ldr	r0, [pc, #28]	; (1a000e30 <inicializar_teclado+0x90>)
1a000e12:	f7ff feb0 	bl	1a000b76 <Chip_GPIO_SetPinDIRInput>
1a000e16:	79fb      	ldrb	r3, [r7, #7]
1a000e18:	3301      	adds	r3, #1
1a000e1a:	71fb      	strb	r3, [r7, #7]
1a000e1c:	79fb      	ldrb	r3, [r7, #7]
1a000e1e:	2b03      	cmp	r3, #3
1a000e20:	d9c4      	bls.n	1a000dac <inicializar_teclado+0xc>
1a000e22:	bf00      	nop
1a000e24:	370c      	adds	r7, #12
1a000e26:	46bd      	mov	sp, r7
1a000e28:	bd90      	pop	{r4, r7, pc}
1a000e2a:	bf00      	nop
1a000e2c:	1a0027bc 	.word	0x1a0027bc
1a000e30:	400f4000 	.word	0x400f4000

1a000e34 <inicializar_USART>:
1a000e34:	b580      	push	{r7, lr}
1a000e36:	af00      	add	r7, sp, #0
1a000e38:	481a      	ldr	r0, [pc, #104]	; (1a000ea4 <inicializar_USART+0x70>)
1a000e3a:	f000 fb67 	bl	1a00150c <Chip_UART_Init>
1a000e3e:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000e42:	4818      	ldr	r0, [pc, #96]	; (1a000ea4 <inicializar_USART+0x70>)
1a000e44:	f000 fbf4 	bl	1a001630 <Chip_UART_SetBaud>
1a000e48:	2103      	movs	r1, #3
1a000e4a:	4816      	ldr	r0, [pc, #88]	; (1a000ea4 <inicializar_USART+0x70>)
1a000e4c:	f7ff ff2b 	bl	1a000ca6 <Chip_UART_ConfigData>
1a000e50:	4814      	ldr	r0, [pc, #80]	; (1a000ea4 <inicializar_USART+0x70>)
1a000e52:	f7ff fefc 	bl	1a000c4e <Chip_UART_TXEnable>
1a000e56:	21c7      	movs	r1, #199	; 0xc7
1a000e58:	4812      	ldr	r0, [pc, #72]	; (1a000ea4 <inicializar_USART+0x70>)
1a000e5a:	f7ff ff16 	bl	1a000c8a <Chip_UART_SetupFIFOS>
1a000e5e:	2107      	movs	r1, #7
1a000e60:	4810      	ldr	r0, [pc, #64]	; (1a000ea4 <inicializar_USART+0x70>)
1a000e62:	f7ff ff01 	bl	1a000c68 <Chip_UART_IntEnable>
1a000e66:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000e6a:	2201      	movs	r2, #1
1a000e6c:	490e      	ldr	r1, [pc, #56]	; (1a000ea8 <inicializar_USART+0x74>)
1a000e6e:	480f      	ldr	r0, [pc, #60]	; (1a000eac <inicializar_USART+0x78>)
1a000e70:	f000 fcfa 	bl	1a001868 <RingBuffer_Init>
1a000e74:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000e78:	2201      	movs	r2, #1
1a000e7a:	490d      	ldr	r1, [pc, #52]	; (1a000eb0 <inicializar_USART+0x7c>)
1a000e7c:	480d      	ldr	r0, [pc, #52]	; (1a000eb4 <inicializar_USART+0x80>)
1a000e7e:	f000 fcf3 	bl	1a001868 <RingBuffer_Init>
1a000e82:	201a      	movs	r0, #26
1a000e84:	f7ff fd66 	bl	1a000954 <NVIC_EnableIRQ>
1a000e88:	2306      	movs	r3, #6
1a000e8a:	2218      	movs	r2, #24
1a000e8c:	2101      	movs	r1, #1
1a000e8e:	2007      	movs	r0, #7
1a000e90:	f7ff fdfa 	bl	1a000a88 <Chip_SCU_PinMux>
1a000e94:	2306      	movs	r3, #6
1a000e96:	22d0      	movs	r2, #208	; 0xd0
1a000e98:	2102      	movs	r1, #2
1a000e9a:	2007      	movs	r0, #7
1a000e9c:	f7ff fdf4 	bl	1a000a88 <Chip_SCU_PinMux>
1a000ea0:	bf00      	nop
1a000ea2:	bd80      	pop	{r7, pc}
1a000ea4:	400c1000 	.word	0x400c1000
1a000ea8:	1000024c 	.word	0x1000024c
1a000eac:	10000238 	.word	0x10000238
1a000eb0:	10000038 	.word	0x10000038
1a000eb4:	10000024 	.word	0x10000024

1a000eb8 <init_interrupciones>:
1a000eb8:	b580      	push	{r7, lr}
1a000eba:	af00      	add	r7, sp, #0
1a000ebc:	4823      	ldr	r0, [pc, #140]	; (1a000f4c <init_interrupciones+0x94>)
1a000ebe:	f7ff fe8e 	bl	1a000bde <Chip_PININT_Init>
1a000ec2:	2204      	movs	r2, #4
1a000ec4:	2100      	movs	r1, #0
1a000ec6:	2001      	movs	r0, #1
1a000ec8:	f7ff fdfc 	bl	1a000ac4 <Chip_SCU_GPIOIntPinSel>
1a000ecc:	2208      	movs	r2, #8
1a000ece:	2100      	movs	r1, #0
1a000ed0:	2002      	movs	r0, #2
1a000ed2:	f7ff fdf7 	bl	1a000ac4 <Chip_SCU_GPIOIntPinSel>
1a000ed6:	2209      	movs	r2, #9
1a000ed8:	2101      	movs	r1, #1
1a000eda:	2004      	movs	r0, #4
1a000edc:	f7ff fdf2 	bl	1a000ac4 <Chip_SCU_GPIOIntPinSel>
1a000ee0:	2102      	movs	r1, #2
1a000ee2:	481a      	ldr	r0, [pc, #104]	; (1a000f4c <init_interrupciones+0x94>)
1a000ee4:	f7ff fea5 	bl	1a000c32 <Chip_PININT_ClearIntStatus>
1a000ee8:	2104      	movs	r1, #4
1a000eea:	4818      	ldr	r0, [pc, #96]	; (1a000f4c <init_interrupciones+0x94>)
1a000eec:	f7ff fea1 	bl	1a000c32 <Chip_PININT_ClearIntStatus>
1a000ef0:	2110      	movs	r1, #16
1a000ef2:	4816      	ldr	r0, [pc, #88]	; (1a000f4c <init_interrupciones+0x94>)
1a000ef4:	f7ff fe9d 	bl	1a000c32 <Chip_PININT_ClearIntStatus>
1a000ef8:	2102      	movs	r1, #2
1a000efa:	4814      	ldr	r0, [pc, #80]	; (1a000f4c <init_interrupciones+0x94>)
1a000efc:	f7ff fe79 	bl	1a000bf2 <Chip_PININT_SetPinModeEdge>
1a000f00:	2104      	movs	r1, #4
1a000f02:	4812      	ldr	r0, [pc, #72]	; (1a000f4c <init_interrupciones+0x94>)
1a000f04:	f7ff fe75 	bl	1a000bf2 <Chip_PININT_SetPinModeEdge>
1a000f08:	2110      	movs	r1, #16
1a000f0a:	4810      	ldr	r0, [pc, #64]	; (1a000f4c <init_interrupciones+0x94>)
1a000f0c:	f7ff fe71 	bl	1a000bf2 <Chip_PININT_SetPinModeEdge>
1a000f10:	2102      	movs	r1, #2
1a000f12:	480e      	ldr	r0, [pc, #56]	; (1a000f4c <init_interrupciones+0x94>)
1a000f14:	f7ff fe7f 	bl	1a000c16 <Chip_PININT_EnableIntLow>
1a000f18:	2104      	movs	r1, #4
1a000f1a:	480c      	ldr	r0, [pc, #48]	; (1a000f4c <init_interrupciones+0x94>)
1a000f1c:	f7ff fe7b 	bl	1a000c16 <Chip_PININT_EnableIntLow>
1a000f20:	2110      	movs	r1, #16
1a000f22:	480a      	ldr	r0, [pc, #40]	; (1a000f4c <init_interrupciones+0x94>)
1a000f24:	f7ff fe77 	bl	1a000c16 <Chip_PININT_EnableIntLow>
1a000f28:	2021      	movs	r0, #33	; 0x21
1a000f2a:	f7ff fd2d 	bl	1a000988 <NVIC_ClearPendingIRQ>
1a000f2e:	2022      	movs	r0, #34	; 0x22
1a000f30:	f7ff fd2a 	bl	1a000988 <NVIC_ClearPendingIRQ>
1a000f34:	2024      	movs	r0, #36	; 0x24
1a000f36:	f7ff fd27 	bl	1a000988 <NVIC_ClearPendingIRQ>
1a000f3a:	2022      	movs	r0, #34	; 0x22
1a000f3c:	f7ff fd0a 	bl	1a000954 <NVIC_EnableIRQ>
1a000f40:	2024      	movs	r0, #36	; 0x24
1a000f42:	f7ff fd07 	bl	1a000954 <NVIC_EnableIRQ>
1a000f46:	bf00      	nop
1a000f48:	bd80      	pop	{r7, pc}
1a000f4a:	bf00      	nop
1a000f4c:	40087000 	.word	0x40087000

1a000f50 <USARTSendInt>:
1a000f50:	b580      	push	{r7, lr}
1a000f52:	b082      	sub	sp, #8
1a000f54:	af00      	add	r7, sp, #0
1a000f56:	4603      	mov	r3, r0
1a000f58:	71fb      	strb	r3, [r7, #7]
1a000f5a:	79fb      	ldrb	r3, [r7, #7]
1a000f5c:	220a      	movs	r2, #10
1a000f5e:	490d      	ldr	r1, [pc, #52]	; (1a000f94 <USARTSendInt+0x44>)
1a000f60:	4618      	mov	r0, r3
1a000f62:	f001 fa71 	bl	1a002448 <itoa>
1a000f66:	480b      	ldr	r0, [pc, #44]	; (1a000f94 <USARTSendInt+0x44>)
1a000f68:	f001 fb0a 	bl	1a002580 <strlen>
1a000f6c:	4603      	mov	r3, r0
1a000f6e:	461a      	mov	r2, r3
1a000f70:	4b08      	ldr	r3, [pc, #32]	; (1a000f94 <USARTSendInt+0x44>)
1a000f72:	4413      	add	r3, r2
1a000f74:	4a08      	ldr	r2, [pc, #32]	; (1a000f98 <USARTSendInt+0x48>)
1a000f76:	8811      	ldrh	r1, [r2, #0]
1a000f78:	7892      	ldrb	r2, [r2, #2]
1a000f7a:	8019      	strh	r1, [r3, #0]
1a000f7c:	709a      	strb	r2, [r3, #2]
1a000f7e:	4b05      	ldr	r3, [pc, #20]	; (1a000f94 <USARTSendInt+0x44>)
1a000f80:	220a      	movs	r2, #10
1a000f82:	4619      	mov	r1, r3
1a000f84:	4805      	ldr	r0, [pc, #20]	; (1a000f9c <USARTSendInt+0x4c>)
1a000f86:	f000 fb2d 	bl	1a0015e4 <Chip_UART_SendBlocking>
1a000f8a:	bf00      	nop
1a000f8c:	3708      	adds	r7, #8
1a000f8e:	46bd      	mov	sp, r7
1a000f90:	bd80      	pop	{r7, pc}
1a000f92:	bf00      	nop
1a000f94:	10000008 	.word	0x10000008
1a000f98:	1a0027d4 	.word	0x1a0027d4
1a000f9c:	400c1000 	.word	0x400c1000

1a000fa0 <configurar_SysTick>:
1a000fa0:	b580      	push	{r7, lr}
1a000fa2:	af00      	add	r7, sp, #0
1a000fa4:	4b05      	ldr	r3, [pc, #20]	; (1a000fbc <configurar_SysTick+0x1c>)
1a000fa6:	681b      	ldr	r3, [r3, #0]
1a000fa8:	4a05      	ldr	r2, [pc, #20]	; (1a000fc0 <configurar_SysTick+0x20>)
1a000faa:	fba2 2303 	umull	r2, r3, r2, r3
1a000fae:	091b      	lsrs	r3, r3, #4
1a000fb0:	4618      	mov	r0, r3
1a000fb2:	f7ff fd2d 	bl	1a000a10 <SysTick_Config>
1a000fb6:	bf00      	nop
1a000fb8:	bd80      	pop	{r7, pc}
1a000fba:	bf00      	nop
1a000fbc:	100004b0 	.word	0x100004b0
1a000fc0:	51eb851f 	.word	0x51eb851f

1a000fc4 <disable_SysTick>:
1a000fc4:	b480      	push	{r7}
1a000fc6:	af00      	add	r7, sp, #0
1a000fc8:	4b03      	ldr	r3, [pc, #12]	; (1a000fd8 <disable_SysTick+0x14>)
1a000fca:	2205      	movs	r2, #5
1a000fcc:	601a      	str	r2, [r3, #0]
1a000fce:	bf00      	nop
1a000fd0:	46bd      	mov	sp, r7
1a000fd2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fd6:	4770      	bx	lr
1a000fd8:	e000e010 	.word	0xe000e010

1a000fdc <Chip_TIMER_ReadCount>:
1a000fdc:	b480      	push	{r7}
1a000fde:	b083      	sub	sp, #12
1a000fe0:	af00      	add	r7, sp, #0
1a000fe2:	6078      	str	r0, [r7, #4]
1a000fe4:	687b      	ldr	r3, [r7, #4]
1a000fe6:	689b      	ldr	r3, [r3, #8]
1a000fe8:	4618      	mov	r0, r3
1a000fea:	370c      	adds	r7, #12
1a000fec:	46bd      	mov	sp, r7
1a000fee:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ff2:	4770      	bx	lr

1a000ff4 <StopWatch_Start>:
1a000ff4:	b580      	push	{r7, lr}
1a000ff6:	af00      	add	r7, sp, #0
1a000ff8:	4802      	ldr	r0, [pc, #8]	; (1a001004 <StopWatch_Start+0x10>)
1a000ffa:	f7ff ffef 	bl	1a000fdc <Chip_TIMER_ReadCount>
1a000ffe:	4603      	mov	r3, r0
1a001000:	4618      	mov	r0, r3
1a001002:	bd80      	pop	{r7, pc}
1a001004:	40084000 	.word	0x40084000

1a001008 <StopWatch_MsToTicks>:
1a001008:	b480      	push	{r7}
1a00100a:	b083      	sub	sp, #12
1a00100c:	af00      	add	r7, sp, #0
1a00100e:	6078      	str	r0, [r7, #4]
1a001010:	4b05      	ldr	r3, [pc, #20]	; (1a001028 <StopWatch_MsToTicks+0x20>)
1a001012:	681b      	ldr	r3, [r3, #0]
1a001014:	687a      	ldr	r2, [r7, #4]
1a001016:	fb02 f303 	mul.w	r3, r2, r3
1a00101a:	4618      	mov	r0, r3
1a00101c:	370c      	adds	r7, #12
1a00101e:	46bd      	mov	sp, r7
1a001020:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001024:	4770      	bx	lr
1a001026:	bf00      	nop
1a001028:	10000014 	.word	0x10000014

1a00102c <Chip_Clock_DisableMainPLL>:
1a00102c:	b480      	push	{r7}
1a00102e:	af00      	add	r7, sp, #0
1a001030:	4b05      	ldr	r3, [pc, #20]	; (1a001048 <Chip_Clock_DisableMainPLL+0x1c>)
1a001032:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001034:	4a04      	ldr	r2, [pc, #16]	; (1a001048 <Chip_Clock_DisableMainPLL+0x1c>)
1a001036:	f043 0301 	orr.w	r3, r3, #1
1a00103a:	6453      	str	r3, [r2, #68]	; 0x44
1a00103c:	bf00      	nop
1a00103e:	46bd      	mov	sp, r7
1a001040:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001044:	4770      	bx	lr
1a001046:	bf00      	nop
1a001048:	40050000 	.word	0x40050000

1a00104c <Chip_Clock_SetupMainPLL>:
1a00104c:	b480      	push	{r7}
1a00104e:	b083      	sub	sp, #12
1a001050:	af00      	add	r7, sp, #0
1a001052:	6078      	str	r0, [r7, #4]
1a001054:	687b      	ldr	r3, [r7, #4]
1a001056:	681b      	ldr	r3, [r3, #0]
1a001058:	461a      	mov	r2, r3
1a00105a:	687b      	ldr	r3, [r7, #4]
1a00105c:	791b      	ldrb	r3, [r3, #4]
1a00105e:	061b      	lsls	r3, r3, #24
1a001060:	4313      	orrs	r3, r2
1a001062:	687a      	ldr	r2, [r7, #4]
1a001064:	6912      	ldr	r2, [r2, #16]
1a001066:	0412      	lsls	r2, r2, #16
1a001068:	4313      	orrs	r3, r2
1a00106a:	687a      	ldr	r2, [r7, #4]
1a00106c:	6892      	ldr	r2, [r2, #8]
1a00106e:	0312      	lsls	r2, r2, #12
1a001070:	4313      	orrs	r3, r2
1a001072:	687a      	ldr	r2, [r7, #4]
1a001074:	68d2      	ldr	r2, [r2, #12]
1a001076:	0212      	lsls	r2, r2, #8
1a001078:	4313      	orrs	r3, r2
1a00107a:	4a05      	ldr	r2, [pc, #20]	; (1a001090 <Chip_Clock_SetupMainPLL+0x44>)
1a00107c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001080:	6453      	str	r3, [r2, #68]	; 0x44
1a001082:	bf00      	nop
1a001084:	370c      	adds	r7, #12
1a001086:	46bd      	mov	sp, r7
1a001088:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00108c:	4770      	bx	lr
1a00108e:	bf00      	nop
1a001090:	40050000 	.word	0x40050000

1a001094 <Chip_Clock_MainPLLLocked>:
1a001094:	b480      	push	{r7}
1a001096:	af00      	add	r7, sp, #0
1a001098:	4b06      	ldr	r3, [pc, #24]	; (1a0010b4 <Chip_Clock_MainPLLLocked+0x20>)
1a00109a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00109c:	f003 0301 	and.w	r3, r3, #1
1a0010a0:	2b00      	cmp	r3, #0
1a0010a2:	bf14      	ite	ne
1a0010a4:	2301      	movne	r3, #1
1a0010a6:	2300      	moveq	r3, #0
1a0010a8:	b2db      	uxtb	r3, r3
1a0010aa:	4618      	mov	r0, r3
1a0010ac:	46bd      	mov	sp, r7
1a0010ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010b2:	4770      	bx	lr
1a0010b4:	40050000 	.word	0x40050000

1a0010b8 <Chip_SetupCoreClock>:
1a0010b8:	b590      	push	{r4, r7, lr}
1a0010ba:	b08f      	sub	sp, #60	; 0x3c
1a0010bc:	af00      	add	r7, sp, #0
1a0010be:	4603      	mov	r3, r0
1a0010c0:	6039      	str	r1, [r7, #0]
1a0010c2:	71fb      	strb	r3, [r7, #7]
1a0010c4:	4613      	mov	r3, r2
1a0010c6:	71bb      	strb	r3, [r7, #6]
1a0010c8:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a0010cc:	62bb      	str	r3, [r7, #40]	; 0x28
1a0010ce:	2300      	movs	r3, #0
1a0010d0:	633b      	str	r3, [r7, #48]	; 0x30
1a0010d2:	2300      	movs	r3, #0
1a0010d4:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0010d6:	79fb      	ldrb	r3, [r7, #7]
1a0010d8:	2b06      	cmp	r3, #6
1a0010da:	d101      	bne.n	1a0010e0 <Chip_SetupCoreClock+0x28>
1a0010dc:	f000 fe9a 	bl	1a001e14 <Chip_Clock_EnableCrystal>
1a0010e0:	79f9      	ldrb	r1, [r7, #7]
1a0010e2:	2300      	movs	r3, #0
1a0010e4:	2201      	movs	r2, #1
1a0010e6:	2004      	movs	r0, #4
1a0010e8:	f001 f886 	bl	1a0021f8 <Chip_Clock_SetBaseClock>
1a0010ec:	f7ff ff9e 	bl	1a00102c <Chip_Clock_DisableMainPLL>
1a0010f0:	79fb      	ldrb	r3, [r7, #7]
1a0010f2:	733b      	strb	r3, [r7, #12]
1a0010f4:	f107 0308 	add.w	r3, r7, #8
1a0010f8:	4619      	mov	r1, r3
1a0010fa:	6838      	ldr	r0, [r7, #0]
1a0010fc:	f000 fec2 	bl	1a001e84 <Chip_Clock_CalcMainPLLValue>
1a001100:	683b      	ldr	r3, [r7, #0]
1a001102:	4a3d      	ldr	r2, [pc, #244]	; (1a0011f8 <Chip_SetupCoreClock+0x140>)
1a001104:	4293      	cmp	r3, r2
1a001106:	d916      	bls.n	1a001136 <Chip_SetupCoreClock+0x7e>
1a001108:	68bb      	ldr	r3, [r7, #8]
1a00110a:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a00110e:	2b00      	cmp	r3, #0
1a001110:	d000      	beq.n	1a001114 <Chip_SetupCoreClock+0x5c>
1a001112:	e7fe      	b.n	1a001112 <Chip_SetupCoreClock+0x5a>
1a001114:	68bb      	ldr	r3, [r7, #8]
1a001116:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00111a:	2b00      	cmp	r3, #0
1a00111c:	d006      	beq.n	1a00112c <Chip_SetupCoreClock+0x74>
1a00111e:	2301      	movs	r3, #1
1a001120:	633b      	str	r3, [r7, #48]	; 0x30
1a001122:	68bb      	ldr	r3, [r7, #8]
1a001124:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a001128:	60bb      	str	r3, [r7, #8]
1a00112a:	e004      	b.n	1a001136 <Chip_SetupCoreClock+0x7e>
1a00112c:	2301      	movs	r3, #1
1a00112e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001130:	697b      	ldr	r3, [r7, #20]
1a001132:	3301      	adds	r3, #1
1a001134:	617b      	str	r3, [r7, #20]
1a001136:	f107 0308 	add.w	r3, r7, #8
1a00113a:	4618      	mov	r0, r3
1a00113c:	f7ff ff86 	bl	1a00104c <Chip_Clock_SetupMainPLL>
1a001140:	bf00      	nop
1a001142:	f7ff ffa7 	bl	1a001094 <Chip_Clock_MainPLLLocked>
1a001146:	4603      	mov	r3, r0
1a001148:	2b00      	cmp	r3, #0
1a00114a:	d0fa      	beq.n	1a001142 <Chip_SetupCoreClock+0x8a>
1a00114c:	2300      	movs	r3, #0
1a00114e:	2201      	movs	r2, #1
1a001150:	2109      	movs	r1, #9
1a001152:	2004      	movs	r0, #4
1a001154:	f001 f850 	bl	1a0021f8 <Chip_Clock_SetBaseClock>
1a001158:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a00115a:	2b00      	cmp	r3, #0
1a00115c:	d012      	beq.n	1a001184 <Chip_SetupCoreClock+0xcc>
1a00115e:	f641 3358 	movw	r3, #7000	; 0x1b58
1a001162:	62bb      	str	r3, [r7, #40]	; 0x28
1a001164:	bf00      	nop
1a001166:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001168:	1e5a      	subs	r2, r3, #1
1a00116a:	62ba      	str	r2, [r7, #40]	; 0x28
1a00116c:	2b00      	cmp	r3, #0
1a00116e:	d1fa      	bne.n	1a001166 <Chip_SetupCoreClock+0xae>
1a001170:	68bb      	ldr	r3, [r7, #8]
1a001172:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001176:	60bb      	str	r3, [r7, #8]
1a001178:	f107 0308 	add.w	r3, r7, #8
1a00117c:	4618      	mov	r0, r3
1a00117e:	f7ff ff65 	bl	1a00104c <Chip_Clock_SetupMainPLL>
1a001182:	e013      	b.n	1a0011ac <Chip_SetupCoreClock+0xf4>
1a001184:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001186:	2b00      	cmp	r3, #0
1a001188:	d010      	beq.n	1a0011ac <Chip_SetupCoreClock+0xf4>
1a00118a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00118e:	62bb      	str	r3, [r7, #40]	; 0x28
1a001190:	bf00      	nop
1a001192:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001194:	1e5a      	subs	r2, r3, #1
1a001196:	62ba      	str	r2, [r7, #40]	; 0x28
1a001198:	2b00      	cmp	r3, #0
1a00119a:	d1fa      	bne.n	1a001192 <Chip_SetupCoreClock+0xda>
1a00119c:	697b      	ldr	r3, [r7, #20]
1a00119e:	3b01      	subs	r3, #1
1a0011a0:	617b      	str	r3, [r7, #20]
1a0011a2:	f107 0308 	add.w	r3, r7, #8
1a0011a6:	4618      	mov	r0, r3
1a0011a8:	f7ff ff50 	bl	1a00104c <Chip_Clock_SetupMainPLL>
1a0011ac:	79bb      	ldrb	r3, [r7, #6]
1a0011ae:	2b00      	cmp	r3, #0
1a0011b0:	d01e      	beq.n	1a0011f0 <Chip_SetupCoreClock+0x138>
1a0011b2:	2300      	movs	r3, #0
1a0011b4:	637b      	str	r3, [r7, #52]	; 0x34
1a0011b6:	e018      	b.n	1a0011ea <Chip_SetupCoreClock+0x132>
1a0011b8:	4a10      	ldr	r2, [pc, #64]	; (1a0011fc <Chip_SetupCoreClock+0x144>)
1a0011ba:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0011bc:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a0011c0:	4a0e      	ldr	r2, [pc, #56]	; (1a0011fc <Chip_SetupCoreClock+0x144>)
1a0011c2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0011c4:	009b      	lsls	r3, r3, #2
1a0011c6:	4413      	add	r3, r2
1a0011c8:	7859      	ldrb	r1, [r3, #1]
1a0011ca:	4a0c      	ldr	r2, [pc, #48]	; (1a0011fc <Chip_SetupCoreClock+0x144>)
1a0011cc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0011ce:	009b      	lsls	r3, r3, #2
1a0011d0:	4413      	add	r3, r2
1a0011d2:	789c      	ldrb	r4, [r3, #2]
1a0011d4:	4a09      	ldr	r2, [pc, #36]	; (1a0011fc <Chip_SetupCoreClock+0x144>)
1a0011d6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0011d8:	009b      	lsls	r3, r3, #2
1a0011da:	4413      	add	r3, r2
1a0011dc:	78db      	ldrb	r3, [r3, #3]
1a0011de:	4622      	mov	r2, r4
1a0011e0:	f001 f80a 	bl	1a0021f8 <Chip_Clock_SetBaseClock>
1a0011e4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0011e6:	3301      	adds	r3, #1
1a0011e8:	637b      	str	r3, [r7, #52]	; 0x34
1a0011ea:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0011ec:	2b11      	cmp	r3, #17
1a0011ee:	d9e3      	bls.n	1a0011b8 <Chip_SetupCoreClock+0x100>
1a0011f0:	bf00      	nop
1a0011f2:	373c      	adds	r7, #60	; 0x3c
1a0011f4:	46bd      	mov	sp, r7
1a0011f6:	bd90      	pop	{r4, r7, pc}
1a0011f8:	068e7780 	.word	0x068e7780
1a0011fc:	1a0027d8 	.word	0x1a0027d8

1a001200 <Chip_SetupXtalClocking>:
1a001200:	b580      	push	{r7, lr}
1a001202:	af00      	add	r7, sp, #0
1a001204:	2201      	movs	r2, #1
1a001206:	4903      	ldr	r1, [pc, #12]	; (1a001214 <Chip_SetupXtalClocking+0x14>)
1a001208:	2006      	movs	r0, #6
1a00120a:	f7ff ff55 	bl	1a0010b8 <Chip_SetupCoreClock>
1a00120e:	bf00      	nop
1a001210:	bd80      	pop	{r7, pc}
1a001212:	bf00      	nop
1a001214:	0c28cb00 	.word	0x0c28cb00

1a001218 <fpuInit>:
1a001218:	b480      	push	{r7}
1a00121a:	b089      	sub	sp, #36	; 0x24
1a00121c:	af00      	add	r7, sp, #0
1a00121e:	4b16      	ldr	r3, [pc, #88]	; (1a001278 <fpuInit+0x60>)
1a001220:	61fb      	str	r3, [r7, #28]
1a001222:	4b16      	ldr	r3, [pc, #88]	; (1a00127c <fpuInit+0x64>)
1a001224:	61bb      	str	r3, [r7, #24]
1a001226:	4b16      	ldr	r3, [pc, #88]	; (1a001280 <fpuInit+0x68>)
1a001228:	617b      	str	r3, [r7, #20]
1a00122a:	2300      	movs	r3, #0
1a00122c:	74fb      	strb	r3, [r7, #19]
1a00122e:	69bb      	ldr	r3, [r7, #24]
1a001230:	681b      	ldr	r3, [r3, #0]
1a001232:	60bb      	str	r3, [r7, #8]
1a001234:	697b      	ldr	r3, [r7, #20]
1a001236:	681b      	ldr	r3, [r3, #0]
1a001238:	607b      	str	r3, [r7, #4]
1a00123a:	68bb      	ldr	r3, [r7, #8]
1a00123c:	4a11      	ldr	r2, [pc, #68]	; (1a001284 <fpuInit+0x6c>)
1a00123e:	4293      	cmp	r3, r2
1a001240:	d105      	bne.n	1a00124e <fpuInit+0x36>
1a001242:	687b      	ldr	r3, [r7, #4]
1a001244:	4a10      	ldr	r2, [pc, #64]	; (1a001288 <fpuInit+0x70>)
1a001246:	4293      	cmp	r3, r2
1a001248:	d101      	bne.n	1a00124e <fpuInit+0x36>
1a00124a:	2301      	movs	r3, #1
1a00124c:	e000      	b.n	1a001250 <fpuInit+0x38>
1a00124e:	2300      	movs	r3, #0
1a001250:	74fb      	strb	r3, [r7, #19]
1a001252:	7cfb      	ldrb	r3, [r7, #19]
1a001254:	2b00      	cmp	r3, #0
1a001256:	d009      	beq.n	1a00126c <fpuInit+0x54>
1a001258:	69fb      	ldr	r3, [r7, #28]
1a00125a:	681b      	ldr	r3, [r3, #0]
1a00125c:	60fb      	str	r3, [r7, #12]
1a00125e:	68fb      	ldr	r3, [r7, #12]
1a001260:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a001264:	60fb      	str	r3, [r7, #12]
1a001266:	68fa      	ldr	r2, [r7, #12]
1a001268:	69fb      	ldr	r3, [r7, #28]
1a00126a:	601a      	str	r2, [r3, #0]
1a00126c:	bf00      	nop
1a00126e:	3724      	adds	r7, #36	; 0x24
1a001270:	46bd      	mov	sp, r7
1a001272:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001276:	4770      	bx	lr
1a001278:	e000ed88 	.word	0xe000ed88
1a00127c:	e000ef40 	.word	0xe000ef40
1a001280:	e000ef44 	.word	0xe000ef44
1a001284:	10110021 	.word	0x10110021
1a001288:	11000011 	.word	0x11000011

1a00128c <RingBuffer_IsEmpty>:
1a00128c:	b480      	push	{r7}
1a00128e:	b083      	sub	sp, #12
1a001290:	af00      	add	r7, sp, #0
1a001292:	6078      	str	r0, [r7, #4]
1a001294:	687b      	ldr	r3, [r7, #4]
1a001296:	330c      	adds	r3, #12
1a001298:	681a      	ldr	r2, [r3, #0]
1a00129a:	687b      	ldr	r3, [r7, #4]
1a00129c:	3310      	adds	r3, #16
1a00129e:	681b      	ldr	r3, [r3, #0]
1a0012a0:	429a      	cmp	r2, r3
1a0012a2:	bf0c      	ite	eq
1a0012a4:	2301      	moveq	r3, #1
1a0012a6:	2300      	movne	r3, #0
1a0012a8:	b2db      	uxtb	r3, r3
1a0012aa:	4618      	mov	r0, r3
1a0012ac:	370c      	adds	r7, #12
1a0012ae:	46bd      	mov	sp, r7
1a0012b0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012b4:	4770      	bx	lr

1a0012b6 <Chip_UART_TXDisable>:
1a0012b6:	b480      	push	{r7}
1a0012b8:	b083      	sub	sp, #12
1a0012ba:	af00      	add	r7, sp, #0
1a0012bc:	6078      	str	r0, [r7, #4]
1a0012be:	687b      	ldr	r3, [r7, #4]
1a0012c0:	2200      	movs	r2, #0
1a0012c2:	65da      	str	r2, [r3, #92]	; 0x5c
1a0012c4:	bf00      	nop
1a0012c6:	370c      	adds	r7, #12
1a0012c8:	46bd      	mov	sp, r7
1a0012ca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012ce:	4770      	bx	lr

1a0012d0 <Chip_UART_SendByte>:
1a0012d0:	b480      	push	{r7}
1a0012d2:	b083      	sub	sp, #12
1a0012d4:	af00      	add	r7, sp, #0
1a0012d6:	6078      	str	r0, [r7, #4]
1a0012d8:	460b      	mov	r3, r1
1a0012da:	70fb      	strb	r3, [r7, #3]
1a0012dc:	78fa      	ldrb	r2, [r7, #3]
1a0012de:	687b      	ldr	r3, [r7, #4]
1a0012e0:	601a      	str	r2, [r3, #0]
1a0012e2:	bf00      	nop
1a0012e4:	370c      	adds	r7, #12
1a0012e6:	46bd      	mov	sp, r7
1a0012e8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012ec:	4770      	bx	lr

1a0012ee <Chip_UART_ReadByte>:
1a0012ee:	b480      	push	{r7}
1a0012f0:	b083      	sub	sp, #12
1a0012f2:	af00      	add	r7, sp, #0
1a0012f4:	6078      	str	r0, [r7, #4]
1a0012f6:	687b      	ldr	r3, [r7, #4]
1a0012f8:	681b      	ldr	r3, [r3, #0]
1a0012fa:	b2db      	uxtb	r3, r3
1a0012fc:	4618      	mov	r0, r3
1a0012fe:	370c      	adds	r7, #12
1a001300:	46bd      	mov	sp, r7
1a001302:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001306:	4770      	bx	lr

1a001308 <Chip_UART_IntEnable>:
1a001308:	b480      	push	{r7}
1a00130a:	b083      	sub	sp, #12
1a00130c:	af00      	add	r7, sp, #0
1a00130e:	6078      	str	r0, [r7, #4]
1a001310:	6039      	str	r1, [r7, #0]
1a001312:	687b      	ldr	r3, [r7, #4]
1a001314:	685a      	ldr	r2, [r3, #4]
1a001316:	683b      	ldr	r3, [r7, #0]
1a001318:	431a      	orrs	r2, r3
1a00131a:	687b      	ldr	r3, [r7, #4]
1a00131c:	605a      	str	r2, [r3, #4]
1a00131e:	bf00      	nop
1a001320:	370c      	adds	r7, #12
1a001322:	46bd      	mov	sp, r7
1a001324:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001328:	4770      	bx	lr

1a00132a <Chip_UART_IntDisable>:
1a00132a:	b480      	push	{r7}
1a00132c:	b083      	sub	sp, #12
1a00132e:	af00      	add	r7, sp, #0
1a001330:	6078      	str	r0, [r7, #4]
1a001332:	6039      	str	r1, [r7, #0]
1a001334:	687b      	ldr	r3, [r7, #4]
1a001336:	685a      	ldr	r2, [r3, #4]
1a001338:	683b      	ldr	r3, [r7, #0]
1a00133a:	43db      	mvns	r3, r3
1a00133c:	401a      	ands	r2, r3
1a00133e:	687b      	ldr	r3, [r7, #4]
1a001340:	605a      	str	r2, [r3, #4]
1a001342:	bf00      	nop
1a001344:	370c      	adds	r7, #12
1a001346:	46bd      	mov	sp, r7
1a001348:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00134c:	4770      	bx	lr

1a00134e <Chip_UART_ReadIntIDReg>:
1a00134e:	b480      	push	{r7}
1a001350:	b083      	sub	sp, #12
1a001352:	af00      	add	r7, sp, #0
1a001354:	6078      	str	r0, [r7, #4]
1a001356:	687b      	ldr	r3, [r7, #4]
1a001358:	689b      	ldr	r3, [r3, #8]
1a00135a:	4618      	mov	r0, r3
1a00135c:	370c      	adds	r7, #12
1a00135e:	46bd      	mov	sp, r7
1a001360:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001364:	4770      	bx	lr

1a001366 <Chip_UART_SetupFIFOS>:
1a001366:	b480      	push	{r7}
1a001368:	b083      	sub	sp, #12
1a00136a:	af00      	add	r7, sp, #0
1a00136c:	6078      	str	r0, [r7, #4]
1a00136e:	6039      	str	r1, [r7, #0]
1a001370:	687b      	ldr	r3, [r7, #4]
1a001372:	683a      	ldr	r2, [r7, #0]
1a001374:	609a      	str	r2, [r3, #8]
1a001376:	bf00      	nop
1a001378:	370c      	adds	r7, #12
1a00137a:	46bd      	mov	sp, r7
1a00137c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001380:	4770      	bx	lr

1a001382 <Chip_UART_ConfigData>:
1a001382:	b480      	push	{r7}
1a001384:	b083      	sub	sp, #12
1a001386:	af00      	add	r7, sp, #0
1a001388:	6078      	str	r0, [r7, #4]
1a00138a:	6039      	str	r1, [r7, #0]
1a00138c:	687b      	ldr	r3, [r7, #4]
1a00138e:	683a      	ldr	r2, [r7, #0]
1a001390:	60da      	str	r2, [r3, #12]
1a001392:	bf00      	nop
1a001394:	370c      	adds	r7, #12
1a001396:	46bd      	mov	sp, r7
1a001398:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00139c:	4770      	bx	lr

1a00139e <Chip_UART_EnableDivisorAccess>:
1a00139e:	b480      	push	{r7}
1a0013a0:	b083      	sub	sp, #12
1a0013a2:	af00      	add	r7, sp, #0
1a0013a4:	6078      	str	r0, [r7, #4]
1a0013a6:	687b      	ldr	r3, [r7, #4]
1a0013a8:	68db      	ldr	r3, [r3, #12]
1a0013aa:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a0013ae:	687b      	ldr	r3, [r7, #4]
1a0013b0:	60da      	str	r2, [r3, #12]
1a0013b2:	bf00      	nop
1a0013b4:	370c      	adds	r7, #12
1a0013b6:	46bd      	mov	sp, r7
1a0013b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013bc:	4770      	bx	lr

1a0013be <Chip_UART_DisableDivisorAccess>:
1a0013be:	b480      	push	{r7}
1a0013c0:	b083      	sub	sp, #12
1a0013c2:	af00      	add	r7, sp, #0
1a0013c4:	6078      	str	r0, [r7, #4]
1a0013c6:	687b      	ldr	r3, [r7, #4]
1a0013c8:	68db      	ldr	r3, [r3, #12]
1a0013ca:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a0013ce:	687b      	ldr	r3, [r7, #4]
1a0013d0:	60da      	str	r2, [r3, #12]
1a0013d2:	bf00      	nop
1a0013d4:	370c      	adds	r7, #12
1a0013d6:	46bd      	mov	sp, r7
1a0013d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013dc:	4770      	bx	lr

1a0013de <Chip_UART_SetDivisorLatches>:
1a0013de:	b480      	push	{r7}
1a0013e0:	b083      	sub	sp, #12
1a0013e2:	af00      	add	r7, sp, #0
1a0013e4:	6078      	str	r0, [r7, #4]
1a0013e6:	460b      	mov	r3, r1
1a0013e8:	70fb      	strb	r3, [r7, #3]
1a0013ea:	4613      	mov	r3, r2
1a0013ec:	70bb      	strb	r3, [r7, #2]
1a0013ee:	78fa      	ldrb	r2, [r7, #3]
1a0013f0:	687b      	ldr	r3, [r7, #4]
1a0013f2:	601a      	str	r2, [r3, #0]
1a0013f4:	78ba      	ldrb	r2, [r7, #2]
1a0013f6:	687b      	ldr	r3, [r7, #4]
1a0013f8:	605a      	str	r2, [r3, #4]
1a0013fa:	bf00      	nop
1a0013fc:	370c      	adds	r7, #12
1a0013fe:	46bd      	mov	sp, r7
1a001400:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001404:	4770      	bx	lr

1a001406 <Chip_UART_ReadLineStatus>:
1a001406:	b480      	push	{r7}
1a001408:	b083      	sub	sp, #12
1a00140a:	af00      	add	r7, sp, #0
1a00140c:	6078      	str	r0, [r7, #4]
1a00140e:	687b      	ldr	r3, [r7, #4]
1a001410:	695b      	ldr	r3, [r3, #20]
1a001412:	4618      	mov	r0, r3
1a001414:	370c      	adds	r7, #12
1a001416:	46bd      	mov	sp, r7
1a001418:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00141c:	4770      	bx	lr

1a00141e <Chip_UART_SetAutoBaudReg>:
1a00141e:	b480      	push	{r7}
1a001420:	b083      	sub	sp, #12
1a001422:	af00      	add	r7, sp, #0
1a001424:	6078      	str	r0, [r7, #4]
1a001426:	6039      	str	r1, [r7, #0]
1a001428:	687b      	ldr	r3, [r7, #4]
1a00142a:	6a1a      	ldr	r2, [r3, #32]
1a00142c:	683b      	ldr	r3, [r7, #0]
1a00142e:	431a      	orrs	r2, r3
1a001430:	687b      	ldr	r3, [r7, #4]
1a001432:	621a      	str	r2, [r3, #32]
1a001434:	bf00      	nop
1a001436:	370c      	adds	r7, #12
1a001438:	46bd      	mov	sp, r7
1a00143a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00143e:	4770      	bx	lr

1a001440 <Chip_UART_GetIndex>:
1a001440:	b480      	push	{r7}
1a001442:	b085      	sub	sp, #20
1a001444:	af00      	add	r7, sp, #0
1a001446:	6078      	str	r0, [r7, #4]
1a001448:	687b      	ldr	r3, [r7, #4]
1a00144a:	60fb      	str	r3, [r7, #12]
1a00144c:	68fb      	ldr	r3, [r7, #12]
1a00144e:	4a10      	ldr	r2, [pc, #64]	; (1a001490 <Chip_UART_GetIndex+0x50>)
1a001450:	4293      	cmp	r3, r2
1a001452:	d00f      	beq.n	1a001474 <Chip_UART_GetIndex+0x34>
1a001454:	4a0e      	ldr	r2, [pc, #56]	; (1a001490 <Chip_UART_GetIndex+0x50>)
1a001456:	4293      	cmp	r3, r2
1a001458:	d803      	bhi.n	1a001462 <Chip_UART_GetIndex+0x22>
1a00145a:	4a0e      	ldr	r2, [pc, #56]	; (1a001494 <Chip_UART_GetIndex+0x54>)
1a00145c:	4293      	cmp	r3, r2
1a00145e:	d007      	beq.n	1a001470 <Chip_UART_GetIndex+0x30>
1a001460:	e00e      	b.n	1a001480 <Chip_UART_GetIndex+0x40>
1a001462:	4a0d      	ldr	r2, [pc, #52]	; (1a001498 <Chip_UART_GetIndex+0x58>)
1a001464:	4293      	cmp	r3, r2
1a001466:	d007      	beq.n	1a001478 <Chip_UART_GetIndex+0x38>
1a001468:	4a0c      	ldr	r2, [pc, #48]	; (1a00149c <Chip_UART_GetIndex+0x5c>)
1a00146a:	4293      	cmp	r3, r2
1a00146c:	d006      	beq.n	1a00147c <Chip_UART_GetIndex+0x3c>
1a00146e:	e007      	b.n	1a001480 <Chip_UART_GetIndex+0x40>
1a001470:	2300      	movs	r3, #0
1a001472:	e006      	b.n	1a001482 <Chip_UART_GetIndex+0x42>
1a001474:	2301      	movs	r3, #1
1a001476:	e004      	b.n	1a001482 <Chip_UART_GetIndex+0x42>
1a001478:	2302      	movs	r3, #2
1a00147a:	e002      	b.n	1a001482 <Chip_UART_GetIndex+0x42>
1a00147c:	2303      	movs	r3, #3
1a00147e:	e000      	b.n	1a001482 <Chip_UART_GetIndex+0x42>
1a001480:	2300      	movs	r3, #0
1a001482:	4618      	mov	r0, r3
1a001484:	3714      	adds	r7, #20
1a001486:	46bd      	mov	sp, r7
1a001488:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00148c:	4770      	bx	lr
1a00148e:	bf00      	nop
1a001490:	40082000 	.word	0x40082000
1a001494:	40081000 	.word	0x40081000
1a001498:	400c1000 	.word	0x400c1000
1a00149c:	400c2000 	.word	0x400c2000

1a0014a0 <Chip_UART_ABIntHandler>:
1a0014a0:	b580      	push	{r7, lr}
1a0014a2:	b082      	sub	sp, #8
1a0014a4:	af00      	add	r7, sp, #0
1a0014a6:	6078      	str	r0, [r7, #4]
1a0014a8:	6878      	ldr	r0, [r7, #4]
1a0014aa:	f7ff ff50 	bl	1a00134e <Chip_UART_ReadIntIDReg>
1a0014ae:	4603      	mov	r3, r0
1a0014b0:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a0014b4:	2b00      	cmp	r3, #0
1a0014b6:	d011      	beq.n	1a0014dc <Chip_UART_ABIntHandler+0x3c>
1a0014b8:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0014bc:	6878      	ldr	r0, [r7, #4]
1a0014be:	f7ff ffae 	bl	1a00141e <Chip_UART_SetAutoBaudReg>
1a0014c2:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0014c6:	6878      	ldr	r0, [r7, #4]
1a0014c8:	f7ff ff2f 	bl	1a00132a <Chip_UART_IntDisable>
1a0014cc:	4b0e      	ldr	r3, [pc, #56]	; (1a001508 <Chip_UART_ABIntHandler+0x68>)
1a0014ce:	781b      	ldrb	r3, [r3, #0]
1a0014d0:	b2db      	uxtb	r3, r3
1a0014d2:	2b00      	cmp	r3, #0
1a0014d4:	d102      	bne.n	1a0014dc <Chip_UART_ABIntHandler+0x3c>
1a0014d6:	4b0c      	ldr	r3, [pc, #48]	; (1a001508 <Chip_UART_ABIntHandler+0x68>)
1a0014d8:	2201      	movs	r2, #1
1a0014da:	701a      	strb	r2, [r3, #0]
1a0014dc:	6878      	ldr	r0, [r7, #4]
1a0014de:	f7ff ff36 	bl	1a00134e <Chip_UART_ReadIntIDReg>
1a0014e2:	4603      	mov	r3, r0
1a0014e4:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a0014e8:	2b00      	cmp	r3, #0
1a0014ea:	d009      	beq.n	1a001500 <Chip_UART_ABIntHandler+0x60>
1a0014ec:	f44f 7100 	mov.w	r1, #512	; 0x200
1a0014f0:	6878      	ldr	r0, [r7, #4]
1a0014f2:	f7ff ff94 	bl	1a00141e <Chip_UART_SetAutoBaudReg>
1a0014f6:	f44f 7100 	mov.w	r1, #512	; 0x200
1a0014fa:	6878      	ldr	r0, [r7, #4]
1a0014fc:	f7ff ff15 	bl	1a00132a <Chip_UART_IntDisable>
1a001500:	bf00      	nop
1a001502:	3708      	adds	r7, #8
1a001504:	46bd      	mov	sp, r7
1a001506:	bd80      	pop	{r7, pc}
1a001508:	10000018 	.word	0x10000018

1a00150c <Chip_UART_Init>:
1a00150c:	b580      	push	{r7, lr}
1a00150e:	b084      	sub	sp, #16
1a001510:	af00      	add	r7, sp, #0
1a001512:	6078      	str	r0, [r7, #4]
1a001514:	68fb      	ldr	r3, [r7, #12]
1a001516:	6878      	ldr	r0, [r7, #4]
1a001518:	f7ff ff92 	bl	1a001440 <Chip_UART_GetIndex>
1a00151c:	4602      	mov	r2, r0
1a00151e:	4b1b      	ldr	r3, [pc, #108]	; (1a00158c <Chip_UART_Init+0x80>)
1a001520:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a001524:	2301      	movs	r3, #1
1a001526:	2201      	movs	r2, #1
1a001528:	2101      	movs	r1, #1
1a00152a:	f000 fed9 	bl	1a0022e0 <Chip_Clock_EnableOpts>
1a00152e:	2107      	movs	r1, #7
1a001530:	6878      	ldr	r0, [r7, #4]
1a001532:	f7ff ff18 	bl	1a001366 <Chip_UART_SetupFIFOS>
1a001536:	6878      	ldr	r0, [r7, #4]
1a001538:	f7ff febd 	bl	1a0012b6 <Chip_UART_TXDisable>
1a00153c:	687b      	ldr	r3, [r7, #4]
1a00153e:	2200      	movs	r2, #0
1a001540:	605a      	str	r2, [r3, #4]
1a001542:	687b      	ldr	r3, [r7, #4]
1a001544:	2200      	movs	r2, #0
1a001546:	60da      	str	r2, [r3, #12]
1a001548:	687b      	ldr	r3, [r7, #4]
1a00154a:	2200      	movs	r2, #0
1a00154c:	621a      	str	r2, [r3, #32]
1a00154e:	687b      	ldr	r3, [r7, #4]
1a001550:	2200      	movs	r2, #0
1a001552:	64da      	str	r2, [r3, #76]	; 0x4c
1a001554:	687b      	ldr	r3, [r7, #4]
1a001556:	2200      	movs	r2, #0
1a001558:	655a      	str	r2, [r3, #84]	; 0x54
1a00155a:	687b      	ldr	r3, [r7, #4]
1a00155c:	2200      	movs	r2, #0
1a00155e:	651a      	str	r2, [r3, #80]	; 0x50
1a001560:	687b      	ldr	r3, [r7, #4]
1a001562:	4a0b      	ldr	r2, [pc, #44]	; (1a001590 <Chip_UART_Init+0x84>)
1a001564:	4293      	cmp	r3, r2
1a001566:	d105      	bne.n	1a001574 <Chip_UART_Init+0x68>
1a001568:	687b      	ldr	r3, [r7, #4]
1a00156a:	2200      	movs	r2, #0
1a00156c:	611a      	str	r2, [r3, #16]
1a00156e:	687b      	ldr	r3, [r7, #4]
1a001570:	699b      	ldr	r3, [r3, #24]
1a001572:	60fb      	str	r3, [r7, #12]
1a001574:	2103      	movs	r1, #3
1a001576:	6878      	ldr	r0, [r7, #4]
1a001578:	f7ff ff03 	bl	1a001382 <Chip_UART_ConfigData>
1a00157c:	687b      	ldr	r3, [r7, #4]
1a00157e:	2210      	movs	r2, #16
1a001580:	629a      	str	r2, [r3, #40]	; 0x28
1a001582:	bf00      	nop
1a001584:	3710      	adds	r7, #16
1a001586:	46bd      	mov	sp, r7
1a001588:	bd80      	pop	{r7, pc}
1a00158a:	bf00      	nop
1a00158c:	1a002820 	.word	0x1a002820
1a001590:	40082000 	.word	0x40082000

1a001594 <Chip_UART_Send>:
1a001594:	b580      	push	{r7, lr}
1a001596:	b086      	sub	sp, #24
1a001598:	af00      	add	r7, sp, #0
1a00159a:	60f8      	str	r0, [r7, #12]
1a00159c:	60b9      	str	r1, [r7, #8]
1a00159e:	607a      	str	r2, [r7, #4]
1a0015a0:	2300      	movs	r3, #0
1a0015a2:	617b      	str	r3, [r7, #20]
1a0015a4:	68bb      	ldr	r3, [r7, #8]
1a0015a6:	613b      	str	r3, [r7, #16]
1a0015a8:	e00b      	b.n	1a0015c2 <Chip_UART_Send+0x2e>
1a0015aa:	693b      	ldr	r3, [r7, #16]
1a0015ac:	781b      	ldrb	r3, [r3, #0]
1a0015ae:	4619      	mov	r1, r3
1a0015b0:	68f8      	ldr	r0, [r7, #12]
1a0015b2:	f7ff fe8d 	bl	1a0012d0 <Chip_UART_SendByte>
1a0015b6:	693b      	ldr	r3, [r7, #16]
1a0015b8:	3301      	adds	r3, #1
1a0015ba:	613b      	str	r3, [r7, #16]
1a0015bc:	697b      	ldr	r3, [r7, #20]
1a0015be:	3301      	adds	r3, #1
1a0015c0:	617b      	str	r3, [r7, #20]
1a0015c2:	697a      	ldr	r2, [r7, #20]
1a0015c4:	687b      	ldr	r3, [r7, #4]
1a0015c6:	429a      	cmp	r2, r3
1a0015c8:	da07      	bge.n	1a0015da <Chip_UART_Send+0x46>
1a0015ca:	68f8      	ldr	r0, [r7, #12]
1a0015cc:	f7ff ff1b 	bl	1a001406 <Chip_UART_ReadLineStatus>
1a0015d0:	4603      	mov	r3, r0
1a0015d2:	f003 0320 	and.w	r3, r3, #32
1a0015d6:	2b00      	cmp	r3, #0
1a0015d8:	d1e7      	bne.n	1a0015aa <Chip_UART_Send+0x16>
1a0015da:	697b      	ldr	r3, [r7, #20]
1a0015dc:	4618      	mov	r0, r3
1a0015de:	3718      	adds	r7, #24
1a0015e0:	46bd      	mov	sp, r7
1a0015e2:	bd80      	pop	{r7, pc}

1a0015e4 <Chip_UART_SendBlocking>:
1a0015e4:	b580      	push	{r7, lr}
1a0015e6:	b088      	sub	sp, #32
1a0015e8:	af00      	add	r7, sp, #0
1a0015ea:	60f8      	str	r0, [r7, #12]
1a0015ec:	60b9      	str	r1, [r7, #8]
1a0015ee:	607a      	str	r2, [r7, #4]
1a0015f0:	2300      	movs	r3, #0
1a0015f2:	61fb      	str	r3, [r7, #28]
1a0015f4:	68bb      	ldr	r3, [r7, #8]
1a0015f6:	61bb      	str	r3, [r7, #24]
1a0015f8:	e011      	b.n	1a00161e <Chip_UART_SendBlocking+0x3a>
1a0015fa:	687a      	ldr	r2, [r7, #4]
1a0015fc:	69b9      	ldr	r1, [r7, #24]
1a0015fe:	68f8      	ldr	r0, [r7, #12]
1a001600:	f7ff ffc8 	bl	1a001594 <Chip_UART_Send>
1a001604:	6178      	str	r0, [r7, #20]
1a001606:	687a      	ldr	r2, [r7, #4]
1a001608:	697b      	ldr	r3, [r7, #20]
1a00160a:	1ad3      	subs	r3, r2, r3
1a00160c:	607b      	str	r3, [r7, #4]
1a00160e:	69fa      	ldr	r2, [r7, #28]
1a001610:	697b      	ldr	r3, [r7, #20]
1a001612:	4413      	add	r3, r2
1a001614:	61fb      	str	r3, [r7, #28]
1a001616:	697b      	ldr	r3, [r7, #20]
1a001618:	69ba      	ldr	r2, [r7, #24]
1a00161a:	4413      	add	r3, r2
1a00161c:	61bb      	str	r3, [r7, #24]
1a00161e:	687b      	ldr	r3, [r7, #4]
1a001620:	2b00      	cmp	r3, #0
1a001622:	dcea      	bgt.n	1a0015fa <Chip_UART_SendBlocking+0x16>
1a001624:	69fb      	ldr	r3, [r7, #28]
1a001626:	4618      	mov	r0, r3
1a001628:	3720      	adds	r7, #32
1a00162a:	46bd      	mov	sp, r7
1a00162c:	bd80      	pop	{r7, pc}
1a00162e:	Address 0x000000001a00162e is out of bounds.


1a001630 <Chip_UART_SetBaud>:
1a001630:	b580      	push	{r7, lr}
1a001632:	b086      	sub	sp, #24
1a001634:	af00      	add	r7, sp, #0
1a001636:	6078      	str	r0, [r7, #4]
1a001638:	6039      	str	r1, [r7, #0]
1a00163a:	6878      	ldr	r0, [r7, #4]
1a00163c:	f7ff ff00 	bl	1a001440 <Chip_UART_GetIndex>
1a001640:	4602      	mov	r2, r0
1a001642:	4b16      	ldr	r3, [pc, #88]	; (1a00169c <Chip_UART_SetBaud+0x6c>)
1a001644:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001648:	4618      	mov	r0, r3
1a00164a:	f000 fe87 	bl	1a00235c <Chip_Clock_GetRate>
1a00164e:	6178      	str	r0, [r7, #20]
1a001650:	683b      	ldr	r3, [r7, #0]
1a001652:	011b      	lsls	r3, r3, #4
1a001654:	697a      	ldr	r2, [r7, #20]
1a001656:	fbb2 f3f3 	udiv	r3, r2, r3
1a00165a:	613b      	str	r3, [r7, #16]
1a00165c:	693b      	ldr	r3, [r7, #16]
1a00165e:	0a1b      	lsrs	r3, r3, #8
1a001660:	60fb      	str	r3, [r7, #12]
1a001662:	68fb      	ldr	r3, [r7, #12]
1a001664:	021b      	lsls	r3, r3, #8
1a001666:	693a      	ldr	r2, [r7, #16]
1a001668:	1ad3      	subs	r3, r2, r3
1a00166a:	60bb      	str	r3, [r7, #8]
1a00166c:	6878      	ldr	r0, [r7, #4]
1a00166e:	f7ff fe96 	bl	1a00139e <Chip_UART_EnableDivisorAccess>
1a001672:	68bb      	ldr	r3, [r7, #8]
1a001674:	b2db      	uxtb	r3, r3
1a001676:	68fa      	ldr	r2, [r7, #12]
1a001678:	b2d2      	uxtb	r2, r2
1a00167a:	4619      	mov	r1, r3
1a00167c:	6878      	ldr	r0, [r7, #4]
1a00167e:	f7ff feae 	bl	1a0013de <Chip_UART_SetDivisorLatches>
1a001682:	6878      	ldr	r0, [r7, #4]
1a001684:	f7ff fe9b 	bl	1a0013be <Chip_UART_DisableDivisorAccess>
1a001688:	697a      	ldr	r2, [r7, #20]
1a00168a:	693b      	ldr	r3, [r7, #16]
1a00168c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001690:	091b      	lsrs	r3, r3, #4
1a001692:	4618      	mov	r0, r3
1a001694:	3718      	adds	r7, #24
1a001696:	46bd      	mov	sp, r7
1a001698:	bd80      	pop	{r7, pc}
1a00169a:	bf00      	nop
1a00169c:	1a002828 	.word	0x1a002828

1a0016a0 <Chip_UART_RXIntHandlerRB>:
1a0016a0:	b580      	push	{r7, lr}
1a0016a2:	b084      	sub	sp, #16
1a0016a4:	af00      	add	r7, sp, #0
1a0016a6:	6078      	str	r0, [r7, #4]
1a0016a8:	6039      	str	r1, [r7, #0]
1a0016aa:	e00a      	b.n	1a0016c2 <Chip_UART_RXIntHandlerRB+0x22>
1a0016ac:	6878      	ldr	r0, [r7, #4]
1a0016ae:	f7ff fe1e 	bl	1a0012ee <Chip_UART_ReadByte>
1a0016b2:	4603      	mov	r3, r0
1a0016b4:	73fb      	strb	r3, [r7, #15]
1a0016b6:	f107 030f 	add.w	r3, r7, #15
1a0016ba:	4619      	mov	r1, r3
1a0016bc:	6838      	ldr	r0, [r7, #0]
1a0016be:	f000 f8f1 	bl	1a0018a4 <RingBuffer_Insert>
1a0016c2:	6878      	ldr	r0, [r7, #4]
1a0016c4:	f7ff fe9f 	bl	1a001406 <Chip_UART_ReadLineStatus>
1a0016c8:	4603      	mov	r3, r0
1a0016ca:	f003 0301 	and.w	r3, r3, #1
1a0016ce:	2b00      	cmp	r3, #0
1a0016d0:	d1ec      	bne.n	1a0016ac <Chip_UART_RXIntHandlerRB+0xc>
1a0016d2:	bf00      	nop
1a0016d4:	3710      	adds	r7, #16
1a0016d6:	46bd      	mov	sp, r7
1a0016d8:	bd80      	pop	{r7, pc}

1a0016da <Chip_UART_TXIntHandlerRB>:
1a0016da:	b580      	push	{r7, lr}
1a0016dc:	b084      	sub	sp, #16
1a0016de:	af00      	add	r7, sp, #0
1a0016e0:	6078      	str	r0, [r7, #4]
1a0016e2:	6039      	str	r1, [r7, #0]
1a0016e4:	e004      	b.n	1a0016f0 <Chip_UART_TXIntHandlerRB+0x16>
1a0016e6:	7bfb      	ldrb	r3, [r7, #15]
1a0016e8:	4619      	mov	r1, r3
1a0016ea:	6878      	ldr	r0, [r7, #4]
1a0016ec:	f7ff fdf0 	bl	1a0012d0 <Chip_UART_SendByte>
1a0016f0:	6878      	ldr	r0, [r7, #4]
1a0016f2:	f7ff fe88 	bl	1a001406 <Chip_UART_ReadLineStatus>
1a0016f6:	4603      	mov	r3, r0
1a0016f8:	f003 0320 	and.w	r3, r3, #32
1a0016fc:	2b00      	cmp	r3, #0
1a0016fe:	d008      	beq.n	1a001712 <Chip_UART_TXIntHandlerRB+0x38>
1a001700:	f107 030f 	add.w	r3, r7, #15
1a001704:	4619      	mov	r1, r3
1a001706:	6838      	ldr	r0, [r7, #0]
1a001708:	f000 f98b 	bl	1a001a22 <RingBuffer_Pop>
1a00170c:	4603      	mov	r3, r0
1a00170e:	2b00      	cmp	r3, #0
1a001710:	d1e9      	bne.n	1a0016e6 <Chip_UART_TXIntHandlerRB+0xc>
1a001712:	6838      	ldr	r0, [r7, #0]
1a001714:	f7ff fdba 	bl	1a00128c <RingBuffer_IsEmpty>
1a001718:	4603      	mov	r3, r0
1a00171a:	2b00      	cmp	r3, #0
1a00171c:	d003      	beq.n	1a001726 <Chip_UART_TXIntHandlerRB+0x4c>
1a00171e:	2102      	movs	r1, #2
1a001720:	6878      	ldr	r0, [r7, #4]
1a001722:	f7ff fe02 	bl	1a00132a <Chip_UART_IntDisable>
1a001726:	bf00      	nop
1a001728:	3710      	adds	r7, #16
1a00172a:	46bd      	mov	sp, r7
1a00172c:	bd80      	pop	{r7, pc}

1a00172e <Chip_UART_SendRB>:
1a00172e:	b580      	push	{r7, lr}
1a001730:	b086      	sub	sp, #24
1a001732:	af00      	add	r7, sp, #0
1a001734:	60f8      	str	r0, [r7, #12]
1a001736:	60b9      	str	r1, [r7, #8]
1a001738:	607a      	str	r2, [r7, #4]
1a00173a:	603b      	str	r3, [r7, #0]
1a00173c:	687b      	ldr	r3, [r7, #4]
1a00173e:	617b      	str	r3, [r7, #20]
1a001740:	2102      	movs	r1, #2
1a001742:	68f8      	ldr	r0, [r7, #12]
1a001744:	f7ff fdf1 	bl	1a00132a <Chip_UART_IntDisable>
1a001748:	683a      	ldr	r2, [r7, #0]
1a00174a:	6979      	ldr	r1, [r7, #20]
1a00174c:	68b8      	ldr	r0, [r7, #8]
1a00174e:	f000 f8d7 	bl	1a001900 <RingBuffer_InsertMult>
1a001752:	4603      	mov	r3, r0
1a001754:	613b      	str	r3, [r7, #16]
1a001756:	68b9      	ldr	r1, [r7, #8]
1a001758:	68f8      	ldr	r0, [r7, #12]
1a00175a:	f7ff ffbe 	bl	1a0016da <Chip_UART_TXIntHandlerRB>
1a00175e:	697a      	ldr	r2, [r7, #20]
1a001760:	693b      	ldr	r3, [r7, #16]
1a001762:	18d1      	adds	r1, r2, r3
1a001764:	683a      	ldr	r2, [r7, #0]
1a001766:	693b      	ldr	r3, [r7, #16]
1a001768:	1ad3      	subs	r3, r2, r3
1a00176a:	461a      	mov	r2, r3
1a00176c:	68b8      	ldr	r0, [r7, #8]
1a00176e:	f000 f8c7 	bl	1a001900 <RingBuffer_InsertMult>
1a001772:	4603      	mov	r3, r0
1a001774:	461a      	mov	r2, r3
1a001776:	693b      	ldr	r3, [r7, #16]
1a001778:	4413      	add	r3, r2
1a00177a:	613b      	str	r3, [r7, #16]
1a00177c:	2102      	movs	r1, #2
1a00177e:	68f8      	ldr	r0, [r7, #12]
1a001780:	f7ff fdc2 	bl	1a001308 <Chip_UART_IntEnable>
1a001784:	693b      	ldr	r3, [r7, #16]
1a001786:	4618      	mov	r0, r3
1a001788:	3718      	adds	r7, #24
1a00178a:	46bd      	mov	sp, r7
1a00178c:	bd80      	pop	{r7, pc}

1a00178e <Chip_UART_IRQRBHandler>:
1a00178e:	b580      	push	{r7, lr}
1a001790:	b084      	sub	sp, #16
1a001792:	af00      	add	r7, sp, #0
1a001794:	60f8      	str	r0, [r7, #12]
1a001796:	60b9      	str	r1, [r7, #8]
1a001798:	607a      	str	r2, [r7, #4]
1a00179a:	68fb      	ldr	r3, [r7, #12]
1a00179c:	685b      	ldr	r3, [r3, #4]
1a00179e:	f003 0302 	and.w	r3, r3, #2
1a0017a2:	2b00      	cmp	r3, #0
1a0017a4:	d00d      	beq.n	1a0017c2 <Chip_UART_IRQRBHandler+0x34>
1a0017a6:	6879      	ldr	r1, [r7, #4]
1a0017a8:	68f8      	ldr	r0, [r7, #12]
1a0017aa:	f7ff ff96 	bl	1a0016da <Chip_UART_TXIntHandlerRB>
1a0017ae:	6878      	ldr	r0, [r7, #4]
1a0017b0:	f7ff fd6c 	bl	1a00128c <RingBuffer_IsEmpty>
1a0017b4:	4603      	mov	r3, r0
1a0017b6:	2b00      	cmp	r3, #0
1a0017b8:	d003      	beq.n	1a0017c2 <Chip_UART_IRQRBHandler+0x34>
1a0017ba:	2102      	movs	r1, #2
1a0017bc:	68f8      	ldr	r0, [r7, #12]
1a0017be:	f7ff fdb4 	bl	1a00132a <Chip_UART_IntDisable>
1a0017c2:	68b9      	ldr	r1, [r7, #8]
1a0017c4:	68f8      	ldr	r0, [r7, #12]
1a0017c6:	f7ff ff6b 	bl	1a0016a0 <Chip_UART_RXIntHandlerRB>
1a0017ca:	68f8      	ldr	r0, [r7, #12]
1a0017cc:	f7ff fe68 	bl	1a0014a0 <Chip_UART_ABIntHandler>
1a0017d0:	bf00      	nop
1a0017d2:	3710      	adds	r7, #16
1a0017d4:	46bd      	mov	sp, r7
1a0017d6:	bd80      	pop	{r7, pc}

1a0017d8 <RingBuffer_GetCount>:
1a0017d8:	b480      	push	{r7}
1a0017da:	b083      	sub	sp, #12
1a0017dc:	af00      	add	r7, sp, #0
1a0017de:	6078      	str	r0, [r7, #4]
1a0017e0:	687b      	ldr	r3, [r7, #4]
1a0017e2:	330c      	adds	r3, #12
1a0017e4:	681a      	ldr	r2, [r3, #0]
1a0017e6:	687b      	ldr	r3, [r7, #4]
1a0017e8:	3310      	adds	r3, #16
1a0017ea:	681b      	ldr	r3, [r3, #0]
1a0017ec:	1ad3      	subs	r3, r2, r3
1a0017ee:	4618      	mov	r0, r3
1a0017f0:	370c      	adds	r7, #12
1a0017f2:	46bd      	mov	sp, r7
1a0017f4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017f8:	4770      	bx	lr

1a0017fa <RingBuffer_GetFree>:
1a0017fa:	b590      	push	{r4, r7, lr}
1a0017fc:	b083      	sub	sp, #12
1a0017fe:	af00      	add	r7, sp, #0
1a001800:	6078      	str	r0, [r7, #4]
1a001802:	687b      	ldr	r3, [r7, #4]
1a001804:	685c      	ldr	r4, [r3, #4]
1a001806:	6878      	ldr	r0, [r7, #4]
1a001808:	f7ff ffe6 	bl	1a0017d8 <RingBuffer_GetCount>
1a00180c:	4603      	mov	r3, r0
1a00180e:	1ae3      	subs	r3, r4, r3
1a001810:	4618      	mov	r0, r3
1a001812:	370c      	adds	r7, #12
1a001814:	46bd      	mov	sp, r7
1a001816:	bd90      	pop	{r4, r7, pc}

1a001818 <RingBuffer_IsFull>:
1a001818:	b580      	push	{r7, lr}
1a00181a:	b082      	sub	sp, #8
1a00181c:	af00      	add	r7, sp, #0
1a00181e:	6078      	str	r0, [r7, #4]
1a001820:	6878      	ldr	r0, [r7, #4]
1a001822:	f7ff ffd9 	bl	1a0017d8 <RingBuffer_GetCount>
1a001826:	4602      	mov	r2, r0
1a001828:	687b      	ldr	r3, [r7, #4]
1a00182a:	685b      	ldr	r3, [r3, #4]
1a00182c:	429a      	cmp	r2, r3
1a00182e:	bfac      	ite	ge
1a001830:	2301      	movge	r3, #1
1a001832:	2300      	movlt	r3, #0
1a001834:	b2db      	uxtb	r3, r3
1a001836:	4618      	mov	r0, r3
1a001838:	3708      	adds	r7, #8
1a00183a:	46bd      	mov	sp, r7
1a00183c:	bd80      	pop	{r7, pc}

1a00183e <RingBuffer_IsEmpty>:
1a00183e:	b480      	push	{r7}
1a001840:	b083      	sub	sp, #12
1a001842:	af00      	add	r7, sp, #0
1a001844:	6078      	str	r0, [r7, #4]
1a001846:	687b      	ldr	r3, [r7, #4]
1a001848:	330c      	adds	r3, #12
1a00184a:	681a      	ldr	r2, [r3, #0]
1a00184c:	687b      	ldr	r3, [r7, #4]
1a00184e:	3310      	adds	r3, #16
1a001850:	681b      	ldr	r3, [r3, #0]
1a001852:	429a      	cmp	r2, r3
1a001854:	bf0c      	ite	eq
1a001856:	2301      	moveq	r3, #1
1a001858:	2300      	movne	r3, #0
1a00185a:	b2db      	uxtb	r3, r3
1a00185c:	4618      	mov	r0, r3
1a00185e:	370c      	adds	r7, #12
1a001860:	46bd      	mov	sp, r7
1a001862:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001866:	4770      	bx	lr

1a001868 <RingBuffer_Init>:
1a001868:	b480      	push	{r7}
1a00186a:	b085      	sub	sp, #20
1a00186c:	af00      	add	r7, sp, #0
1a00186e:	60f8      	str	r0, [r7, #12]
1a001870:	60b9      	str	r1, [r7, #8]
1a001872:	607a      	str	r2, [r7, #4]
1a001874:	603b      	str	r3, [r7, #0]
1a001876:	68fb      	ldr	r3, [r7, #12]
1a001878:	68ba      	ldr	r2, [r7, #8]
1a00187a:	601a      	str	r2, [r3, #0]
1a00187c:	68fb      	ldr	r3, [r7, #12]
1a00187e:	683a      	ldr	r2, [r7, #0]
1a001880:	605a      	str	r2, [r3, #4]
1a001882:	68fb      	ldr	r3, [r7, #12]
1a001884:	687a      	ldr	r2, [r7, #4]
1a001886:	609a      	str	r2, [r3, #8]
1a001888:	68fb      	ldr	r3, [r7, #12]
1a00188a:	2200      	movs	r2, #0
1a00188c:	611a      	str	r2, [r3, #16]
1a00188e:	68fb      	ldr	r3, [r7, #12]
1a001890:	691a      	ldr	r2, [r3, #16]
1a001892:	68fb      	ldr	r3, [r7, #12]
1a001894:	60da      	str	r2, [r3, #12]
1a001896:	2301      	movs	r3, #1
1a001898:	4618      	mov	r0, r3
1a00189a:	3714      	adds	r7, #20
1a00189c:	46bd      	mov	sp, r7
1a00189e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0018a2:	4770      	bx	lr

1a0018a4 <RingBuffer_Insert>:
1a0018a4:	b580      	push	{r7, lr}
1a0018a6:	b084      	sub	sp, #16
1a0018a8:	af00      	add	r7, sp, #0
1a0018aa:	6078      	str	r0, [r7, #4]
1a0018ac:	6039      	str	r1, [r7, #0]
1a0018ae:	687b      	ldr	r3, [r7, #4]
1a0018b0:	681b      	ldr	r3, [r3, #0]
1a0018b2:	60fb      	str	r3, [r7, #12]
1a0018b4:	6878      	ldr	r0, [r7, #4]
1a0018b6:	f7ff ffaf 	bl	1a001818 <RingBuffer_IsFull>
1a0018ba:	4603      	mov	r3, r0
1a0018bc:	2b00      	cmp	r3, #0
1a0018be:	d001      	beq.n	1a0018c4 <RingBuffer_Insert+0x20>
1a0018c0:	2300      	movs	r3, #0
1a0018c2:	e019      	b.n	1a0018f8 <RingBuffer_Insert+0x54>
1a0018c4:	687b      	ldr	r3, [r7, #4]
1a0018c6:	68db      	ldr	r3, [r3, #12]
1a0018c8:	687a      	ldr	r2, [r7, #4]
1a0018ca:	6852      	ldr	r2, [r2, #4]
1a0018cc:	3a01      	subs	r2, #1
1a0018ce:	4013      	ands	r3, r2
1a0018d0:	687a      	ldr	r2, [r7, #4]
1a0018d2:	6892      	ldr	r2, [r2, #8]
1a0018d4:	fb02 f303 	mul.w	r3, r2, r3
1a0018d8:	68fa      	ldr	r2, [r7, #12]
1a0018da:	4413      	add	r3, r2
1a0018dc:	60fb      	str	r3, [r7, #12]
1a0018de:	687b      	ldr	r3, [r7, #4]
1a0018e0:	689b      	ldr	r3, [r3, #8]
1a0018e2:	461a      	mov	r2, r3
1a0018e4:	6839      	ldr	r1, [r7, #0]
1a0018e6:	68f8      	ldr	r0, [r7, #12]
1a0018e8:	f000 fdb0 	bl	1a00244c <memcpy>
1a0018ec:	687b      	ldr	r3, [r7, #4]
1a0018ee:	68db      	ldr	r3, [r3, #12]
1a0018f0:	1c5a      	adds	r2, r3, #1
1a0018f2:	687b      	ldr	r3, [r7, #4]
1a0018f4:	60da      	str	r2, [r3, #12]
1a0018f6:	2301      	movs	r3, #1
1a0018f8:	4618      	mov	r0, r3
1a0018fa:	3710      	adds	r7, #16
1a0018fc:	46bd      	mov	sp, r7
1a0018fe:	bd80      	pop	{r7, pc}

1a001900 <RingBuffer_InsertMult>:
1a001900:	b580      	push	{r7, lr}
1a001902:	b088      	sub	sp, #32
1a001904:	af00      	add	r7, sp, #0
1a001906:	60f8      	str	r0, [r7, #12]
1a001908:	60b9      	str	r1, [r7, #8]
1a00190a:	607a      	str	r2, [r7, #4]
1a00190c:	68fb      	ldr	r3, [r7, #12]
1a00190e:	681b      	ldr	r3, [r3, #0]
1a001910:	61bb      	str	r3, [r7, #24]
1a001912:	68f8      	ldr	r0, [r7, #12]
1a001914:	f7ff ff80 	bl	1a001818 <RingBuffer_IsFull>
1a001918:	4603      	mov	r3, r0
1a00191a:	2b00      	cmp	r3, #0
1a00191c:	d001      	beq.n	1a001922 <RingBuffer_InsertMult+0x22>
1a00191e:	2300      	movs	r3, #0
1a001920:	e07b      	b.n	1a001a1a <RingBuffer_InsertMult+0x11a>
1a001922:	68f8      	ldr	r0, [r7, #12]
1a001924:	f7ff ff69 	bl	1a0017fa <RingBuffer_GetFree>
1a001928:	6178      	str	r0, [r7, #20]
1a00192a:	697b      	ldr	r3, [r7, #20]
1a00192c:	61fb      	str	r3, [r7, #28]
1a00192e:	68fb      	ldr	r3, [r7, #12]
1a001930:	68db      	ldr	r3, [r3, #12]
1a001932:	68fa      	ldr	r2, [r7, #12]
1a001934:	6852      	ldr	r2, [r2, #4]
1a001936:	3a01      	subs	r2, #1
1a001938:	401a      	ands	r2, r3
1a00193a:	69fb      	ldr	r3, [r7, #28]
1a00193c:	4413      	add	r3, r2
1a00193e:	68fa      	ldr	r2, [r7, #12]
1a001940:	6852      	ldr	r2, [r2, #4]
1a001942:	4293      	cmp	r3, r2
1a001944:	d30a      	bcc.n	1a00195c <RingBuffer_InsertMult+0x5c>
1a001946:	68fb      	ldr	r3, [r7, #12]
1a001948:	685b      	ldr	r3, [r3, #4]
1a00194a:	4619      	mov	r1, r3
1a00194c:	68fb      	ldr	r3, [r7, #12]
1a00194e:	68db      	ldr	r3, [r3, #12]
1a001950:	68fa      	ldr	r2, [r7, #12]
1a001952:	6852      	ldr	r2, [r2, #4]
1a001954:	3a01      	subs	r2, #1
1a001956:	4013      	ands	r3, r2
1a001958:	1acb      	subs	r3, r1, r3
1a00195a:	61fb      	str	r3, [r7, #28]
1a00195c:	697a      	ldr	r2, [r7, #20]
1a00195e:	69fb      	ldr	r3, [r7, #28]
1a001960:	1ad3      	subs	r3, r2, r3
1a001962:	617b      	str	r3, [r7, #20]
1a001964:	69fa      	ldr	r2, [r7, #28]
1a001966:	687b      	ldr	r3, [r7, #4]
1a001968:	4293      	cmp	r3, r2
1a00196a:	bfa8      	it	ge
1a00196c:	4613      	movge	r3, r2
1a00196e:	61fb      	str	r3, [r7, #28]
1a001970:	687a      	ldr	r2, [r7, #4]
1a001972:	69fb      	ldr	r3, [r7, #28]
1a001974:	1ad3      	subs	r3, r2, r3
1a001976:	607b      	str	r3, [r7, #4]
1a001978:	697a      	ldr	r2, [r7, #20]
1a00197a:	687b      	ldr	r3, [r7, #4]
1a00197c:	4293      	cmp	r3, r2
1a00197e:	bfa8      	it	ge
1a001980:	4613      	movge	r3, r2
1a001982:	617b      	str	r3, [r7, #20]
1a001984:	687a      	ldr	r2, [r7, #4]
1a001986:	697b      	ldr	r3, [r7, #20]
1a001988:	1ad3      	subs	r3, r2, r3
1a00198a:	607b      	str	r3, [r7, #4]
1a00198c:	68fb      	ldr	r3, [r7, #12]
1a00198e:	68db      	ldr	r3, [r3, #12]
1a001990:	68fa      	ldr	r2, [r7, #12]
1a001992:	6852      	ldr	r2, [r2, #4]
1a001994:	3a01      	subs	r2, #1
1a001996:	4013      	ands	r3, r2
1a001998:	68fa      	ldr	r2, [r7, #12]
1a00199a:	6892      	ldr	r2, [r2, #8]
1a00199c:	fb02 f303 	mul.w	r3, r2, r3
1a0019a0:	69ba      	ldr	r2, [r7, #24]
1a0019a2:	4413      	add	r3, r2
1a0019a4:	61bb      	str	r3, [r7, #24]
1a0019a6:	68fb      	ldr	r3, [r7, #12]
1a0019a8:	689b      	ldr	r3, [r3, #8]
1a0019aa:	69fa      	ldr	r2, [r7, #28]
1a0019ac:	fb02 f303 	mul.w	r3, r2, r3
1a0019b0:	461a      	mov	r2, r3
1a0019b2:	68b9      	ldr	r1, [r7, #8]
1a0019b4:	69b8      	ldr	r0, [r7, #24]
1a0019b6:	f000 fd49 	bl	1a00244c <memcpy>
1a0019ba:	68fb      	ldr	r3, [r7, #12]
1a0019bc:	68da      	ldr	r2, [r3, #12]
1a0019be:	69fb      	ldr	r3, [r7, #28]
1a0019c0:	441a      	add	r2, r3
1a0019c2:	68fb      	ldr	r3, [r7, #12]
1a0019c4:	60da      	str	r2, [r3, #12]
1a0019c6:	68fb      	ldr	r3, [r7, #12]
1a0019c8:	681a      	ldr	r2, [r3, #0]
1a0019ca:	68fb      	ldr	r3, [r7, #12]
1a0019cc:	68db      	ldr	r3, [r3, #12]
1a0019ce:	68f9      	ldr	r1, [r7, #12]
1a0019d0:	6849      	ldr	r1, [r1, #4]
1a0019d2:	3901      	subs	r1, #1
1a0019d4:	400b      	ands	r3, r1
1a0019d6:	68f9      	ldr	r1, [r7, #12]
1a0019d8:	6889      	ldr	r1, [r1, #8]
1a0019da:	fb01 f303 	mul.w	r3, r1, r3
1a0019de:	4413      	add	r3, r2
1a0019e0:	61bb      	str	r3, [r7, #24]
1a0019e2:	68fb      	ldr	r3, [r7, #12]
1a0019e4:	689b      	ldr	r3, [r3, #8]
1a0019e6:	69fa      	ldr	r2, [r7, #28]
1a0019e8:	fb02 f303 	mul.w	r3, r2, r3
1a0019ec:	461a      	mov	r2, r3
1a0019ee:	68bb      	ldr	r3, [r7, #8]
1a0019f0:	4413      	add	r3, r2
1a0019f2:	60bb      	str	r3, [r7, #8]
1a0019f4:	68fb      	ldr	r3, [r7, #12]
1a0019f6:	689b      	ldr	r3, [r3, #8]
1a0019f8:	697a      	ldr	r2, [r7, #20]
1a0019fa:	fb02 f303 	mul.w	r3, r2, r3
1a0019fe:	461a      	mov	r2, r3
1a001a00:	68b9      	ldr	r1, [r7, #8]
1a001a02:	69b8      	ldr	r0, [r7, #24]
1a001a04:	f000 fd22 	bl	1a00244c <memcpy>
1a001a08:	68fb      	ldr	r3, [r7, #12]
1a001a0a:	68da      	ldr	r2, [r3, #12]
1a001a0c:	697b      	ldr	r3, [r7, #20]
1a001a0e:	441a      	add	r2, r3
1a001a10:	68fb      	ldr	r3, [r7, #12]
1a001a12:	60da      	str	r2, [r3, #12]
1a001a14:	69fa      	ldr	r2, [r7, #28]
1a001a16:	697b      	ldr	r3, [r7, #20]
1a001a18:	4413      	add	r3, r2
1a001a1a:	4618      	mov	r0, r3
1a001a1c:	3720      	adds	r7, #32
1a001a1e:	46bd      	mov	sp, r7
1a001a20:	bd80      	pop	{r7, pc}

1a001a22 <RingBuffer_Pop>:
1a001a22:	b580      	push	{r7, lr}
1a001a24:	b084      	sub	sp, #16
1a001a26:	af00      	add	r7, sp, #0
1a001a28:	6078      	str	r0, [r7, #4]
1a001a2a:	6039      	str	r1, [r7, #0]
1a001a2c:	687b      	ldr	r3, [r7, #4]
1a001a2e:	681b      	ldr	r3, [r3, #0]
1a001a30:	60fb      	str	r3, [r7, #12]
1a001a32:	6878      	ldr	r0, [r7, #4]
1a001a34:	f7ff ff03 	bl	1a00183e <RingBuffer_IsEmpty>
1a001a38:	4603      	mov	r3, r0
1a001a3a:	2b00      	cmp	r3, #0
1a001a3c:	d001      	beq.n	1a001a42 <RingBuffer_Pop+0x20>
1a001a3e:	2300      	movs	r3, #0
1a001a40:	e019      	b.n	1a001a76 <RingBuffer_Pop+0x54>
1a001a42:	687b      	ldr	r3, [r7, #4]
1a001a44:	691b      	ldr	r3, [r3, #16]
1a001a46:	687a      	ldr	r2, [r7, #4]
1a001a48:	6852      	ldr	r2, [r2, #4]
1a001a4a:	3a01      	subs	r2, #1
1a001a4c:	4013      	ands	r3, r2
1a001a4e:	687a      	ldr	r2, [r7, #4]
1a001a50:	6892      	ldr	r2, [r2, #8]
1a001a52:	fb02 f303 	mul.w	r3, r2, r3
1a001a56:	68fa      	ldr	r2, [r7, #12]
1a001a58:	4413      	add	r3, r2
1a001a5a:	60fb      	str	r3, [r7, #12]
1a001a5c:	687b      	ldr	r3, [r7, #4]
1a001a5e:	689b      	ldr	r3, [r3, #8]
1a001a60:	461a      	mov	r2, r3
1a001a62:	68f9      	ldr	r1, [r7, #12]
1a001a64:	6838      	ldr	r0, [r7, #0]
1a001a66:	f000 fcf1 	bl	1a00244c <memcpy>
1a001a6a:	687b      	ldr	r3, [r7, #4]
1a001a6c:	691b      	ldr	r3, [r3, #16]
1a001a6e:	1c5a      	adds	r2, r3, #1
1a001a70:	687b      	ldr	r3, [r7, #4]
1a001a72:	611a      	str	r2, [r3, #16]
1a001a74:	2301      	movs	r3, #1
1a001a76:	4618      	mov	r0, r3
1a001a78:	3710      	adds	r7, #16
1a001a7a:	46bd      	mov	sp, r7
1a001a7c:	bd80      	pop	{r7, pc}

1a001a7e <ABS>:
1a001a7e:	b480      	push	{r7}
1a001a80:	b083      	sub	sp, #12
1a001a82:	af00      	add	r7, sp, #0
1a001a84:	6078      	str	r0, [r7, #4]
1a001a86:	687b      	ldr	r3, [r7, #4]
1a001a88:	2b00      	cmp	r3, #0
1a001a8a:	da02      	bge.n	1a001a92 <ABS+0x14>
1a001a8c:	687b      	ldr	r3, [r7, #4]
1a001a8e:	425b      	negs	r3, r3
1a001a90:	e000      	b.n	1a001a94 <ABS+0x16>
1a001a92:	687b      	ldr	r3, [r7, #4]
1a001a94:	4618      	mov	r0, r3
1a001a96:	370c      	adds	r7, #12
1a001a98:	46bd      	mov	sp, r7
1a001a9a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a9e:	4770      	bx	lr

1a001aa0 <pll_calc_divs>:
1a001aa0:	b580      	push	{r7, lr}
1a001aa2:	b088      	sub	sp, #32
1a001aa4:	af00      	add	r7, sp, #0
1a001aa6:	6078      	str	r0, [r7, #4]
1a001aa8:	6039      	str	r1, [r7, #0]
1a001aaa:	687b      	ldr	r3, [r7, #4]
1a001aac:	61fb      	str	r3, [r7, #28]
1a001aae:	683b      	ldr	r3, [r7, #0]
1a001ab0:	681b      	ldr	r3, [r3, #0]
1a001ab2:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001ab6:	2b00      	cmp	r3, #0
1a001ab8:	d005      	beq.n	1a001ac6 <pll_calc_divs+0x26>
1a001aba:	683b      	ldr	r3, [r7, #0]
1a001abc:	681b      	ldr	r3, [r3, #0]
1a001abe:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001ac2:	683b      	ldr	r3, [r7, #0]
1a001ac4:	601a      	str	r2, [r3, #0]
1a001ac6:	2301      	movs	r3, #1
1a001ac8:	61bb      	str	r3, [r7, #24]
1a001aca:	e06f      	b.n	1a001bac <pll_calc_divs+0x10c>
1a001acc:	2300      	movs	r3, #0
1a001ace:	613b      	str	r3, [r7, #16]
1a001ad0:	e066      	b.n	1a001ba0 <pll_calc_divs+0x100>
1a001ad2:	2301      	movs	r3, #1
1a001ad4:	617b      	str	r3, [r7, #20]
1a001ad6:	e05a      	b.n	1a001b8e <pll_calc_divs+0xee>
1a001ad8:	683b      	ldr	r3, [r7, #0]
1a001ada:	681b      	ldr	r3, [r3, #0]
1a001adc:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001ae0:	2b00      	cmp	r3, #0
1a001ae2:	d00e      	beq.n	1a001b02 <pll_calc_divs+0x62>
1a001ae4:	693b      	ldr	r3, [r7, #16]
1a001ae6:	3301      	adds	r3, #1
1a001ae8:	697a      	ldr	r2, [r7, #20]
1a001aea:	fa02 f303 	lsl.w	r3, r2, r3
1a001aee:	461a      	mov	r2, r3
1a001af0:	683b      	ldr	r3, [r7, #0]
1a001af2:	695b      	ldr	r3, [r3, #20]
1a001af4:	fb03 f202 	mul.w	r2, r3, r2
1a001af8:	69bb      	ldr	r3, [r7, #24]
1a001afa:	fbb2 f3f3 	udiv	r3, r2, r3
1a001afe:	60fb      	str	r3, [r7, #12]
1a001b00:	e008      	b.n	1a001b14 <pll_calc_divs+0x74>
1a001b02:	683b      	ldr	r3, [r7, #0]
1a001b04:	695b      	ldr	r3, [r3, #20]
1a001b06:	697a      	ldr	r2, [r7, #20]
1a001b08:	fb02 f203 	mul.w	r2, r2, r3
1a001b0c:	69bb      	ldr	r3, [r7, #24]
1a001b0e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b12:	60fb      	str	r3, [r7, #12]
1a001b14:	68fb      	ldr	r3, [r7, #12]
1a001b16:	4a29      	ldr	r2, [pc, #164]	; (1a001bbc <pll_calc_divs+0x11c>)
1a001b18:	4293      	cmp	r3, r2
1a001b1a:	d934      	bls.n	1a001b86 <pll_calc_divs+0xe6>
1a001b1c:	68fb      	ldr	r3, [r7, #12]
1a001b1e:	4a28      	ldr	r2, [pc, #160]	; (1a001bc0 <pll_calc_divs+0x120>)
1a001b20:	4293      	cmp	r3, r2
1a001b22:	d839      	bhi.n	1a001b98 <pll_calc_divs+0xf8>
1a001b24:	683b      	ldr	r3, [r7, #0]
1a001b26:	681b      	ldr	r3, [r3, #0]
1a001b28:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001b2c:	2b00      	cmp	r3, #0
1a001b2e:	d002      	beq.n	1a001b36 <pll_calc_divs+0x96>
1a001b30:	68fb      	ldr	r3, [r7, #12]
1a001b32:	60bb      	str	r3, [r7, #8]
1a001b34:	e005      	b.n	1a001b42 <pll_calc_divs+0xa2>
1a001b36:	693b      	ldr	r3, [r7, #16]
1a001b38:	3301      	adds	r3, #1
1a001b3a:	68fa      	ldr	r2, [r7, #12]
1a001b3c:	fa22 f303 	lsr.w	r3, r2, r3
1a001b40:	60bb      	str	r3, [r7, #8]
1a001b42:	687a      	ldr	r2, [r7, #4]
1a001b44:	68bb      	ldr	r3, [r7, #8]
1a001b46:	1ad3      	subs	r3, r2, r3
1a001b48:	4618      	mov	r0, r3
1a001b4a:	f7ff ff98 	bl	1a001a7e <ABS>
1a001b4e:	4602      	mov	r2, r0
1a001b50:	69fb      	ldr	r3, [r7, #28]
1a001b52:	4293      	cmp	r3, r2
1a001b54:	d918      	bls.n	1a001b88 <pll_calc_divs+0xe8>
1a001b56:	683b      	ldr	r3, [r7, #0]
1a001b58:	69ba      	ldr	r2, [r7, #24]
1a001b5a:	609a      	str	r2, [r3, #8]
1a001b5c:	693b      	ldr	r3, [r7, #16]
1a001b5e:	1c5a      	adds	r2, r3, #1
1a001b60:	683b      	ldr	r3, [r7, #0]
1a001b62:	60da      	str	r2, [r3, #12]
1a001b64:	683b      	ldr	r3, [r7, #0]
1a001b66:	697a      	ldr	r2, [r7, #20]
1a001b68:	611a      	str	r2, [r3, #16]
1a001b6a:	683b      	ldr	r3, [r7, #0]
1a001b6c:	68ba      	ldr	r2, [r7, #8]
1a001b6e:	619a      	str	r2, [r3, #24]
1a001b70:	683b      	ldr	r3, [r7, #0]
1a001b72:	68fa      	ldr	r2, [r7, #12]
1a001b74:	61da      	str	r2, [r3, #28]
1a001b76:	687a      	ldr	r2, [r7, #4]
1a001b78:	68bb      	ldr	r3, [r7, #8]
1a001b7a:	1ad3      	subs	r3, r2, r3
1a001b7c:	4618      	mov	r0, r3
1a001b7e:	f7ff ff7e 	bl	1a001a7e <ABS>
1a001b82:	61f8      	str	r0, [r7, #28]
1a001b84:	e000      	b.n	1a001b88 <pll_calc_divs+0xe8>
1a001b86:	bf00      	nop
1a001b88:	697b      	ldr	r3, [r7, #20]
1a001b8a:	3301      	adds	r3, #1
1a001b8c:	617b      	str	r3, [r7, #20]
1a001b8e:	697b      	ldr	r3, [r7, #20]
1a001b90:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001b94:	dda0      	ble.n	1a001ad8 <pll_calc_divs+0x38>
1a001b96:	e000      	b.n	1a001b9a <pll_calc_divs+0xfa>
1a001b98:	bf00      	nop
1a001b9a:	693b      	ldr	r3, [r7, #16]
1a001b9c:	3301      	adds	r3, #1
1a001b9e:	613b      	str	r3, [r7, #16]
1a001ba0:	693b      	ldr	r3, [r7, #16]
1a001ba2:	2b03      	cmp	r3, #3
1a001ba4:	dd95      	ble.n	1a001ad2 <pll_calc_divs+0x32>
1a001ba6:	69bb      	ldr	r3, [r7, #24]
1a001ba8:	3301      	adds	r3, #1
1a001baa:	61bb      	str	r3, [r7, #24]
1a001bac:	69bb      	ldr	r3, [r7, #24]
1a001bae:	2b04      	cmp	r3, #4
1a001bb0:	dd8c      	ble.n	1a001acc <pll_calc_divs+0x2c>
1a001bb2:	bf00      	nop
1a001bb4:	3720      	adds	r7, #32
1a001bb6:	46bd      	mov	sp, r7
1a001bb8:	bd80      	pop	{r7, pc}
1a001bba:	bf00      	nop
1a001bbc:	094c5eff 	.word	0x094c5eff
1a001bc0:	1312d000 	.word	0x1312d000

1a001bc4 <pll_get_frac>:
1a001bc4:	b5b0      	push	{r4, r5, r7, lr}
1a001bc6:	b09e      	sub	sp, #120	; 0x78
1a001bc8:	af00      	add	r7, sp, #0
1a001bca:	6078      	str	r0, [r7, #4]
1a001bcc:	6039      	str	r1, [r7, #0]
1a001bce:	f107 030c 	add.w	r3, r7, #12
1a001bd2:	2260      	movs	r2, #96	; 0x60
1a001bd4:	2100      	movs	r1, #0
1a001bd6:	4618      	mov	r0, r3
1a001bd8:	f7fe fb92 	bl	1a000300 <memset>
1a001bdc:	68fb      	ldr	r3, [r7, #12]
1a001bde:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001be2:	60fb      	str	r3, [r7, #12]
1a001be4:	683b      	ldr	r3, [r7, #0]
1a001be6:	695b      	ldr	r3, [r3, #20]
1a001be8:	623b      	str	r3, [r7, #32]
1a001bea:	683b      	ldr	r3, [r7, #0]
1a001bec:	791b      	ldrb	r3, [r3, #4]
1a001bee:	743b      	strb	r3, [r7, #16]
1a001bf0:	f107 030c 	add.w	r3, r7, #12
1a001bf4:	4619      	mov	r1, r3
1a001bf6:	6878      	ldr	r0, [r7, #4]
1a001bf8:	f7ff ff52 	bl	1a001aa0 <pll_calc_divs>
1a001bfc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001bfe:	687a      	ldr	r2, [r7, #4]
1a001c00:	429a      	cmp	r2, r3
1a001c02:	d10a      	bne.n	1a001c1a <pll_get_frac+0x56>
1a001c04:	683b      	ldr	r3, [r7, #0]
1a001c06:	461d      	mov	r5, r3
1a001c08:	f107 040c 	add.w	r4, r7, #12
1a001c0c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001c0e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001c10:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001c14:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001c18:	e08e      	b.n	1a001d38 <pll_get_frac+0x174>
1a001c1a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001c1c:	687a      	ldr	r2, [r7, #4]
1a001c1e:	1ad3      	subs	r3, r2, r3
1a001c20:	4618      	mov	r0, r3
1a001c22:	f7ff ff2c 	bl	1a001a7e <ABS>
1a001c26:	4603      	mov	r3, r0
1a001c28:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001c2a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001c2c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001c30:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001c32:	683b      	ldr	r3, [r7, #0]
1a001c34:	695b      	ldr	r3, [r3, #20]
1a001c36:	663b      	str	r3, [r7, #96]	; 0x60
1a001c38:	683b      	ldr	r3, [r7, #0]
1a001c3a:	791b      	ldrb	r3, [r3, #4]
1a001c3c:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001c40:	f107 030c 	add.w	r3, r7, #12
1a001c44:	3340      	adds	r3, #64	; 0x40
1a001c46:	4619      	mov	r1, r3
1a001c48:	6878      	ldr	r0, [r7, #4]
1a001c4a:	f7ff ff29 	bl	1a001aa0 <pll_calc_divs>
1a001c4e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001c50:	687a      	ldr	r2, [r7, #4]
1a001c52:	429a      	cmp	r2, r3
1a001c54:	d10a      	bne.n	1a001c6c <pll_get_frac+0xa8>
1a001c56:	683b      	ldr	r3, [r7, #0]
1a001c58:	461d      	mov	r5, r3
1a001c5a:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001c5e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001c60:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001c62:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001c66:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001c6a:	e065      	b.n	1a001d38 <pll_get_frac+0x174>
1a001c6c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001c6e:	687a      	ldr	r2, [r7, #4]
1a001c70:	1ad3      	subs	r3, r2, r3
1a001c72:	4618      	mov	r0, r3
1a001c74:	f7ff ff03 	bl	1a001a7e <ABS>
1a001c78:	4603      	mov	r3, r0
1a001c7a:	677b      	str	r3, [r7, #116]	; 0x74
1a001c7c:	687b      	ldr	r3, [r7, #4]
1a001c7e:	4a30      	ldr	r2, [pc, #192]	; (1a001d40 <pll_get_frac+0x17c>)
1a001c80:	4293      	cmp	r3, r2
1a001c82:	d81a      	bhi.n	1a001cba <pll_get_frac+0xf6>
1a001c84:	2340      	movs	r3, #64	; 0x40
1a001c86:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001c88:	683b      	ldr	r3, [r7, #0]
1a001c8a:	695b      	ldr	r3, [r3, #20]
1a001c8c:	643b      	str	r3, [r7, #64]	; 0x40
1a001c8e:	f107 030c 	add.w	r3, r7, #12
1a001c92:	3320      	adds	r3, #32
1a001c94:	4619      	mov	r1, r3
1a001c96:	6878      	ldr	r0, [r7, #4]
1a001c98:	f7ff ff02 	bl	1a001aa0 <pll_calc_divs>
1a001c9c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001c9e:	687a      	ldr	r2, [r7, #4]
1a001ca0:	429a      	cmp	r2, r3
1a001ca2:	d10a      	bne.n	1a001cba <pll_get_frac+0xf6>
1a001ca4:	683b      	ldr	r3, [r7, #0]
1a001ca6:	461d      	mov	r5, r3
1a001ca8:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001cac:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001cae:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001cb0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001cb4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001cb8:	e03e      	b.n	1a001d38 <pll_get_frac+0x174>
1a001cba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001cbc:	687a      	ldr	r2, [r7, #4]
1a001cbe:	1ad3      	subs	r3, r2, r3
1a001cc0:	4618      	mov	r0, r3
1a001cc2:	f7ff fedc 	bl	1a001a7e <ABS>
1a001cc6:	4603      	mov	r3, r0
1a001cc8:	673b      	str	r3, [r7, #112]	; 0x70
1a001cca:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001ccc:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001cce:	429a      	cmp	r2, r3
1a001cd0:	dc19      	bgt.n	1a001d06 <pll_get_frac+0x142>
1a001cd2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001cd4:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001cd6:	429a      	cmp	r2, r3
1a001cd8:	dc0a      	bgt.n	1a001cf0 <pll_get_frac+0x12c>
1a001cda:	683b      	ldr	r3, [r7, #0]
1a001cdc:	461d      	mov	r5, r3
1a001cde:	f107 040c 	add.w	r4, r7, #12
1a001ce2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001ce4:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001ce6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001cea:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001cee:	e023      	b.n	1a001d38 <pll_get_frac+0x174>
1a001cf0:	683b      	ldr	r3, [r7, #0]
1a001cf2:	461d      	mov	r5, r3
1a001cf4:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001cf8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001cfa:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001cfc:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001d00:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001d04:	e018      	b.n	1a001d38 <pll_get_frac+0x174>
1a001d06:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001d08:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001d0a:	429a      	cmp	r2, r3
1a001d0c:	dc0a      	bgt.n	1a001d24 <pll_get_frac+0x160>
1a001d0e:	683b      	ldr	r3, [r7, #0]
1a001d10:	461d      	mov	r5, r3
1a001d12:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001d16:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001d18:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001d1a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001d1e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001d22:	e009      	b.n	1a001d38 <pll_get_frac+0x174>
1a001d24:	683b      	ldr	r3, [r7, #0]
1a001d26:	461d      	mov	r5, r3
1a001d28:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001d2c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001d2e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001d30:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001d34:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001d38:	3778      	adds	r7, #120	; 0x78
1a001d3a:	46bd      	mov	sp, r7
1a001d3c:	bdb0      	pop	{r4, r5, r7, pc}
1a001d3e:	bf00      	nop
1a001d40:	068e7780 	.word	0x068e7780

1a001d44 <Chip_Clock_GetDivRate>:
1a001d44:	b580      	push	{r7, lr}
1a001d46:	b084      	sub	sp, #16
1a001d48:	af00      	add	r7, sp, #0
1a001d4a:	4603      	mov	r3, r0
1a001d4c:	460a      	mov	r2, r1
1a001d4e:	71fb      	strb	r3, [r7, #7]
1a001d50:	4613      	mov	r3, r2
1a001d52:	71bb      	strb	r3, [r7, #6]
1a001d54:	79bb      	ldrb	r3, [r7, #6]
1a001d56:	4618      	mov	r0, r3
1a001d58:	f000 f960 	bl	1a00201c <Chip_Clock_GetDividerSource>
1a001d5c:	4603      	mov	r3, r0
1a001d5e:	73fb      	strb	r3, [r7, #15]
1a001d60:	79bb      	ldrb	r3, [r7, #6]
1a001d62:	4618      	mov	r0, r3
1a001d64:	f000 f97a 	bl	1a00205c <Chip_Clock_GetDividerDivisor>
1a001d68:	60b8      	str	r0, [r7, #8]
1a001d6a:	7bfb      	ldrb	r3, [r7, #15]
1a001d6c:	4618      	mov	r0, r3
1a001d6e:	f000 f991 	bl	1a002094 <Chip_Clock_GetClockInputHz>
1a001d72:	4602      	mov	r2, r0
1a001d74:	68bb      	ldr	r3, [r7, #8]
1a001d76:	3301      	adds	r3, #1
1a001d78:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d7c:	4618      	mov	r0, r3
1a001d7e:	3710      	adds	r7, #16
1a001d80:	46bd      	mov	sp, r7
1a001d82:	bd80      	pop	{r7, pc}

1a001d84 <Chip_Clock_FindBaseClock>:
1a001d84:	b480      	push	{r7}
1a001d86:	b085      	sub	sp, #20
1a001d88:	af00      	add	r7, sp, #0
1a001d8a:	4603      	mov	r3, r0
1a001d8c:	80fb      	strh	r3, [r7, #6]
1a001d8e:	231c      	movs	r3, #28
1a001d90:	73fb      	strb	r3, [r7, #15]
1a001d92:	2300      	movs	r3, #0
1a001d94:	60bb      	str	r3, [r7, #8]
1a001d96:	e024      	b.n	1a001de2 <Chip_Clock_FindBaseClock+0x5e>
1a001d98:	491d      	ldr	r1, [pc, #116]	; (1a001e10 <Chip_Clock_FindBaseClock+0x8c>)
1a001d9a:	68ba      	ldr	r2, [r7, #8]
1a001d9c:	4613      	mov	r3, r2
1a001d9e:	005b      	lsls	r3, r3, #1
1a001da0:	4413      	add	r3, r2
1a001da2:	005b      	lsls	r3, r3, #1
1a001da4:	440b      	add	r3, r1
1a001da6:	881b      	ldrh	r3, [r3, #0]
1a001da8:	88fa      	ldrh	r2, [r7, #6]
1a001daa:	429a      	cmp	r2, r3
1a001dac:	d316      	bcc.n	1a001ddc <Chip_Clock_FindBaseClock+0x58>
1a001dae:	4918      	ldr	r1, [pc, #96]	; (1a001e10 <Chip_Clock_FindBaseClock+0x8c>)
1a001db0:	68ba      	ldr	r2, [r7, #8]
1a001db2:	4613      	mov	r3, r2
1a001db4:	005b      	lsls	r3, r3, #1
1a001db6:	4413      	add	r3, r2
1a001db8:	005b      	lsls	r3, r3, #1
1a001dba:	440b      	add	r3, r1
1a001dbc:	3302      	adds	r3, #2
1a001dbe:	881b      	ldrh	r3, [r3, #0]
1a001dc0:	88fa      	ldrh	r2, [r7, #6]
1a001dc2:	429a      	cmp	r2, r3
1a001dc4:	d80a      	bhi.n	1a001ddc <Chip_Clock_FindBaseClock+0x58>
1a001dc6:	4912      	ldr	r1, [pc, #72]	; (1a001e10 <Chip_Clock_FindBaseClock+0x8c>)
1a001dc8:	68ba      	ldr	r2, [r7, #8]
1a001dca:	4613      	mov	r3, r2
1a001dcc:	005b      	lsls	r3, r3, #1
1a001dce:	4413      	add	r3, r2
1a001dd0:	005b      	lsls	r3, r3, #1
1a001dd2:	440b      	add	r3, r1
1a001dd4:	3304      	adds	r3, #4
1a001dd6:	781b      	ldrb	r3, [r3, #0]
1a001dd8:	73fb      	strb	r3, [r7, #15]
1a001dda:	e002      	b.n	1a001de2 <Chip_Clock_FindBaseClock+0x5e>
1a001ddc:	68bb      	ldr	r3, [r7, #8]
1a001dde:	3301      	adds	r3, #1
1a001de0:	60bb      	str	r3, [r7, #8]
1a001de2:	7bfb      	ldrb	r3, [r7, #15]
1a001de4:	2b1c      	cmp	r3, #28
1a001de6:	d10b      	bne.n	1a001e00 <Chip_Clock_FindBaseClock+0x7c>
1a001de8:	4909      	ldr	r1, [pc, #36]	; (1a001e10 <Chip_Clock_FindBaseClock+0x8c>)
1a001dea:	68ba      	ldr	r2, [r7, #8]
1a001dec:	4613      	mov	r3, r2
1a001dee:	005b      	lsls	r3, r3, #1
1a001df0:	4413      	add	r3, r2
1a001df2:	005b      	lsls	r3, r3, #1
1a001df4:	440b      	add	r3, r1
1a001df6:	3304      	adds	r3, #4
1a001df8:	781b      	ldrb	r3, [r3, #0]
1a001dfa:	7bfa      	ldrb	r2, [r7, #15]
1a001dfc:	429a      	cmp	r2, r3
1a001dfe:	d1cb      	bne.n	1a001d98 <Chip_Clock_FindBaseClock+0x14>
1a001e00:	7bfb      	ldrb	r3, [r7, #15]
1a001e02:	4618      	mov	r0, r3
1a001e04:	3714      	adds	r7, #20
1a001e06:	46bd      	mov	sp, r7
1a001e08:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e0c:	4770      	bx	lr
1a001e0e:	bf00      	nop
1a001e10:	1a002830 	.word	0x1a002830

1a001e14 <Chip_Clock_EnableCrystal>:
1a001e14:	b480      	push	{r7}
1a001e16:	b083      	sub	sp, #12
1a001e18:	af00      	add	r7, sp, #0
1a001e1a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001e1e:	603b      	str	r3, [r7, #0]
1a001e20:	4b15      	ldr	r3, [pc, #84]	; (1a001e78 <Chip_Clock_EnableCrystal+0x64>)
1a001e22:	699b      	ldr	r3, [r3, #24]
1a001e24:	607b      	str	r3, [r7, #4]
1a001e26:	687b      	ldr	r3, [r7, #4]
1a001e28:	f023 0302 	bic.w	r3, r3, #2
1a001e2c:	607b      	str	r3, [r7, #4]
1a001e2e:	4b12      	ldr	r3, [pc, #72]	; (1a001e78 <Chip_Clock_EnableCrystal+0x64>)
1a001e30:	699b      	ldr	r3, [r3, #24]
1a001e32:	687a      	ldr	r2, [r7, #4]
1a001e34:	429a      	cmp	r2, r3
1a001e36:	d002      	beq.n	1a001e3e <Chip_Clock_EnableCrystal+0x2a>
1a001e38:	4a0f      	ldr	r2, [pc, #60]	; (1a001e78 <Chip_Clock_EnableCrystal+0x64>)
1a001e3a:	687b      	ldr	r3, [r7, #4]
1a001e3c:	6193      	str	r3, [r2, #24]
1a001e3e:	687b      	ldr	r3, [r7, #4]
1a001e40:	f023 0301 	bic.w	r3, r3, #1
1a001e44:	607b      	str	r3, [r7, #4]
1a001e46:	4b0d      	ldr	r3, [pc, #52]	; (1a001e7c <Chip_Clock_EnableCrystal+0x68>)
1a001e48:	681b      	ldr	r3, [r3, #0]
1a001e4a:	4a0d      	ldr	r2, [pc, #52]	; (1a001e80 <Chip_Clock_EnableCrystal+0x6c>)
1a001e4c:	4293      	cmp	r3, r2
1a001e4e:	d903      	bls.n	1a001e58 <Chip_Clock_EnableCrystal+0x44>
1a001e50:	687b      	ldr	r3, [r7, #4]
1a001e52:	f043 0304 	orr.w	r3, r3, #4
1a001e56:	607b      	str	r3, [r7, #4]
1a001e58:	4a07      	ldr	r2, [pc, #28]	; (1a001e78 <Chip_Clock_EnableCrystal+0x64>)
1a001e5a:	687b      	ldr	r3, [r7, #4]
1a001e5c:	6193      	str	r3, [r2, #24]
1a001e5e:	bf00      	nop
1a001e60:	683b      	ldr	r3, [r7, #0]
1a001e62:	1e5a      	subs	r2, r3, #1
1a001e64:	603a      	str	r2, [r7, #0]
1a001e66:	2b00      	cmp	r3, #0
1a001e68:	d1fa      	bne.n	1a001e60 <Chip_Clock_EnableCrystal+0x4c>
1a001e6a:	bf00      	nop
1a001e6c:	370c      	adds	r7, #12
1a001e6e:	46bd      	mov	sp, r7
1a001e70:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e74:	4770      	bx	lr
1a001e76:	bf00      	nop
1a001e78:	40050000 	.word	0x40050000
1a001e7c:	1a0026e0 	.word	0x1a0026e0
1a001e80:	01312cff 	.word	0x01312cff

1a001e84 <Chip_Clock_CalcMainPLLValue>:
1a001e84:	b580      	push	{r7, lr}
1a001e86:	b082      	sub	sp, #8
1a001e88:	af00      	add	r7, sp, #0
1a001e8a:	6078      	str	r0, [r7, #4]
1a001e8c:	6039      	str	r1, [r7, #0]
1a001e8e:	683b      	ldr	r3, [r7, #0]
1a001e90:	791b      	ldrb	r3, [r3, #4]
1a001e92:	4618      	mov	r0, r3
1a001e94:	f000 f8fe 	bl	1a002094 <Chip_Clock_GetClockInputHz>
1a001e98:	4602      	mov	r2, r0
1a001e9a:	683b      	ldr	r3, [r7, #0]
1a001e9c:	615a      	str	r2, [r3, #20]
1a001e9e:	687b      	ldr	r3, [r7, #4]
1a001ea0:	4a2b      	ldr	r2, [pc, #172]	; (1a001f50 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001ea2:	4293      	cmp	r3, r2
1a001ea4:	d807      	bhi.n	1a001eb6 <Chip_Clock_CalcMainPLLValue+0x32>
1a001ea6:	687b      	ldr	r3, [r7, #4]
1a001ea8:	4a2a      	ldr	r2, [pc, #168]	; (1a001f54 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001eaa:	4293      	cmp	r3, r2
1a001eac:	d903      	bls.n	1a001eb6 <Chip_Clock_CalcMainPLLValue+0x32>
1a001eae:	683b      	ldr	r3, [r7, #0]
1a001eb0:	695b      	ldr	r3, [r3, #20]
1a001eb2:	2b00      	cmp	r3, #0
1a001eb4:	d102      	bne.n	1a001ebc <Chip_Clock_CalcMainPLLValue+0x38>
1a001eb6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001eba:	e044      	b.n	1a001f46 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001ebc:	683b      	ldr	r3, [r7, #0]
1a001ebe:	2280      	movs	r2, #128	; 0x80
1a001ec0:	601a      	str	r2, [r3, #0]
1a001ec2:	683b      	ldr	r3, [r7, #0]
1a001ec4:	2200      	movs	r2, #0
1a001ec6:	609a      	str	r2, [r3, #8]
1a001ec8:	683b      	ldr	r3, [r7, #0]
1a001eca:	2200      	movs	r2, #0
1a001ecc:	60da      	str	r2, [r3, #12]
1a001ece:	683b      	ldr	r3, [r7, #0]
1a001ed0:	695b      	ldr	r3, [r3, #20]
1a001ed2:	687a      	ldr	r2, [r7, #4]
1a001ed4:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ed8:	461a      	mov	r2, r3
1a001eda:	683b      	ldr	r3, [r7, #0]
1a001edc:	611a      	str	r2, [r3, #16]
1a001ede:	687b      	ldr	r3, [r7, #4]
1a001ee0:	4a1d      	ldr	r2, [pc, #116]	; (1a001f58 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001ee2:	4293      	cmp	r3, r2
1a001ee4:	d909      	bls.n	1a001efa <Chip_Clock_CalcMainPLLValue+0x76>
1a001ee6:	683b      	ldr	r3, [r7, #0]
1a001ee8:	691b      	ldr	r3, [r3, #16]
1a001eea:	461a      	mov	r2, r3
1a001eec:	683b      	ldr	r3, [r7, #0]
1a001eee:	695b      	ldr	r3, [r3, #20]
1a001ef0:	fb03 f302 	mul.w	r3, r3, r2
1a001ef4:	687a      	ldr	r2, [r7, #4]
1a001ef6:	429a      	cmp	r2, r3
1a001ef8:	d00f      	beq.n	1a001f1a <Chip_Clock_CalcMainPLLValue+0x96>
1a001efa:	6839      	ldr	r1, [r7, #0]
1a001efc:	6878      	ldr	r0, [r7, #4]
1a001efe:	f7ff fe61 	bl	1a001bc4 <pll_get_frac>
1a001f02:	683b      	ldr	r3, [r7, #0]
1a001f04:	689b      	ldr	r3, [r3, #8]
1a001f06:	2b00      	cmp	r3, #0
1a001f08:	d102      	bne.n	1a001f10 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001f0a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001f0e:	e01a      	b.n	1a001f46 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001f10:	683b      	ldr	r3, [r7, #0]
1a001f12:	689b      	ldr	r3, [r3, #8]
1a001f14:	1e5a      	subs	r2, r3, #1
1a001f16:	683b      	ldr	r3, [r7, #0]
1a001f18:	609a      	str	r2, [r3, #8]
1a001f1a:	683b      	ldr	r3, [r7, #0]
1a001f1c:	691b      	ldr	r3, [r3, #16]
1a001f1e:	2b00      	cmp	r3, #0
1a001f20:	d102      	bne.n	1a001f28 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001f22:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001f26:	e00e      	b.n	1a001f46 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001f28:	683b      	ldr	r3, [r7, #0]
1a001f2a:	68db      	ldr	r3, [r3, #12]
1a001f2c:	2b00      	cmp	r3, #0
1a001f2e:	d004      	beq.n	1a001f3a <Chip_Clock_CalcMainPLLValue+0xb6>
1a001f30:	683b      	ldr	r3, [r7, #0]
1a001f32:	68db      	ldr	r3, [r3, #12]
1a001f34:	1e5a      	subs	r2, r3, #1
1a001f36:	683b      	ldr	r3, [r7, #0]
1a001f38:	60da      	str	r2, [r3, #12]
1a001f3a:	683b      	ldr	r3, [r7, #0]
1a001f3c:	691b      	ldr	r3, [r3, #16]
1a001f3e:	1e5a      	subs	r2, r3, #1
1a001f40:	683b      	ldr	r3, [r7, #0]
1a001f42:	611a      	str	r2, [r3, #16]
1a001f44:	2300      	movs	r3, #0
1a001f46:	4618      	mov	r0, r3
1a001f48:	3708      	adds	r7, #8
1a001f4a:	46bd      	mov	sp, r7
1a001f4c:	bd80      	pop	{r7, pc}
1a001f4e:	bf00      	nop
1a001f50:	0c28cb00 	.word	0x0c28cb00
1a001f54:	0094c5ef 	.word	0x0094c5ef
1a001f58:	094c5eff 	.word	0x094c5eff

1a001f5c <Chip_Clock_GetMainPLLHz>:
1a001f5c:	b580      	push	{r7, lr}
1a001f5e:	b08c      	sub	sp, #48	; 0x30
1a001f60:	af00      	add	r7, sp, #0
1a001f62:	4b2c      	ldr	r3, [pc, #176]	; (1a002014 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001f64:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001f66:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001f68:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001f6a:	0e1b      	lsrs	r3, r3, #24
1a001f6c:	b2db      	uxtb	r3, r3
1a001f6e:	f003 030f 	and.w	r3, r3, #15
1a001f72:	b2db      	uxtb	r3, r3
1a001f74:	4618      	mov	r0, r3
1a001f76:	f000 f88d 	bl	1a002094 <Chip_Clock_GetClockInputHz>
1a001f7a:	62b8      	str	r0, [r7, #40]	; 0x28
1a001f7c:	4b26      	ldr	r3, [pc, #152]	; (1a002018 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001f7e:	681b      	ldr	r3, [r3, #0]
1a001f80:	607b      	str	r3, [r7, #4]
1a001f82:	4b24      	ldr	r3, [pc, #144]	; (1a002014 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001f84:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001f86:	f003 0301 	and.w	r3, r3, #1
1a001f8a:	2b00      	cmp	r3, #0
1a001f8c:	d101      	bne.n	1a001f92 <Chip_Clock_GetMainPLLHz+0x36>
1a001f8e:	2300      	movs	r3, #0
1a001f90:	e03b      	b.n	1a00200a <Chip_Clock_GetMainPLLHz+0xae>
1a001f92:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001f94:	0c1b      	lsrs	r3, r3, #16
1a001f96:	b2db      	uxtb	r3, r3
1a001f98:	627b      	str	r3, [r7, #36]	; 0x24
1a001f9a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001f9c:	0b1b      	lsrs	r3, r3, #12
1a001f9e:	f003 0303 	and.w	r3, r3, #3
1a001fa2:	623b      	str	r3, [r7, #32]
1a001fa4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001fa6:	0a1b      	lsrs	r3, r3, #8
1a001fa8:	f003 0303 	and.w	r3, r3, #3
1a001fac:	61fb      	str	r3, [r7, #28]
1a001fae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001fb0:	09db      	lsrs	r3, r3, #7
1a001fb2:	f003 0301 	and.w	r3, r3, #1
1a001fb6:	61bb      	str	r3, [r7, #24]
1a001fb8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001fba:	099b      	lsrs	r3, r3, #6
1a001fbc:	f003 0301 	and.w	r3, r3, #1
1a001fc0:	617b      	str	r3, [r7, #20]
1a001fc2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001fc4:	3301      	adds	r3, #1
1a001fc6:	613b      	str	r3, [r7, #16]
1a001fc8:	6a3b      	ldr	r3, [r7, #32]
1a001fca:	3301      	adds	r3, #1
1a001fcc:	60fb      	str	r3, [r7, #12]
1a001fce:	1d3a      	adds	r2, r7, #4
1a001fd0:	69fb      	ldr	r3, [r7, #28]
1a001fd2:	4413      	add	r3, r2
1a001fd4:	781b      	ldrb	r3, [r3, #0]
1a001fd6:	60bb      	str	r3, [r7, #8]
1a001fd8:	69bb      	ldr	r3, [r7, #24]
1a001fda:	2b00      	cmp	r3, #0
1a001fdc:	d102      	bne.n	1a001fe4 <Chip_Clock_GetMainPLLHz+0x88>
1a001fde:	697b      	ldr	r3, [r7, #20]
1a001fe0:	2b00      	cmp	r3, #0
1a001fe2:	d007      	beq.n	1a001ff4 <Chip_Clock_GetMainPLLHz+0x98>
1a001fe4:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001fe6:	68fb      	ldr	r3, [r7, #12]
1a001fe8:	fbb2 f3f3 	udiv	r3, r2, r3
1a001fec:	693a      	ldr	r2, [r7, #16]
1a001fee:	fb02 f303 	mul.w	r3, r2, r3
1a001ff2:	e00a      	b.n	1a00200a <Chip_Clock_GetMainPLLHz+0xae>
1a001ff4:	68bb      	ldr	r3, [r7, #8]
1a001ff6:	005b      	lsls	r3, r3, #1
1a001ff8:	693a      	ldr	r2, [r7, #16]
1a001ffa:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ffe:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a002000:	68fa      	ldr	r2, [r7, #12]
1a002002:	fbb1 f2f2 	udiv	r2, r1, r2
1a002006:	fb02 f303 	mul.w	r3, r2, r3
1a00200a:	4618      	mov	r0, r3
1a00200c:	3730      	adds	r7, #48	; 0x30
1a00200e:	46bd      	mov	sp, r7
1a002010:	bd80      	pop	{r7, pc}
1a002012:	bf00      	nop
1a002014:	40050000 	.word	0x40050000
1a002018:	1a00289c 	.word	0x1a00289c

1a00201c <Chip_Clock_GetDividerSource>:
1a00201c:	b480      	push	{r7}
1a00201e:	b085      	sub	sp, #20
1a002020:	af00      	add	r7, sp, #0
1a002022:	4603      	mov	r3, r0
1a002024:	71fb      	strb	r3, [r7, #7]
1a002026:	4a0c      	ldr	r2, [pc, #48]	; (1a002058 <Chip_Clock_GetDividerSource+0x3c>)
1a002028:	79fb      	ldrb	r3, [r7, #7]
1a00202a:	3312      	adds	r3, #18
1a00202c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002030:	60fb      	str	r3, [r7, #12]
1a002032:	68fb      	ldr	r3, [r7, #12]
1a002034:	f003 0301 	and.w	r3, r3, #1
1a002038:	2b00      	cmp	r3, #0
1a00203a:	d001      	beq.n	1a002040 <Chip_Clock_GetDividerSource+0x24>
1a00203c:	2311      	movs	r3, #17
1a00203e:	e005      	b.n	1a00204c <Chip_Clock_GetDividerSource+0x30>
1a002040:	68fb      	ldr	r3, [r7, #12]
1a002042:	0e1b      	lsrs	r3, r3, #24
1a002044:	b2db      	uxtb	r3, r3
1a002046:	f003 031f 	and.w	r3, r3, #31
1a00204a:	b2db      	uxtb	r3, r3
1a00204c:	4618      	mov	r0, r3
1a00204e:	3714      	adds	r7, #20
1a002050:	46bd      	mov	sp, r7
1a002052:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002056:	4770      	bx	lr
1a002058:	40050000 	.word	0x40050000

1a00205c <Chip_Clock_GetDividerDivisor>:
1a00205c:	b480      	push	{r7}
1a00205e:	b083      	sub	sp, #12
1a002060:	af00      	add	r7, sp, #0
1a002062:	4603      	mov	r3, r0
1a002064:	71fb      	strb	r3, [r7, #7]
1a002066:	4a09      	ldr	r2, [pc, #36]	; (1a00208c <Chip_Clock_GetDividerDivisor+0x30>)
1a002068:	79fb      	ldrb	r3, [r7, #7]
1a00206a:	3312      	adds	r3, #18
1a00206c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002070:	089b      	lsrs	r3, r3, #2
1a002072:	b2da      	uxtb	r2, r3
1a002074:	79fb      	ldrb	r3, [r7, #7]
1a002076:	4906      	ldr	r1, [pc, #24]	; (1a002090 <Chip_Clock_GetDividerDivisor+0x34>)
1a002078:	5ccb      	ldrb	r3, [r1, r3]
1a00207a:	4013      	ands	r3, r2
1a00207c:	b2db      	uxtb	r3, r3
1a00207e:	4618      	mov	r0, r3
1a002080:	370c      	adds	r7, #12
1a002082:	46bd      	mov	sp, r7
1a002084:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002088:	4770      	bx	lr
1a00208a:	bf00      	nop
1a00208c:	40050000 	.word	0x40050000
1a002090:	1a0028a0 	.word	0x1a0028a0

1a002094 <Chip_Clock_GetClockInputHz>:
1a002094:	b580      	push	{r7, lr}
1a002096:	b084      	sub	sp, #16
1a002098:	af00      	add	r7, sp, #0
1a00209a:	4603      	mov	r3, r0
1a00209c:	71fb      	strb	r3, [r7, #7]
1a00209e:	2300      	movs	r3, #0
1a0020a0:	60fb      	str	r3, [r7, #12]
1a0020a2:	79fb      	ldrb	r3, [r7, #7]
1a0020a4:	2b11      	cmp	r3, #17
1a0020a6:	d87f      	bhi.n	1a0021a8 <Chip_Clock_GetClockInputHz+0x114>
1a0020a8:	a201      	add	r2, pc, #4	; (adr r2, 1a0020b0 <Chip_Clock_GetClockInputHz+0x1c>)
1a0020aa:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0020ae:	bf00      	nop
1a0020b0:	1a0020f9 	.word	0x1a0020f9
1a0020b4:	1a002101 	.word	0x1a002101
1a0020b8:	1a002107 	.word	0x1a002107
1a0020bc:	1a00211b 	.word	0x1a00211b
1a0020c0:	1a002135 	.word	0x1a002135
1a0020c4:	1a0021a9 	.word	0x1a0021a9
1a0020c8:	1a00213d 	.word	0x1a00213d
1a0020cc:	1a002145 	.word	0x1a002145
1a0020d0:	1a00214d 	.word	0x1a00214d
1a0020d4:	1a002155 	.word	0x1a002155
1a0020d8:	1a0021a9 	.word	0x1a0021a9
1a0020dc:	1a0021a9 	.word	0x1a0021a9
1a0020e0:	1a00215d 	.word	0x1a00215d
1a0020e4:	1a00216b 	.word	0x1a00216b
1a0020e8:	1a002179 	.word	0x1a002179
1a0020ec:	1a002187 	.word	0x1a002187
1a0020f0:	1a002195 	.word	0x1a002195
1a0020f4:	1a0021a3 	.word	0x1a0021a3
1a0020f8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a0020fc:	60fb      	str	r3, [r7, #12]
1a0020fe:	e056      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002100:	4b2d      	ldr	r3, [pc, #180]	; (1a0021b8 <Chip_Clock_GetClockInputHz+0x124>)
1a002102:	60fb      	str	r3, [r7, #12]
1a002104:	e053      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002106:	4b2d      	ldr	r3, [pc, #180]	; (1a0021bc <Chip_Clock_GetClockInputHz+0x128>)
1a002108:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a00210c:	f003 0307 	and.w	r3, r3, #7
1a002110:	2b04      	cmp	r3, #4
1a002112:	d04b      	beq.n	1a0021ac <Chip_Clock_GetClockInputHz+0x118>
1a002114:	4b2a      	ldr	r3, [pc, #168]	; (1a0021c0 <Chip_Clock_GetClockInputHz+0x12c>)
1a002116:	60fb      	str	r3, [r7, #12]
1a002118:	e048      	b.n	1a0021ac <Chip_Clock_GetClockInputHz+0x118>
1a00211a:	4b28      	ldr	r3, [pc, #160]	; (1a0021bc <Chip_Clock_GetClockInputHz+0x128>)
1a00211c:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002120:	f003 0307 	and.w	r3, r3, #7
1a002124:	2b04      	cmp	r3, #4
1a002126:	d002      	beq.n	1a00212e <Chip_Clock_GetClockInputHz+0x9a>
1a002128:	4b25      	ldr	r3, [pc, #148]	; (1a0021c0 <Chip_Clock_GetClockInputHz+0x12c>)
1a00212a:	60fb      	str	r3, [r7, #12]
1a00212c:	e03f      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a00212e:	4b25      	ldr	r3, [pc, #148]	; (1a0021c4 <Chip_Clock_GetClockInputHz+0x130>)
1a002130:	60fb      	str	r3, [r7, #12]
1a002132:	e03c      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002134:	4b24      	ldr	r3, [pc, #144]	; (1a0021c8 <Chip_Clock_GetClockInputHz+0x134>)
1a002136:	681b      	ldr	r3, [r3, #0]
1a002138:	60fb      	str	r3, [r7, #12]
1a00213a:	e038      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a00213c:	4b23      	ldr	r3, [pc, #140]	; (1a0021cc <Chip_Clock_GetClockInputHz+0x138>)
1a00213e:	681b      	ldr	r3, [r3, #0]
1a002140:	60fb      	str	r3, [r7, #12]
1a002142:	e034      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002144:	4b22      	ldr	r3, [pc, #136]	; (1a0021d0 <Chip_Clock_GetClockInputHz+0x13c>)
1a002146:	681b      	ldr	r3, [r3, #0]
1a002148:	60fb      	str	r3, [r7, #12]
1a00214a:	e030      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a00214c:	4b20      	ldr	r3, [pc, #128]	; (1a0021d0 <Chip_Clock_GetClockInputHz+0x13c>)
1a00214e:	685b      	ldr	r3, [r3, #4]
1a002150:	60fb      	str	r3, [r7, #12]
1a002152:	e02c      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002154:	f7ff ff02 	bl	1a001f5c <Chip_Clock_GetMainPLLHz>
1a002158:	60f8      	str	r0, [r7, #12]
1a00215a:	e028      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a00215c:	79fb      	ldrb	r3, [r7, #7]
1a00215e:	2100      	movs	r1, #0
1a002160:	4618      	mov	r0, r3
1a002162:	f7ff fdef 	bl	1a001d44 <Chip_Clock_GetDivRate>
1a002166:	60f8      	str	r0, [r7, #12]
1a002168:	e021      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a00216a:	79fb      	ldrb	r3, [r7, #7]
1a00216c:	2101      	movs	r1, #1
1a00216e:	4618      	mov	r0, r3
1a002170:	f7ff fde8 	bl	1a001d44 <Chip_Clock_GetDivRate>
1a002174:	60f8      	str	r0, [r7, #12]
1a002176:	e01a      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002178:	79fb      	ldrb	r3, [r7, #7]
1a00217a:	2102      	movs	r1, #2
1a00217c:	4618      	mov	r0, r3
1a00217e:	f7ff fde1 	bl	1a001d44 <Chip_Clock_GetDivRate>
1a002182:	60f8      	str	r0, [r7, #12]
1a002184:	e013      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002186:	79fb      	ldrb	r3, [r7, #7]
1a002188:	2103      	movs	r1, #3
1a00218a:	4618      	mov	r0, r3
1a00218c:	f7ff fdda 	bl	1a001d44 <Chip_Clock_GetDivRate>
1a002190:	60f8      	str	r0, [r7, #12]
1a002192:	e00c      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a002194:	79fb      	ldrb	r3, [r7, #7]
1a002196:	2104      	movs	r1, #4
1a002198:	4618      	mov	r0, r3
1a00219a:	f7ff fdd3 	bl	1a001d44 <Chip_Clock_GetDivRate>
1a00219e:	60f8      	str	r0, [r7, #12]
1a0021a0:	e005      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a0021a2:	2300      	movs	r3, #0
1a0021a4:	60fb      	str	r3, [r7, #12]
1a0021a6:	e002      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a0021a8:	bf00      	nop
1a0021aa:	e000      	b.n	1a0021ae <Chip_Clock_GetClockInputHz+0x11a>
1a0021ac:	bf00      	nop
1a0021ae:	68fb      	ldr	r3, [r7, #12]
1a0021b0:	4618      	mov	r0, r3
1a0021b2:	3710      	adds	r7, #16
1a0021b4:	46bd      	mov	sp, r7
1a0021b6:	bd80      	pop	{r7, pc}
1a0021b8:	00b71b00 	.word	0x00b71b00
1a0021bc:	40043000 	.word	0x40043000
1a0021c0:	017d7840 	.word	0x017d7840
1a0021c4:	02faf080 	.word	0x02faf080
1a0021c8:	1a0026dc 	.word	0x1a0026dc
1a0021cc:	1a0026e0 	.word	0x1a0026e0
1a0021d0:	1000001c 	.word	0x1000001c

1a0021d4 <Chip_Clock_GetBaseClocktHz>:
1a0021d4:	b580      	push	{r7, lr}
1a0021d6:	b082      	sub	sp, #8
1a0021d8:	af00      	add	r7, sp, #0
1a0021da:	4603      	mov	r3, r0
1a0021dc:	71fb      	strb	r3, [r7, #7]
1a0021de:	79fb      	ldrb	r3, [r7, #7]
1a0021e0:	4618      	mov	r0, r3
1a0021e2:	f000 f857 	bl	1a002294 <Chip_Clock_GetBaseClock>
1a0021e6:	4603      	mov	r3, r0
1a0021e8:	4618      	mov	r0, r3
1a0021ea:	f7ff ff53 	bl	1a002094 <Chip_Clock_GetClockInputHz>
1a0021ee:	4603      	mov	r3, r0
1a0021f0:	4618      	mov	r0, r3
1a0021f2:	3708      	adds	r7, #8
1a0021f4:	46bd      	mov	sp, r7
1a0021f6:	bd80      	pop	{r7, pc}

1a0021f8 <Chip_Clock_SetBaseClock>:
1a0021f8:	b490      	push	{r4, r7}
1a0021fa:	b084      	sub	sp, #16
1a0021fc:	af00      	add	r7, sp, #0
1a0021fe:	4604      	mov	r4, r0
1a002200:	4608      	mov	r0, r1
1a002202:	4611      	mov	r1, r2
1a002204:	461a      	mov	r2, r3
1a002206:	4623      	mov	r3, r4
1a002208:	71fb      	strb	r3, [r7, #7]
1a00220a:	4603      	mov	r3, r0
1a00220c:	71bb      	strb	r3, [r7, #6]
1a00220e:	460b      	mov	r3, r1
1a002210:	717b      	strb	r3, [r7, #5]
1a002212:	4613      	mov	r3, r2
1a002214:	713b      	strb	r3, [r7, #4]
1a002216:	4a1d      	ldr	r2, [pc, #116]	; (1a00228c <Chip_Clock_SetBaseClock+0x94>)
1a002218:	79fb      	ldrb	r3, [r7, #7]
1a00221a:	3316      	adds	r3, #22
1a00221c:	009b      	lsls	r3, r3, #2
1a00221e:	4413      	add	r3, r2
1a002220:	685b      	ldr	r3, [r3, #4]
1a002222:	60fb      	str	r3, [r7, #12]
1a002224:	79fb      	ldrb	r3, [r7, #7]
1a002226:	2b1b      	cmp	r3, #27
1a002228:	d822      	bhi.n	1a002270 <Chip_Clock_SetBaseClock+0x78>
1a00222a:	79bb      	ldrb	r3, [r7, #6]
1a00222c:	2b11      	cmp	r3, #17
1a00222e:	d028      	beq.n	1a002282 <Chip_Clock_SetBaseClock+0x8a>
1a002230:	68fa      	ldr	r2, [r7, #12]
1a002232:	4b17      	ldr	r3, [pc, #92]	; (1a002290 <Chip_Clock_SetBaseClock+0x98>)
1a002234:	4013      	ands	r3, r2
1a002236:	60fb      	str	r3, [r7, #12]
1a002238:	797b      	ldrb	r3, [r7, #5]
1a00223a:	2b00      	cmp	r3, #0
1a00223c:	d003      	beq.n	1a002246 <Chip_Clock_SetBaseClock+0x4e>
1a00223e:	68fb      	ldr	r3, [r7, #12]
1a002240:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002244:	60fb      	str	r3, [r7, #12]
1a002246:	793b      	ldrb	r3, [r7, #4]
1a002248:	2b00      	cmp	r3, #0
1a00224a:	d003      	beq.n	1a002254 <Chip_Clock_SetBaseClock+0x5c>
1a00224c:	68fb      	ldr	r3, [r7, #12]
1a00224e:	f043 0301 	orr.w	r3, r3, #1
1a002252:	60fb      	str	r3, [r7, #12]
1a002254:	79bb      	ldrb	r3, [r7, #6]
1a002256:	061b      	lsls	r3, r3, #24
1a002258:	461a      	mov	r2, r3
1a00225a:	68fb      	ldr	r3, [r7, #12]
1a00225c:	4313      	orrs	r3, r2
1a00225e:	60fb      	str	r3, [r7, #12]
1a002260:	4a0a      	ldr	r2, [pc, #40]	; (1a00228c <Chip_Clock_SetBaseClock+0x94>)
1a002262:	79fb      	ldrb	r3, [r7, #7]
1a002264:	3316      	adds	r3, #22
1a002266:	009b      	lsls	r3, r3, #2
1a002268:	4413      	add	r3, r2
1a00226a:	68fa      	ldr	r2, [r7, #12]
1a00226c:	605a      	str	r2, [r3, #4]
1a00226e:	e008      	b.n	1a002282 <Chip_Clock_SetBaseClock+0x8a>
1a002270:	4906      	ldr	r1, [pc, #24]	; (1a00228c <Chip_Clock_SetBaseClock+0x94>)
1a002272:	79fb      	ldrb	r3, [r7, #7]
1a002274:	68fa      	ldr	r2, [r7, #12]
1a002276:	f042 0201 	orr.w	r2, r2, #1
1a00227a:	3316      	adds	r3, #22
1a00227c:	009b      	lsls	r3, r3, #2
1a00227e:	440b      	add	r3, r1
1a002280:	605a      	str	r2, [r3, #4]
1a002282:	bf00      	nop
1a002284:	3710      	adds	r7, #16
1a002286:	46bd      	mov	sp, r7
1a002288:	bc90      	pop	{r4, r7}
1a00228a:	4770      	bx	lr
1a00228c:	40050000 	.word	0x40050000
1a002290:	e0fff7fe 	.word	0xe0fff7fe

1a002294 <Chip_Clock_GetBaseClock>:
1a002294:	b480      	push	{r7}
1a002296:	b085      	sub	sp, #20
1a002298:	af00      	add	r7, sp, #0
1a00229a:	4603      	mov	r3, r0
1a00229c:	71fb      	strb	r3, [r7, #7]
1a00229e:	79fb      	ldrb	r3, [r7, #7]
1a0022a0:	2b1b      	cmp	r3, #27
1a0022a2:	d901      	bls.n	1a0022a8 <Chip_Clock_GetBaseClock+0x14>
1a0022a4:	2311      	movs	r3, #17
1a0022a6:	e013      	b.n	1a0022d0 <Chip_Clock_GetBaseClock+0x3c>
1a0022a8:	4a0c      	ldr	r2, [pc, #48]	; (1a0022dc <Chip_Clock_GetBaseClock+0x48>)
1a0022aa:	79fb      	ldrb	r3, [r7, #7]
1a0022ac:	3316      	adds	r3, #22
1a0022ae:	009b      	lsls	r3, r3, #2
1a0022b0:	4413      	add	r3, r2
1a0022b2:	685b      	ldr	r3, [r3, #4]
1a0022b4:	60fb      	str	r3, [r7, #12]
1a0022b6:	68fb      	ldr	r3, [r7, #12]
1a0022b8:	f003 0301 	and.w	r3, r3, #1
1a0022bc:	2b00      	cmp	r3, #0
1a0022be:	d001      	beq.n	1a0022c4 <Chip_Clock_GetBaseClock+0x30>
1a0022c0:	2311      	movs	r3, #17
1a0022c2:	e005      	b.n	1a0022d0 <Chip_Clock_GetBaseClock+0x3c>
1a0022c4:	68fb      	ldr	r3, [r7, #12]
1a0022c6:	0e1b      	lsrs	r3, r3, #24
1a0022c8:	b2db      	uxtb	r3, r3
1a0022ca:	f003 031f 	and.w	r3, r3, #31
1a0022ce:	b2db      	uxtb	r3, r3
1a0022d0:	4618      	mov	r0, r3
1a0022d2:	3714      	adds	r7, #20
1a0022d4:	46bd      	mov	sp, r7
1a0022d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0022da:	4770      	bx	lr
1a0022dc:	40050000 	.word	0x40050000

1a0022e0 <Chip_Clock_EnableOpts>:
1a0022e0:	b480      	push	{r7}
1a0022e2:	b085      	sub	sp, #20
1a0022e4:	af00      	add	r7, sp, #0
1a0022e6:	603b      	str	r3, [r7, #0]
1a0022e8:	4603      	mov	r3, r0
1a0022ea:	80fb      	strh	r3, [r7, #6]
1a0022ec:	460b      	mov	r3, r1
1a0022ee:	717b      	strb	r3, [r7, #5]
1a0022f0:	4613      	mov	r3, r2
1a0022f2:	713b      	strb	r3, [r7, #4]
1a0022f4:	2301      	movs	r3, #1
1a0022f6:	60fb      	str	r3, [r7, #12]
1a0022f8:	797b      	ldrb	r3, [r7, #5]
1a0022fa:	2b00      	cmp	r3, #0
1a0022fc:	d003      	beq.n	1a002306 <Chip_Clock_EnableOpts+0x26>
1a0022fe:	68fb      	ldr	r3, [r7, #12]
1a002300:	f043 0302 	orr.w	r3, r3, #2
1a002304:	60fb      	str	r3, [r7, #12]
1a002306:	793b      	ldrb	r3, [r7, #4]
1a002308:	2b00      	cmp	r3, #0
1a00230a:	d003      	beq.n	1a002314 <Chip_Clock_EnableOpts+0x34>
1a00230c:	68fb      	ldr	r3, [r7, #12]
1a00230e:	f043 0304 	orr.w	r3, r3, #4
1a002312:	60fb      	str	r3, [r7, #12]
1a002314:	683b      	ldr	r3, [r7, #0]
1a002316:	2b02      	cmp	r3, #2
1a002318:	d103      	bne.n	1a002322 <Chip_Clock_EnableOpts+0x42>
1a00231a:	68fb      	ldr	r3, [r7, #12]
1a00231c:	f043 0320 	orr.w	r3, r3, #32
1a002320:	60fb      	str	r3, [r7, #12]
1a002322:	88fb      	ldrh	r3, [r7, #6]
1a002324:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002328:	d308      	bcc.n	1a00233c <Chip_Clock_EnableOpts+0x5c>
1a00232a:	490a      	ldr	r1, [pc, #40]	; (1a002354 <Chip_Clock_EnableOpts+0x74>)
1a00232c:	88fb      	ldrh	r3, [r7, #6]
1a00232e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002332:	3320      	adds	r3, #32
1a002334:	68fa      	ldr	r2, [r7, #12]
1a002336:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00233a:	e005      	b.n	1a002348 <Chip_Clock_EnableOpts+0x68>
1a00233c:	4906      	ldr	r1, [pc, #24]	; (1a002358 <Chip_Clock_EnableOpts+0x78>)
1a00233e:	88fb      	ldrh	r3, [r7, #6]
1a002340:	3320      	adds	r3, #32
1a002342:	68fa      	ldr	r2, [r7, #12]
1a002344:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002348:	bf00      	nop
1a00234a:	3714      	adds	r7, #20
1a00234c:	46bd      	mov	sp, r7
1a00234e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002352:	4770      	bx	lr
1a002354:	40052000 	.word	0x40052000
1a002358:	40051000 	.word	0x40051000

1a00235c <Chip_Clock_GetRate>:
1a00235c:	b580      	push	{r7, lr}
1a00235e:	b086      	sub	sp, #24
1a002360:	af00      	add	r7, sp, #0
1a002362:	4603      	mov	r3, r0
1a002364:	80fb      	strh	r3, [r7, #6]
1a002366:	88fb      	ldrh	r3, [r7, #6]
1a002368:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a00236c:	d308      	bcc.n	1a002380 <Chip_Clock_GetRate+0x24>
1a00236e:	4a1b      	ldr	r2, [pc, #108]	; (1a0023dc <Chip_Clock_GetRate+0x80>)
1a002370:	88fb      	ldrh	r3, [r7, #6]
1a002372:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002376:	3320      	adds	r3, #32
1a002378:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00237c:	617b      	str	r3, [r7, #20]
1a00237e:	e005      	b.n	1a00238c <Chip_Clock_GetRate+0x30>
1a002380:	4a17      	ldr	r2, [pc, #92]	; (1a0023e0 <Chip_Clock_GetRate+0x84>)
1a002382:	88fb      	ldrh	r3, [r7, #6]
1a002384:	3320      	adds	r3, #32
1a002386:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00238a:	617b      	str	r3, [r7, #20]
1a00238c:	697b      	ldr	r3, [r7, #20]
1a00238e:	f003 0301 	and.w	r3, r3, #1
1a002392:	2b00      	cmp	r3, #0
1a002394:	d01b      	beq.n	1a0023ce <Chip_Clock_GetRate+0x72>
1a002396:	88fb      	ldrh	r3, [r7, #6]
1a002398:	4618      	mov	r0, r3
1a00239a:	f7ff fcf3 	bl	1a001d84 <Chip_Clock_FindBaseClock>
1a00239e:	4603      	mov	r3, r0
1a0023a0:	72fb      	strb	r3, [r7, #11]
1a0023a2:	7afb      	ldrb	r3, [r7, #11]
1a0023a4:	4618      	mov	r0, r3
1a0023a6:	f7ff ff15 	bl	1a0021d4 <Chip_Clock_GetBaseClocktHz>
1a0023aa:	60f8      	str	r0, [r7, #12]
1a0023ac:	697b      	ldr	r3, [r7, #20]
1a0023ae:	095b      	lsrs	r3, r3, #5
1a0023b0:	f003 0307 	and.w	r3, r3, #7
1a0023b4:	2b00      	cmp	r3, #0
1a0023b6:	d102      	bne.n	1a0023be <Chip_Clock_GetRate+0x62>
1a0023b8:	2301      	movs	r3, #1
1a0023ba:	613b      	str	r3, [r7, #16]
1a0023bc:	e001      	b.n	1a0023c2 <Chip_Clock_GetRate+0x66>
1a0023be:	2302      	movs	r3, #2
1a0023c0:	613b      	str	r3, [r7, #16]
1a0023c2:	68fa      	ldr	r2, [r7, #12]
1a0023c4:	693b      	ldr	r3, [r7, #16]
1a0023c6:	fbb2 f3f3 	udiv	r3, r2, r3
1a0023ca:	60fb      	str	r3, [r7, #12]
1a0023cc:	e001      	b.n	1a0023d2 <Chip_Clock_GetRate+0x76>
1a0023ce:	2300      	movs	r3, #0
1a0023d0:	60fb      	str	r3, [r7, #12]
1a0023d2:	68fb      	ldr	r3, [r7, #12]
1a0023d4:	4618      	mov	r0, r3
1a0023d6:	3718      	adds	r7, #24
1a0023d8:	46bd      	mov	sp, r7
1a0023da:	bd80      	pop	{r7, pc}
1a0023dc:	40052000 	.word	0x40052000
1a0023e0:	40051000 	.word	0x40051000

1a0023e4 <SystemCoreClockUpdate>:
1a0023e4:	b580      	push	{r7, lr}
1a0023e6:	af00      	add	r7, sp, #0
1a0023e8:	2069      	movs	r0, #105	; 0x69
1a0023ea:	f7ff ffb7 	bl	1a00235c <Chip_Clock_GetRate>
1a0023ee:	4602      	mov	r2, r0
1a0023f0:	4b01      	ldr	r3, [pc, #4]	; (1a0023f8 <SystemCoreClockUpdate+0x14>)
1a0023f2:	601a      	str	r2, [r3, #0]
1a0023f4:	bf00      	nop
1a0023f6:	bd80      	pop	{r7, pc}
1a0023f8:	100004b0 	.word	0x100004b0

1a0023fc <Chip_GPIO_Init>:
1a0023fc:	b480      	push	{r7}
1a0023fe:	b083      	sub	sp, #12
1a002400:	af00      	add	r7, sp, #0
1a002402:	6078      	str	r0, [r7, #4]
1a002404:	bf00      	nop
1a002406:	370c      	adds	r7, #12
1a002408:	46bd      	mov	sp, r7
1a00240a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00240e:	4770      	bx	lr

1a002410 <__itoa>:
1a002410:	1e93      	subs	r3, r2, #2
1a002412:	2b22      	cmp	r3, #34	; 0x22
1a002414:	d815      	bhi.n	1a002442 <__itoa+0x32>
1a002416:	2a0a      	cmp	r2, #10
1a002418:	b510      	push	{r4, lr}
1a00241a:	460b      	mov	r3, r1
1a00241c:	d005      	beq.n	1a00242a <__itoa+0x1a>
1a00241e:	460c      	mov	r4, r1
1a002420:	4619      	mov	r1, r3
1a002422:	f000 f91b 	bl	1a00265c <__utoa>
1a002426:	4620      	mov	r0, r4
1a002428:	bd10      	pop	{r4, pc}
1a00242a:	2800      	cmp	r0, #0
1a00242c:	daf7      	bge.n	1a00241e <__itoa+0xe>
1a00242e:	242d      	movs	r4, #45	; 0x2d
1a002430:	f803 4b01 	strb.w	r4, [r3], #1
1a002434:	4240      	negs	r0, r0
1a002436:	460c      	mov	r4, r1
1a002438:	4619      	mov	r1, r3
1a00243a:	f000 f90f 	bl	1a00265c <__utoa>
1a00243e:	4620      	mov	r0, r4
1a002440:	bd10      	pop	{r4, pc}
1a002442:	2000      	movs	r0, #0
1a002444:	7008      	strb	r0, [r1, #0]
1a002446:	4770      	bx	lr

1a002448 <itoa>:
1a002448:	f7ff bfe2 	b.w	1a002410 <__itoa>

1a00244c <memcpy>:
1a00244c:	4684      	mov	ip, r0
1a00244e:	ea41 0300 	orr.w	r3, r1, r0
1a002452:	f013 0303 	ands.w	r3, r3, #3
1a002456:	d16d      	bne.n	1a002534 <memcpy+0xe8>
1a002458:	3a40      	subs	r2, #64	; 0x40
1a00245a:	d341      	bcc.n	1a0024e0 <memcpy+0x94>
1a00245c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002460:	f840 3b04 	str.w	r3, [r0], #4
1a002464:	f851 3b04 	ldr.w	r3, [r1], #4
1a002468:	f840 3b04 	str.w	r3, [r0], #4
1a00246c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002470:	f840 3b04 	str.w	r3, [r0], #4
1a002474:	f851 3b04 	ldr.w	r3, [r1], #4
1a002478:	f840 3b04 	str.w	r3, [r0], #4
1a00247c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002480:	f840 3b04 	str.w	r3, [r0], #4
1a002484:	f851 3b04 	ldr.w	r3, [r1], #4
1a002488:	f840 3b04 	str.w	r3, [r0], #4
1a00248c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002490:	f840 3b04 	str.w	r3, [r0], #4
1a002494:	f851 3b04 	ldr.w	r3, [r1], #4
1a002498:	f840 3b04 	str.w	r3, [r0], #4
1a00249c:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024a0:	f840 3b04 	str.w	r3, [r0], #4
1a0024a4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024a8:	f840 3b04 	str.w	r3, [r0], #4
1a0024ac:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024b0:	f840 3b04 	str.w	r3, [r0], #4
1a0024b4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024b8:	f840 3b04 	str.w	r3, [r0], #4
1a0024bc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024c0:	f840 3b04 	str.w	r3, [r0], #4
1a0024c4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024c8:	f840 3b04 	str.w	r3, [r0], #4
1a0024cc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024d0:	f840 3b04 	str.w	r3, [r0], #4
1a0024d4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024d8:	f840 3b04 	str.w	r3, [r0], #4
1a0024dc:	3a40      	subs	r2, #64	; 0x40
1a0024de:	d2bd      	bcs.n	1a00245c <memcpy+0x10>
1a0024e0:	3230      	adds	r2, #48	; 0x30
1a0024e2:	d311      	bcc.n	1a002508 <memcpy+0xbc>
1a0024e4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024e8:	f840 3b04 	str.w	r3, [r0], #4
1a0024ec:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024f0:	f840 3b04 	str.w	r3, [r0], #4
1a0024f4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024f8:	f840 3b04 	str.w	r3, [r0], #4
1a0024fc:	f851 3b04 	ldr.w	r3, [r1], #4
1a002500:	f840 3b04 	str.w	r3, [r0], #4
1a002504:	3a10      	subs	r2, #16
1a002506:	d2ed      	bcs.n	1a0024e4 <memcpy+0x98>
1a002508:	320c      	adds	r2, #12
1a00250a:	d305      	bcc.n	1a002518 <memcpy+0xcc>
1a00250c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002510:	f840 3b04 	str.w	r3, [r0], #4
1a002514:	3a04      	subs	r2, #4
1a002516:	d2f9      	bcs.n	1a00250c <memcpy+0xc0>
1a002518:	3204      	adds	r2, #4
1a00251a:	d008      	beq.n	1a00252e <memcpy+0xe2>
1a00251c:	07d2      	lsls	r2, r2, #31
1a00251e:	bf1c      	itt	ne
1a002520:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002524:	f800 3b01 	strbne.w	r3, [r0], #1
1a002528:	d301      	bcc.n	1a00252e <memcpy+0xe2>
1a00252a:	880b      	ldrh	r3, [r1, #0]
1a00252c:	8003      	strh	r3, [r0, #0]
1a00252e:	4660      	mov	r0, ip
1a002530:	4770      	bx	lr
1a002532:	bf00      	nop
1a002534:	2a08      	cmp	r2, #8
1a002536:	d313      	bcc.n	1a002560 <memcpy+0x114>
1a002538:	078b      	lsls	r3, r1, #30
1a00253a:	d08d      	beq.n	1a002458 <memcpy+0xc>
1a00253c:	f010 0303 	ands.w	r3, r0, #3
1a002540:	d08a      	beq.n	1a002458 <memcpy+0xc>
1a002542:	f1c3 0304 	rsb	r3, r3, #4
1a002546:	1ad2      	subs	r2, r2, r3
1a002548:	07db      	lsls	r3, r3, #31
1a00254a:	bf1c      	itt	ne
1a00254c:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002550:	f800 3b01 	strbne.w	r3, [r0], #1
1a002554:	d380      	bcc.n	1a002458 <memcpy+0xc>
1a002556:	f831 3b02 	ldrh.w	r3, [r1], #2
1a00255a:	f820 3b02 	strh.w	r3, [r0], #2
1a00255e:	e77b      	b.n	1a002458 <memcpy+0xc>
1a002560:	3a04      	subs	r2, #4
1a002562:	d3d9      	bcc.n	1a002518 <memcpy+0xcc>
1a002564:	3a01      	subs	r2, #1
1a002566:	f811 3b01 	ldrb.w	r3, [r1], #1
1a00256a:	f800 3b01 	strb.w	r3, [r0], #1
1a00256e:	d2f9      	bcs.n	1a002564 <memcpy+0x118>
1a002570:	780b      	ldrb	r3, [r1, #0]
1a002572:	7003      	strb	r3, [r0, #0]
1a002574:	784b      	ldrb	r3, [r1, #1]
1a002576:	7043      	strb	r3, [r0, #1]
1a002578:	788b      	ldrb	r3, [r1, #2]
1a00257a:	7083      	strb	r3, [r0, #2]
1a00257c:	4660      	mov	r0, ip
1a00257e:	4770      	bx	lr

1a002580 <strlen>:
1a002580:	f890 f000 	pld	[r0]
1a002584:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a002588:	f020 0107 	bic.w	r1, r0, #7
1a00258c:	f06f 0c00 	mvn.w	ip, #0
1a002590:	f010 0407 	ands.w	r4, r0, #7
1a002594:	f891 f020 	pld	[r1, #32]
1a002598:	f040 8049 	bne.w	1a00262e <strlen+0xae>
1a00259c:	f04f 0400 	mov.w	r4, #0
1a0025a0:	f06f 0007 	mvn.w	r0, #7
1a0025a4:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0025a8:	f891 f040 	pld	[r1, #64]	; 0x40
1a0025ac:	f100 0008 	add.w	r0, r0, #8
1a0025b0:	fa82 f24c 	uadd8	r2, r2, ip
1a0025b4:	faa4 f28c 	sel	r2, r4, ip
1a0025b8:	fa83 f34c 	uadd8	r3, r3, ip
1a0025bc:	faa2 f38c 	sel	r3, r2, ip
1a0025c0:	bb4b      	cbnz	r3, 1a002616 <strlen+0x96>
1a0025c2:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a0025c6:	fa82 f24c 	uadd8	r2, r2, ip
1a0025ca:	f100 0008 	add.w	r0, r0, #8
1a0025ce:	faa4 f28c 	sel	r2, r4, ip
1a0025d2:	fa83 f34c 	uadd8	r3, r3, ip
1a0025d6:	faa2 f38c 	sel	r3, r2, ip
1a0025da:	b9e3      	cbnz	r3, 1a002616 <strlen+0x96>
1a0025dc:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a0025e0:	fa82 f24c 	uadd8	r2, r2, ip
1a0025e4:	f100 0008 	add.w	r0, r0, #8
1a0025e8:	faa4 f28c 	sel	r2, r4, ip
1a0025ec:	fa83 f34c 	uadd8	r3, r3, ip
1a0025f0:	faa2 f38c 	sel	r3, r2, ip
1a0025f4:	b97b      	cbnz	r3, 1a002616 <strlen+0x96>
1a0025f6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a0025fa:	f101 0120 	add.w	r1, r1, #32
1a0025fe:	fa82 f24c 	uadd8	r2, r2, ip
1a002602:	f100 0008 	add.w	r0, r0, #8
1a002606:	faa4 f28c 	sel	r2, r4, ip
1a00260a:	fa83 f34c 	uadd8	r3, r3, ip
1a00260e:	faa2 f38c 	sel	r3, r2, ip
1a002612:	2b00      	cmp	r3, #0
1a002614:	d0c6      	beq.n	1a0025a4 <strlen+0x24>
1a002616:	2a00      	cmp	r2, #0
1a002618:	bf04      	itt	eq
1a00261a:	3004      	addeq	r0, #4
1a00261c:	461a      	moveq	r2, r3
1a00261e:	ba12      	rev	r2, r2
1a002620:	fab2 f282 	clz	r2, r2
1a002624:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a002628:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a00262c:	4770      	bx	lr
1a00262e:	e9d1 2300 	ldrd	r2, r3, [r1]
1a002632:	f004 0503 	and.w	r5, r4, #3
1a002636:	f1c4 0000 	rsb	r0, r4, #0
1a00263a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a00263e:	f014 0f04 	tst.w	r4, #4
1a002642:	f891 f040 	pld	[r1, #64]	; 0x40
1a002646:	fa0c f505 	lsl.w	r5, ip, r5
1a00264a:	ea62 0205 	orn	r2, r2, r5
1a00264e:	bf1c      	itt	ne
1a002650:	ea63 0305 	ornne	r3, r3, r5
1a002654:	4662      	movne	r2, ip
1a002656:	f04f 0400 	mov.w	r4, #0
1a00265a:	e7a9      	b.n	1a0025b0 <strlen+0x30>

1a00265c <__utoa>:
1a00265c:	b4f0      	push	{r4, r5, r6, r7}
1a00265e:	f8df c078 	ldr.w	ip, [pc, #120]	; 1a0026d8 <__utoa+0x7c>
1a002662:	4617      	mov	r7, r2
1a002664:	4604      	mov	r4, r0
1a002666:	460e      	mov	r6, r1
1a002668:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
1a00266c:	b08a      	sub	sp, #40	; 0x28
1a00266e:	466d      	mov	r5, sp
1a002670:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002672:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
1a002676:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002678:	e89c 0003 	ldmia.w	ip, {r0, r1}
1a00267c:	1ebb      	subs	r3, r7, #2
1a00267e:	f845 0b04 	str.w	r0, [r5], #4
1a002682:	2b22      	cmp	r3, #34	; 0x22
1a002684:	7029      	strb	r1, [r5, #0]
1a002686:	d823      	bhi.n	1a0026d0 <__utoa+0x74>
1a002688:	1e75      	subs	r5, r6, #1
1a00268a:	4628      	mov	r0, r5
1a00268c:	2200      	movs	r2, #0
1a00268e:	e000      	b.n	1a002692 <__utoa+0x36>
1a002690:	461a      	mov	r2, r3
1a002692:	fbb4 f1f7 	udiv	r1, r4, r7
1a002696:	ab0a      	add	r3, sp, #40	; 0x28
1a002698:	fb07 4411 	mls	r4, r7, r1, r4
1a00269c:	4423      	add	r3, r4
1a00269e:	460c      	mov	r4, r1
1a0026a0:	f813 3c28 	ldrb.w	r3, [r3, #-40]
1a0026a4:	f800 3f01 	strb.w	r3, [r0, #1]!
1a0026a8:	1c53      	adds	r3, r2, #1
1a0026aa:	2900      	cmp	r1, #0
1a0026ac:	d1f0      	bne.n	1a002690 <__utoa+0x34>
1a0026ae:	54f1      	strb	r1, [r6, r3]
1a0026b0:	b152      	cbz	r2, 1a0026c8 <__utoa+0x6c>
1a0026b2:	4433      	add	r3, r6
1a0026b4:	f813 1d01 	ldrb.w	r1, [r3, #-1]!
1a0026b8:	f815 0f01 	ldrb.w	r0, [r5, #1]!
1a0026bc:	7029      	strb	r1, [r5, #0]
1a0026be:	3401      	adds	r4, #1
1a0026c0:	1b11      	subs	r1, r2, r4
1a0026c2:	428c      	cmp	r4, r1
1a0026c4:	7018      	strb	r0, [r3, #0]
1a0026c6:	dbf5      	blt.n	1a0026b4 <__utoa+0x58>
1a0026c8:	4630      	mov	r0, r6
1a0026ca:	b00a      	add	sp, #40	; 0x28
1a0026cc:	bcf0      	pop	{r4, r5, r6, r7}
1a0026ce:	4770      	bx	lr
1a0026d0:	2000      	movs	r0, #0
1a0026d2:	7030      	strb	r0, [r6, #0]
1a0026d4:	e7f9      	b.n	1a0026ca <__utoa+0x6e>
1a0026d6:	bf00      	nop
1a0026d8:	1a0028a8 	.word	0x1a0028a8

1a0026dc <ExtRateIn>:
1a0026dc:	00000000                                ....

1a0026e0 <OscRateIn>:
1a0026e0:	00b71b00                                ....

1a0026e4 <msg1>:
1a0026e4:	67617061 6f646e61 64656c20 ff002073     apagando leds ..

1a0026f4 <msg2>:
1a0026f4:	6e657270 6e656964 6c206f64 20736465     prendiendo leds 
1a002704:	ffffff00                                ....

1a002708 <msg3>:
1a002708:	69626148 6174696c 65206f64 6f63206c     Habilitado el co
1a002718:	6f65746e 6c65202c 73696d20 73206f6d     nteo, el mismo s
1a002728:	756d2065 72747365 6f702061 61702072     e muestra por pa
1a002738:	6c61746e 0a0d616c ffffff00              ntalla......

1a002744 <msg4>:
1a002744:	68736544 6c696261 64617469 6c65206f     Deshabilitado el
1a002754:	6e6f6320 2c6f6574 676e6920 65736572      conteo, ingrese
1a002764:	206e7520 61726163 72657463 72617020      un caracter par
1a002774:	6f6d2061 61727473 6c652072 6f636520     a mostrar el eco
1a002784:	ff000a0d ff000d0a                       ........

1a00278c <leds>:
1a00278c:	01050102 06040004 00000602 05020504     ................
1a00279c:	04040000 00000402 0c050804 09040004     ................
1a0027ac:	00040d05 0e050a04 05010004 00000801     ................

1a0027bc <keys>:
1a0027bc:	04000001 010100c0 00c00800 09000201     ................
1a0027cc:	060100c0 00c00901 ff000d0a              ............

1a0027d8 <InitClkStates>:
1a0027d8:	00010100 00010909 0001090a 01010701     ................
1a0027e8:	00010902 00010906 0101090c 0001090d     ................
1a0027f8:	0001090e 0001090f 00010910 00010911     ................
1a002808:	00010912 00010913 00011114 00011119     ................
1a002818:	0001111a 0001111b                       ........

1a002820 <UART_PClock>:
1a002820:	00820081 00a200a1                       ........

1a002828 <UART_BClock>:
1a002828:	01a201c2 01620182                       ......b.

1a002830 <periph_to_base>:
1a002830:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a002840:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a002850:	000100e0 01000100 01200003 00060120     .......... . ...
1a002860:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a002870:	01820013 00120182 01a201a2 01c20011     ................
1a002880:	001001c2 01e201e2 0202000f 000e0202     ................
1a002890:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a0028a0:	0f0f0f03 ffff00ff 33323130 37363534     ........01234567
1a0028b0:	62613938 66656463 6a696867 6e6d6c6b     89abcdefghijklmn
1a0028c0:	7271706f 76757473 7a797877 00000000     opqrstuvwxyz....

Disassembly of section .init:

1a0028d0 <_init>:
1a0028d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0028d2:	bf00      	nop

Disassembly of section .fini:

1a0028d4 <_fini>:
1a0028d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0028d6:	bf00      	nop
