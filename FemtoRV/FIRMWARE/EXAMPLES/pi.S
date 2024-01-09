
pi.baremetal.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	004001b7          	lui	gp,0x400
       4:	000802b7          	lui	t0,0x80
       8:	003282b3          	add	t0,t0,gp
       c:	0002a103          	lw	sp,0(t0) # 80000 <IO_HW_CONFIG_RAM>
      10:	00000293          	li	t0,0
      14:	00005097          	auipc	ra,0x5
      18:	c9c080e7          	jalr	-868(ra) # 4cb0 <_end>
      1c:	00001317          	auipc	t1,0x1
      20:	fe830067          	jr	-24(t1) # 1004 <exit>

00000024 <__errno>:
      24:	00007537          	lui	a0,0x7
      28:	a4850513          	addi	a0,a0,-1464 # 6a48 <val.3798>
      2c:	00008067          	ret

00000030 <inv_mod>:
      30:	00058693          	mv	a3,a1
      34:	00100793          	li	a5,1
      38:	00000813          	li	a6,0
      3c:	02a6c733          	div	a4,a3,a0
      40:	02a6e633          	rem	a2,a3,a0
      44:	00050693          	mv	a3,a0
      48:	02f70733          	mul	a4,a4,a5
      4c:	40e80733          	sub	a4,a6,a4
      50:	00078813          	mv	a6,a5
      54:	00061a63          	bnez	a2,68 <IO_SSD1351_CMD+0x28>
      58:	02b7e533          	rem	a0,a5,a1
      5c:	00055463          	bgez	a0,64 <IO_SSD1351_CMD+0x24>
      60:	00b50533          	add	a0,a0,a1
      64:	00008067          	ret
      68:	00070793          	mv	a5,a4
      6c:	00060513          	mv	a0,a2
      70:	fcdff06f          	j	3c <inv_mod+0xc>

00000074 <pow_mod>:
      74:	fe010113          	addi	sp,sp,-32
      78:	00812c23          	sw	s0,24(sp)
      7c:	00912a23          	sw	s1,20(sp)
      80:	01212823          	sw	s2,16(sp)
      84:	01312623          	sw	s3,12(sp)
      88:	01412423          	sw	s4,8(sp)
      8c:	00112e23          	sw	ra,28(sp)
      90:	00050413          	mv	s0,a0
      94:	00058913          	mv	s2,a1
      98:	00060993          	mv	s3,a2
      9c:	00100493          	li	s1,1
      a0:	41f65a13          	srai	s4,a2,0x1f
      a4:	00197793          	andi	a5,s2,1
      a8:	02078063          	beqz	a5,c8 <IO_SSD1351_DAT+0x48>
      ac:	028495b3          	mulh	a1,s1,s0
      b0:	00098613          	mv	a2,s3
      b4:	000a0693          	mv	a3,s4
      b8:	02848533          	mul	a0,s1,s0
      bc:	00002097          	auipc	ra,0x2
      c0:	744080e7          	jalr	1860(ra) # 2800 <__moddi3>
      c4:	00050493          	mv	s1,a0
      c8:	40195913          	srai	s2,s2,0x1
      cc:	02090263          	beqz	s2,f0 <IO_SSD1351_DAT+0x70>
      d0:	028415b3          	mulh	a1,s0,s0
      d4:	00098613          	mv	a2,s3
      d8:	000a0693          	mv	a3,s4
      dc:	02840533          	mul	a0,s0,s0
      e0:	00002097          	auipc	ra,0x2
      e4:	720080e7          	jalr	1824(ra) # 2800 <__moddi3>
      e8:	00050413          	mv	s0,a0
      ec:	fb9ff06f          	j	a4 <IO_SSD1351_DAT+0x24>
      f0:	01c12083          	lw	ra,28(sp)
      f4:	01812403          	lw	s0,24(sp)
      f8:	00048513          	mv	a0,s1
      fc:	01012903          	lw	s2,16(sp)
     100:	01412483          	lw	s1,20(sp)
     104:	00c12983          	lw	s3,12(sp)
     108:	00812a03          	lw	s4,8(sp)
     10c:	02010113          	addi	sp,sp,32
     110:	00008067          	ret

00000114 <is_prime>:
     114:	00157713          	andi	a4,a0,1
     118:	02071063          	bnez	a4,138 <is_prime+0x24>
     11c:	00000513          	li	a0,0
     120:	00008067          	ret
     124:	00000513          	li	a0,0
     128:	00c12083          	lw	ra,12(sp)
     12c:	00812403          	lw	s0,8(sp)
     130:	01010113          	addi	sp,sp,16
     134:	00008067          	ret
     138:	ff010113          	addi	sp,sp,-16
     13c:	00112623          	sw	ra,12(sp)
     140:	00812423          	sw	s0,8(sp)
     144:	00050413          	mv	s0,a0
     148:	00005097          	auipc	ra,0x5
     14c:	a6c080e7          	jalr	-1428(ra) # 4bb4 <__floatsidf>
     150:	00002097          	auipc	ra,0x2
     154:	928080e7          	jalr	-1752(ra) # 1a78 <sqrt>
     158:	00005097          	auipc	ra,0x5
     15c:	9dc080e7          	jalr	-1572(ra) # 4b34 <__fixdfsi>
     160:	00300793          	li	a5,3
     164:	00f55663          	bge	a0,a5,170 <is_prime+0x5c>
     168:	00100513          	li	a0,1
     16c:	fbdff06f          	j	128 <is_prime+0x14>
     170:	02f46733          	rem	a4,s0,a5
     174:	fa0708e3          	beqz	a4,124 <is_prime+0x10>
     178:	00278793          	addi	a5,a5,2
     17c:	fe9ff06f          	j	164 <is_prime+0x50>

00000180 <next_prime>:
     180:	ff010113          	addi	sp,sp,-16
     184:	00812423          	sw	s0,8(sp)
     188:	00112623          	sw	ra,12(sp)
     18c:	00050413          	mv	s0,a0
     190:	00140413          	addi	s0,s0,1
     194:	00040513          	mv	a0,s0
     198:	00000097          	auipc	ra,0x0
     19c:	f7c080e7          	jalr	-132(ra) # 114 <is_prime>
     1a0:	fe0508e3          	beqz	a0,190 <next_prime+0x10>
     1a4:	00040513          	mv	a0,s0
     1a8:	00c12083          	lw	ra,12(sp)
     1ac:	00812403          	lw	s0,8(sp)
     1b0:	01010113          	addi	sp,sp,16
     1b4:	00008067          	ret

000001b8 <digits>:
     1b8:	f9010113          	addi	sp,sp,-112
     1bc:	06812423          	sw	s0,104(sp)
     1c0:	00050413          	mv	s0,a0
     1c4:	01450513          	addi	a0,a0,20
     1c8:	06112623          	sw	ra,108(sp)
     1cc:	05612823          	sw	s6,80(sp)
     1d0:	05712623          	sw	s7,76(sp)
     1d4:	05a12023          	sw	s10,64(sp)
     1d8:	06912223          	sw	s1,100(sp)
     1dc:	07212023          	sw	s2,96(sp)
     1e0:	05312e23          	sw	s3,92(sp)
     1e4:	05412c23          	sw	s4,88(sp)
     1e8:	05512a23          	sw	s5,84(sp)
     1ec:	05812423          	sw	s8,72(sp)
     1f0:	05912223          	sw	s9,68(sp)
     1f4:	03b12e23          	sw	s11,60(sp)
     1f8:	00005097          	auipc	ra,0x5
     1fc:	9bc080e7          	jalr	-1604(ra) # 4bb4 <__floatsidf>
     200:	000057b7          	lui	a5,0x5
     204:	d287a603          	lw	a2,-728(a5) # 4d28 <_end+0x78>
     208:	d2c7a683          	lw	a3,-724(a5)
     20c:	00000b13          	li	s6,0
     210:	00000b93          	li	s7,0
     214:	00004097          	auipc	ra,0x4
     218:	b3c080e7          	jalr	-1220(ra) # 3d50 <__muldf3>
     21c:	000057b7          	lui	a5,0x5
     220:	d307a603          	lw	a2,-720(a5) # 4d30 <_end+0x80>
     224:	d347a683          	lw	a3,-716(a5)
     228:	00300d13          	li	s10,3
     22c:	00003097          	auipc	ra,0x3
     230:	1f4080e7          	jalr	500(ra) # 3420 <__divdf3>
     234:	00005097          	auipc	ra,0x5
     238:	900080e7          	jalr	-1792(ra) # 4b34 <__fixdfsi>
     23c:	00151793          	slli	a5,a0,0x1
     240:	00005737          	lui	a4,0x5
     244:	00f12a23          	sw	a5,20(sp)
     248:	fff40793          	addi	a5,s0,-1
     24c:	02f12423          	sw	a5,40(sp)
     250:	d3c72803          	lw	a6,-708(a4) # 4d3c <_end+0x8c>
     254:	d3872783          	lw	a5,-712(a4)
     258:	00a12c23          	sw	a0,24(sp)
     25c:	03012223          	sw	a6,36(sp)
     260:	02f12023          	sw	a5,32(sp)
     264:	01412783          	lw	a5,20(sp)
     268:	07a7d263          	bge	a5,s10,2cc <IO_MAX7219_DAT+0xcc>
     26c:	000057b7          	lui	a5,0x5
     270:	d407a603          	lw	a2,-704(a5) # 4d40 <_end+0x90>
     274:	d447a683          	lw	a3,-700(a5)
     278:	000b0513          	mv	a0,s6
     27c:	000b8593          	mv	a1,s7
     280:	00004097          	auipc	ra,0x4
     284:	ad0080e7          	jalr	-1328(ra) # 3d50 <__muldf3>
     288:	00005097          	auipc	ra,0x5
     28c:	8ac080e7          	jalr	-1876(ra) # 4b34 <__fixdfsi>
     290:	06c12083          	lw	ra,108(sp)
     294:	06812403          	lw	s0,104(sp)
     298:	06412483          	lw	s1,100(sp)
     29c:	06012903          	lw	s2,96(sp)
     2a0:	05c12983          	lw	s3,92(sp)
     2a4:	05812a03          	lw	s4,88(sp)
     2a8:	05412a83          	lw	s5,84(sp)
     2ac:	05012b03          	lw	s6,80(sp)
     2b0:	04c12b83          	lw	s7,76(sp)
     2b4:	04812c03          	lw	s8,72(sp)
     2b8:	04412c83          	lw	s9,68(sp)
     2bc:	04012d03          	lw	s10,64(sp)
     2c0:	03c12d83          	lw	s11,60(sp)
     2c4:	07010113          	addi	sp,sp,112
     2c8:	00008067          	ret
     2cc:	01412503          	lw	a0,20(sp)
     2d0:	00100d93          	li	s11,1
     2d4:	00005097          	auipc	ra,0x5
     2d8:	8e0080e7          	jalr	-1824(ra) # 4bb4 <__floatsidf>
     2dc:	00001097          	auipc	ra,0x1
     2e0:	688080e7          	jalr	1672(ra) # 1964 <log>
     2e4:	00050413          	mv	s0,a0
     2e8:	000d0513          	mv	a0,s10
     2ec:	00058493          	mv	s1,a1
     2f0:	00005097          	auipc	ra,0x5
     2f4:	8c4080e7          	jalr	-1852(ra) # 4bb4 <__floatsidf>
     2f8:	00001097          	auipc	ra,0x1
     2fc:	66c080e7          	jalr	1644(ra) # 1964 <log>
     300:	00058693          	mv	a3,a1
     304:	00050613          	mv	a2,a0
     308:	00048593          	mv	a1,s1
     30c:	00040513          	mv	a0,s0
     310:	00003097          	auipc	ra,0x3
     314:	110080e7          	jalr	272(ra) # 3420 <__divdf3>
     318:	00005097          	auipc	ra,0x5
     31c:	81c080e7          	jalr	-2020(ra) # 4b34 <__fixdfsi>
     320:	00a12e23          	sw	a0,28(sp)
     324:	00000693          	li	a3,0
     328:	01c12783          	lw	a5,28(sp)
     32c:	0cf6ca63          	blt	a3,a5,400 <IO_SDCARD>
     330:	00100793          	li	a5,1
     334:	00100a93          	li	s5,1
     338:	00012823          	sw	zero,16(sp)
     33c:	00000413          	li	s0,0
     340:	00000913          	li	s2,0
     344:	00100493          	li	s1,1
     348:	00100a13          	li	s4,1
     34c:	00100c13          	li	s8,1
     350:	00f12623          	sw	a5,12(sp)
     354:	41fdd993          	srai	s3,s11,0x1f
     358:	01812783          	lw	a5,24(sp)
     35c:	000a8513          	mv	a0,s5
     360:	0b57d663          	bge	a5,s5,40c <IO_SDCARD+0xc>
     364:	02812583          	lw	a1,40(sp)
     368:	000d8613          	mv	a2,s11
     36c:	00a00513          	li	a0,10
     370:	00000097          	auipc	ra,0x0
     374:	d04080e7          	jalr	-764(ra) # 74 <pow_mod>
     378:	02a415b3          	mulh	a1,s0,a0
     37c:	000d8613          	mv	a2,s11
     380:	41fdd693          	srai	a3,s11,0x1f
     384:	02a40533          	mul	a0,s0,a0
     388:	00002097          	auipc	ra,0x2
     38c:	478080e7          	jalr	1144(ra) # 2800 <__moddi3>
     390:	00005097          	auipc	ra,0x5
     394:	824080e7          	jalr	-2012(ra) # 4bb4 <__floatsidf>
     398:	00050413          	mv	s0,a0
     39c:	000d8513          	mv	a0,s11
     3a0:	00058493          	mv	s1,a1
     3a4:	00005097          	auipc	ra,0x5
     3a8:	810080e7          	jalr	-2032(ra) # 4bb4 <__floatsidf>
     3ac:	00050613          	mv	a2,a0
     3b0:	00058693          	mv	a3,a1
     3b4:	00040513          	mv	a0,s0
     3b8:	00048593          	mv	a1,s1
     3bc:	00003097          	auipc	ra,0x3
     3c0:	064080e7          	jalr	100(ra) # 3420 <__divdf3>
     3c4:	000b0613          	mv	a2,s6
     3c8:	000b8693          	mv	a3,s7
     3cc:	00003097          	auipc	ra,0x3
     3d0:	88c080e7          	jalr	-1908(ra) # 2c58 <__adddf3>
     3d4:	02012603          	lw	a2,32(sp)
     3d8:	02412683          	lw	a3,36(sp)
     3dc:	00001097          	auipc	ra,0x1
     3e0:	480080e7          	jalr	1152(ra) # 185c <fmod>
     3e4:	00050b13          	mv	s6,a0
     3e8:	000d0513          	mv	a0,s10
     3ec:	00058b93          	mv	s7,a1
     3f0:	00000097          	auipc	ra,0x0
     3f4:	d90080e7          	jalr	-624(ra) # 180 <next_prime>
     3f8:	00050d13          	mv	s10,a0
     3fc:	e69ff06f          	j	264 <IO_MAX7219_DAT+0x64>
     400:	03ad8db3          	mul	s11,s11,s10
     404:	00168693          	addi	a3,a3,1
     408:	f21ff06f          	j	328 <IO_MAX7219_DAT+0x128>
     40c:	01aa4c63          	blt	s4,s10,424 <IO_SDCARD+0x24>
     410:	03a54533          	div	a0,a0,s10
     414:	fff90913          	addi	s2,s2,-1
     418:	03a566b3          	rem	a3,a0,s10
     41c:	fe068ae3          	beqz	a3,410 <IO_SDCARD+0x10>
     420:	00000a13          	li	s4,0
     424:	00c12783          	lw	a5,12(sp)
     428:	000d8613          	mv	a2,s11
     42c:	00098693          	mv	a3,s3
     430:	02a795b3          	mulh	a1,a5,a0
     434:	001a0a13          	addi	s4,s4,1
     438:	02a78533          	mul	a0,a5,a0
     43c:	00002097          	auipc	ra,0x2
     440:	3c4080e7          	jalr	964(ra) # 2800 <__moddi3>
     444:	00050893          	mv	a7,a0
     448:	00a12623          	sw	a0,12(sp)
     44c:	001a9513          	slli	a0,s5,0x1
     450:	00058c93          	mv	s9,a1
     454:	fff50513          	addi	a0,a0,-1
     458:	01a4ce63          	blt	s1,s10,474 <IO_SDCARD+0x74>
     45c:	009d1a63          	bne	s10,s1,470 <IO_SDCARD+0x70>
     460:	03a54533          	div	a0,a0,s10
     464:	00190913          	addi	s2,s2,1
     468:	03a566b3          	rem	a3,a0,s10
     46c:	fe068ae3          	beqz	a3,460 <IO_SDCARD+0x60>
     470:	41a484b3          	sub	s1,s1,s10
     474:	02ac15b3          	mulh	a1,s8,a0
     478:	000d8613          	mv	a2,s11
     47c:	00098693          	mv	a3,s3
     480:	03112623          	sw	a7,44(sp)
     484:	00248493          	addi	s1,s1,2
     488:	02ac0533          	mul	a0,s8,a0
     48c:	00002097          	auipc	ra,0x2
     490:	374080e7          	jalr	884(ra) # 2800 <__moddi3>
     494:	00050c13          	mv	s8,a0
     498:	09205263          	blez	s2,51c <IO_SDCARD+0x11c>
     49c:	000d8593          	mv	a1,s11
     4a0:	00000097          	auipc	ra,0x0
     4a4:	b90080e7          	jalr	-1136(ra) # 30 <inv_mod>
     4a8:	02c12883          	lw	a7,44(sp)
     4ac:	41f55593          	srai	a1,a0,0x1f
     4b0:	03950cb3          	mul	s9,a0,s9
     4b4:	000d8613          	mv	a2,s11
     4b8:	00098693          	mv	a3,s3
     4bc:	031585b3          	mul	a1,a1,a7
     4c0:	01958cb3          	add	s9,a1,s9
     4c4:	031535b3          	mulhu	a1,a0,a7
     4c8:	03150533          	mul	a0,a0,a7
     4cc:	00bc85b3          	add	a1,s9,a1
     4d0:	00090c93          	mv	s9,s2
     4d4:	00002097          	auipc	ra,0x2
     4d8:	32c080e7          	jalr	812(ra) # 2800 <__moddi3>
     4dc:	01012783          	lw	a5,16(sp)
     4e0:	035585b3          	mul	a1,a1,s5
     4e4:	000d8613          	mv	a2,s11
     4e8:	02a786b3          	mul	a3,a5,a0
     4ec:	035538b3          	mulhu	a7,a0,s5
     4f0:	00d585b3          	add	a1,a1,a3
     4f4:	00098693          	mv	a3,s3
     4f8:	03550533          	mul	a0,a0,s5
     4fc:	011585b3          	add	a1,a1,a7
     500:	00002097          	auipc	ra,0x2
     504:	300080e7          	jalr	768(ra) # 2800 <__moddi3>
     508:	01c12783          	lw	a5,28(sp)
     50c:	02fcc663          	blt	s9,a5,538 <IO_SDCARD+0x138>
     510:	00a40433          	add	s0,s0,a0
     514:	01b44463          	blt	s0,s11,51c <IO_SDCARD+0x11c>
     518:	41b40433          	sub	s0,s0,s11
     51c:	01012783          	lw	a5,16(sp)
     520:	001a8693          	addi	a3,s5,1
     524:	0156b633          	sltu	a2,a3,s5
     528:	00f607b3          	add	a5,a2,a5
     52c:	00068a93          	mv	s5,a3
     530:	00f12823          	sw	a5,16(sp)
     534:	e25ff06f          	j	358 <IO_MAX7219_DAT+0x158>
     538:	03a515b3          	mulh	a1,a0,s10
     53c:	000d8613          	mv	a2,s11
     540:	00098693          	mv	a3,s3
     544:	001c8c93          	addi	s9,s9,1
     548:	03a50533          	mul	a0,a0,s10
     54c:	00002097          	auipc	ra,0x2
     550:	2b4080e7          	jalr	692(ra) # 2800 <__moddi3>
     554:	fb5ff06f          	j	508 <IO_SDCARD+0x108>

00000558 <femtosoc_tty_init>:
     558:	00500737          	lui	a4,0x500
     55c:	00072783          	lw	a5,0(a4) # 500000 <IO_BASE+0x100000>
     560:	0087f793          	andi	a5,a5,8
     564:	00078863          	beqz	a5,574 <femtosoc_tty_init+0x1c>
     568:	fff00513          	li	a0,-1
     56c:	00000317          	auipc	t1,0x0
     570:	48430067          	jr	1156(t1) # 9f0 <GL_tty_init>
     574:	00072783          	lw	a5,0(a4)
     578:	0807f793          	andi	a5,a5,128
     57c:	00078663          	beqz	a5,588 <femtosoc_tty_init+0x30>
     580:	00000317          	auipc	t1,0x0
     584:	15030067          	jr	336(t1) # 6d0 <MAX7219_tty_init>
     588:	00008067          	ret

0000058c <MAX7219_shift>:
     58c:	fe010113          	addi	sp,sp,-32
     590:	00812c23          	sw	s0,24(sp)
     594:	00007437          	lui	s0,0x7
     598:	01212823          	sw	s2,16(sp)
     59c:	01312623          	sw	s3,12(sp)
     5a0:	00112e23          	sw	ra,28(sp)
     5a4:	00912a23          	sw	s1,20(sp)
     5a8:	a3440413          	addi	s0,s0,-1484 # 6a34 <buff>
     5ac:	00000793          	li	a5,0
     5b0:	00700993          	li	s3,7
     5b4:	00f00913          	li	s2,15
     5b8:	00178493          	addi	s1,a5,1
     5bc:	00f9ea63          	bltu	s3,a5,5d0 <MAX7219_shift+0x44>
     5c0:	00044583          	lbu	a1,0(s0)
     5c4:	00048513          	mv	a0,s1
     5c8:	00001097          	auipc	ra,0x1
     5cc:	aa0080e7          	jalr	-1376(ra) # 1068 <MAX7219>
     5d0:	00144783          	lbu	a5,1(s0)
     5d4:	00140413          	addi	s0,s0,1
     5d8:	fef40fa3          	sb	a5,-1(s0)
     5dc:	00048793          	mv	a5,s1
     5e0:	fd249ce3          	bne	s1,s2,5b8 <MAX7219_shift+0x2c>
     5e4:	01812403          	lw	s0,24(sp)
     5e8:	01c12083          	lw	ra,28(sp)
     5ec:	01412483          	lw	s1,20(sp)
     5f0:	01012903          	lw	s2,16(sp)
     5f4:	00c12983          	lw	s3,12(sp)
     5f8:	03c00513          	li	a0,60
     5fc:	02010113          	addi	sp,sp,32
     600:	00001317          	auipc	t1,0x1
     604:	da830067          	jr	-600(t1) # 13a8 <milliwait>

00000608 <MAX7219_putchar>:
     608:	ff010113          	addi	sp,sp,-16
     60c:	00812423          	sw	s0,8(sp)
     610:	00112623          	sw	ra,12(sp)
     614:	00a00793          	li	a5,10
     618:	00050413          	mv	s0,a0
     61c:	02f51863          	bne	a0,a5,64c <MAX7219_putchar+0x44>
     620:	02000513          	li	a0,32
     624:	00000097          	auipc	ra,0x0
     628:	fe4080e7          	jalr	-28(ra) # 608 <MAX7219_putchar>
     62c:	02000513          	li	a0,32
     630:	00000097          	auipc	ra,0x0
     634:	fd8080e7          	jalr	-40(ra) # 608 <MAX7219_putchar>
     638:	00040513          	mv	a0,s0
     63c:	00c12083          	lw	ra,12(sp)
     640:	00812403          	lw	s0,8(sp)
     644:	01010113          	addi	sp,sp,16
     648:	00008067          	ret
     64c:	00d00793          	li	a5,13
     650:	fcf508e3          	beq	a0,a5,620 <MAX7219_putchar+0x18>
     654:	000057b7          	lui	a5,0x5
     658:	5d07a583          	lw	a1,1488(a5) # 55d0 <font_8x8>
     65c:	000077b7          	lui	a5,0x7
     660:	00351513          	slli	a0,a0,0x3
     664:	a3478793          	addi	a5,a5,-1484 # 6a34 <buff>
     668:	00000713          	li	a4,0
     66c:	00800613          	li	a2,8
     670:	00a706b3          	add	a3,a4,a0
     674:	00d586b3          	add	a3,a1,a3
     678:	0006c683          	lbu	a3,0(a3)
     67c:	00170713          	addi	a4,a4,1
     680:	00178793          	addi	a5,a5,1
     684:	00d783a3          	sb	a3,7(a5)
     688:	fec714e3          	bne	a4,a2,670 <MAX7219_putchar+0x68>
     68c:	00000097          	auipc	ra,0x0
     690:	f00080e7          	jalr	-256(ra) # 58c <MAX7219_shift>
     694:	00000097          	auipc	ra,0x0
     698:	ef8080e7          	jalr	-264(ra) # 58c <MAX7219_shift>
     69c:	00000097          	auipc	ra,0x0
     6a0:	ef0080e7          	jalr	-272(ra) # 58c <MAX7219_shift>
     6a4:	00000097          	auipc	ra,0x0
     6a8:	ee8080e7          	jalr	-280(ra) # 58c <MAX7219_shift>
     6ac:	00000097          	auipc	ra,0x0
     6b0:	ee0080e7          	jalr	-288(ra) # 58c <MAX7219_shift>
     6b4:	00000097          	auipc	ra,0x0
     6b8:	ed8080e7          	jalr	-296(ra) # 58c <MAX7219_shift>
     6bc:	00000097          	auipc	ra,0x0
     6c0:	ed0080e7          	jalr	-304(ra) # 58c <MAX7219_shift>
     6c4:	00000097          	auipc	ra,0x0
     6c8:	ec8080e7          	jalr	-312(ra) # 58c <MAX7219_shift>
     6cc:	f6dff06f          	j	638 <MAX7219_putchar+0x30>

000006d0 <MAX7219_tty_init>:
     6d0:	ff010113          	addi	sp,sp,-16
     6d4:	00812423          	sw	s0,8(sp)
     6d8:	00912223          	sw	s1,4(sp)
     6dc:	00112623          	sw	ra,12(sp)
     6e0:	00000413          	li	s0,0
     6e4:	00001097          	auipc	ra,0x1
     6e8:	994080e7          	jalr	-1644(ra) # 1078 <MAX7219_init>
     6ec:	00800493          	li	s1,8
     6f0:	00140413          	addi	s0,s0,1
     6f4:	00000593          	li	a1,0
     6f8:	00040513          	mv	a0,s0
     6fc:	00001097          	auipc	ra,0x1
     700:	96c080e7          	jalr	-1684(ra) # 1068 <MAX7219>
     704:	fe9416e3          	bne	s0,s1,6f0 <MAX7219_tty_init+0x20>
     708:	00812403          	lw	s0,8(sp)
     70c:	00c12083          	lw	ra,12(sp)
     710:	00412483          	lw	s1,4(sp)
     714:	00000537          	lui	a0,0x0
     718:	60850513          	addi	a0,a0,1544 # 608 <MAX7219_putchar>
     71c:	01010113          	addi	sp,sp,16
     720:	00001317          	auipc	t1,0x1
     724:	c5830067          	jr	-936(t1) # 1378 <set_putcharfunc>

00000728 <font_func_8x16>:
     728:	ff010113          	addi	sp,sp,-16
     72c:	00812423          	sw	s0,8(sp)
     730:	00f58693          	addi	a3,a1,15
     734:	00060413          	mv	s0,a2
     738:	00750613          	addi	a2,a0,7
     73c:	00112623          	sw	ra,12(sp)
     740:	00001097          	auipc	ra,0x1
     744:	99c080e7          	jalr	-1636(ra) # 10dc <oled_write_window>
     748:	000067b7          	lui	a5,0x6
     74c:	5e07a503          	lw	a0,1504(a5) # 65e0 <font_8x16>
     750:	000077b7          	lui	a5,0x7
     754:	a647de83          	lhu	t4,-1436(a5) # 6a64 <GL_bg>
     758:	000077b7          	lui	a5,0x7
     75c:	a287de03          	lhu	t3,-1496(a5) # 6a28 <GL_fg>
     760:	00441613          	slli	a2,s0,0x4
     764:	01050693          	addi	a3,a0,16
     768:	00000713          	li	a4,0
     76c:	00100313          	li	t1,1
     770:	00c686b3          	add	a3,a3,a2
     774:	00402f37          	lui	t5,0x402
     778:	01000f93          	li	t6,16
     77c:	00e318b3          	sll	a7,t1,a4
     780:	00c507b3          	add	a5,a0,a2
     784:	0007d583          	lhu	a1,0(a5)
     788:	000e8813          	mv	a6,t4
     78c:	0115f5b3          	and	a1,a1,a7
     790:	00058463          	beqz	a1,798 <font_func_8x16+0x70>
     794:	000e0813          	mv	a6,t3
     798:	110f2023          	sw	a6,256(t5) # 402100 <IO_BASE+0x2100>
     79c:	00278793          	addi	a5,a5,2
     7a0:	fed792e3          	bne	a5,a3,784 <font_func_8x16+0x5c>
     7a4:	00170713          	addi	a4,a4,1
     7a8:	fdf71ae3          	bne	a4,t6,77c <font_func_8x16+0x54>
     7ac:	00c12083          	lw	ra,12(sp)
     7b0:	00812403          	lw	s0,8(sp)
     7b4:	01010113          	addi	sp,sp,16
     7b8:	00008067          	ret

000007bc <font_func_8x8>:
     7bc:	ff010113          	addi	sp,sp,-16
     7c0:	00812423          	sw	s0,8(sp)
     7c4:	00758693          	addi	a3,a1,7
     7c8:	00060413          	mv	s0,a2
     7cc:	00750613          	addi	a2,a0,7
     7d0:	00112623          	sw	ra,12(sp)
     7d4:	00001097          	auipc	ra,0x1
     7d8:	908080e7          	jalr	-1784(ra) # 10dc <oled_write_window>
     7dc:	000057b7          	lui	a5,0x5
     7e0:	5d07a803          	lw	a6,1488(a5) # 55d0 <font_8x8>
     7e4:	000077b7          	lui	a5,0x7
     7e8:	a647d303          	lhu	t1,-1436(a5) # 6a64 <GL_bg>
     7ec:	000077b7          	lui	a5,0x7
     7f0:	a287d883          	lhu	a7,-1496(a5) # 6a28 <GL_fg>
     7f4:	00341413          	slli	s0,s0,0x3
     7f8:	00000713          	li	a4,0
     7fc:	00100513          	li	a0,1
     800:	00402e37          	lui	t3,0x402
     804:	00800e93          	li	t4,8
     808:	00e515b3          	sll	a1,a0,a4
     80c:	00000793          	li	a5,0
     810:	008786b3          	add	a3,a5,s0
     814:	00d806b3          	add	a3,a6,a3
     818:	0006c683          	lbu	a3,0(a3)
     81c:	00030613          	mv	a2,t1
     820:	00b6f6b3          	and	a3,a3,a1
     824:	00068463          	beqz	a3,82c <IO_BUTTONS+0x2c>
     828:	00088613          	mv	a2,a7
     82c:	10ce2023          	sw	a2,256(t3) # 402100 <IO_BASE+0x2100>
     830:	00178793          	addi	a5,a5,1
     834:	fdd79ee3          	bne	a5,t4,810 <IO_BUTTONS+0x10>
     838:	00170713          	addi	a4,a4,1
     83c:	fcf716e3          	bne	a4,a5,808 <IO_BUTTONS+0x8>
     840:	00c12083          	lw	ra,12(sp)
     844:	00812403          	lw	s0,8(sp)
     848:	01010113          	addi	sp,sp,16
     84c:	00008067          	ret

00000850 <font_func_5x6>:
     850:	ff010113          	addi	sp,sp,-16
     854:	00812423          	sw	s0,8(sp)
     858:	00758693          	addi	a3,a1,7
     85c:	00060413          	mv	s0,a2
     860:	00550613          	addi	a2,a0,5
     864:	00112623          	sw	ra,12(sp)
     868:	00001097          	auipc	ra,0x1
     86c:	874080e7          	jalr	-1932(ra) # 10dc <oled_write_window>
     870:	000067b7          	lui	a5,0x6
     874:	7707a603          	lw	a2,1904(a5) # 6770 <font_5x6>
     878:	00241413          	slli	s0,s0,0x2
     87c:	000077b7          	lui	a5,0x7
     880:	00860633          	add	a2,a2,s0
     884:	f8062503          	lw	a0,-128(a2)
     888:	a647d803          	lhu	a6,-1436(a5) # 6a64 <GL_bg>
     88c:	000077b7          	lui	a5,0x7
     890:	a287de83          	lhu	t4,-1496(a5) # 6a28 <GL_fg>
     894:	40000637          	lui	a2,0x40000
     898:	00c57633          	and	a2,a0,a2
     89c:	00000693          	li	a3,0
     8a0:	00100e13          	li	t3,1
     8a4:	00500f13          	li	t5,5
     8a8:	00600893          	li	a7,6
     8ac:	00402fb7          	lui	t6,0x402
     8b0:	00800293          	li	t0,8
     8b4:	00de1333          	sll	t1,t3,a3
     8b8:	00000713          	li	a4,0
     8bc:	00080593          	mv	a1,a6
     8c0:	03e70463          	beq	a4,t5,8e8 <font_func_5x6+0x98>
     8c4:	031707b3          	mul	a5,a4,a7
     8c8:	00f557b3          	srl	a5,a0,a5
     8cc:	03f7f793          	andi	a5,a5,63
     8d0:	00060463          	beqz	a2,8d8 <font_func_5x6+0x88>
     8d4:	00279793          	slli	a5,a5,0x2
     8d8:	00f377b3          	and	a5,t1,a5
     8dc:	00080593          	mv	a1,a6
     8e0:	00078463          	beqz	a5,8e8 <font_func_5x6+0x98>
     8e4:	000e8593          	mv	a1,t4
     8e8:	10bfa023          	sw	a1,256(t6) # 402100 <IO_BASE+0x2100>
     8ec:	00170713          	addi	a4,a4,1
     8f0:	fd1716e3          	bne	a4,a7,8bc <font_func_5x6+0x6c>
     8f4:	00168693          	addi	a3,a3,1
     8f8:	fa569ee3          	bne	a3,t0,8b4 <font_func_5x6+0x64>
     8fc:	00c12083          	lw	ra,12(sp)
     900:	00812403          	lw	s0,8(sp)
     904:	01010113          	addi	sp,sp,16
     908:	00008067          	ret

0000090c <font_func_3x5>:
     90c:	ff010113          	addi	sp,sp,-16
     910:	fbf60793          	addi	a5,a2,-65 # 3fffffbf <IO_BASE+0x3fbfffbf>
     914:	00812423          	sw	s0,8(sp)
     918:	00112623          	sw	ra,12(sp)
     91c:	0ff7f793          	andi	a5,a5,255
     920:	01900713          	li	a4,25
     924:	00060413          	mv	s0,a2
     928:	0af76463          	bltu	a4,a5,9d0 <font_func_3x5+0xc4>
     92c:	02060413          	addi	s0,a2,32
     930:	0ff47413          	andi	s0,s0,255
     934:	00558693          	addi	a3,a1,5
     938:	00350613          	addi	a2,a0,3
     93c:	00000097          	auipc	ra,0x0
     940:	7a0080e7          	jalr	1952(ra) # 10dc <oled_write_window>
     944:	000077b7          	lui	a5,0x7
     948:	8407a783          	lw	a5,-1984(a5) # 6840 <font_3x5>
     94c:	00141413          	slli	s0,s0,0x1
     950:	00000693          	li	a3,0
     954:	00878433          	add	s0,a5,s0
     958:	000077b7          	lui	a5,0x7
     95c:	a647d583          	lhu	a1,-1436(a5) # 6a64 <GL_bg>
     960:	000077b7          	lui	a5,0x7
     964:	fc045883          	lhu	a7,-64(s0)
     968:	a287d303          	lhu	t1,-1496(a5) # 6a28 <GL_fg>
     96c:	00100813          	li	a6,1
     970:	00300e13          	li	t3,3
     974:	00500293          	li	t0,5
     978:	00402eb7          	lui	t4,0x402
     97c:	00400f13          	li	t5,4
     980:	00600f93          	li	t6,6
     984:	00d81533          	sll	a0,a6,a3
     988:	00000713          	li	a4,0
     98c:	00058613          	mv	a2,a1
     990:	01c70e63          	beq	a4,t3,9ac <font_func_3x5+0xa0>
     994:	025707b3          	mul	a5,a4,t0
     998:	40f8d7b3          	sra	a5,a7,a5
     99c:	00a7f7b3          	and	a5,a5,a0
     9a0:	01f7f793          	andi	a5,a5,31
     9a4:	00078463          	beqz	a5,9ac <font_func_3x5+0xa0>
     9a8:	00030613          	mv	a2,t1
     9ac:	10cea023          	sw	a2,256(t4) # 402100 <IO_BASE+0x2100>
     9b0:	00170713          	addi	a4,a4,1
     9b4:	fde71ce3          	bne	a4,t5,98c <font_func_3x5+0x80>
     9b8:	00168693          	addi	a3,a3,1
     9bc:	fdf694e3          	bne	a3,t6,984 <font_func_3x5+0x78>
     9c0:	00c12083          	lw	ra,12(sp)
     9c4:	00812403          	lw	s0,8(sp)
     9c8:	01010113          	addi	sp,sp,16
     9cc:	00008067          	ret
     9d0:	f9f60793          	addi	a5,a2,-97
     9d4:	0ff7f793          	andi	a5,a5,255
     9d8:	f4f76ee3          	bltu	a4,a5,934 <font_func_3x5+0x28>
     9dc:	fe060413          	addi	s0,a2,-32
     9e0:	f51ff06f          	j	930 <font_func_3x5+0x24>

000009e4 <GL_set_font>:
     9e4:	000077b7          	lui	a5,0x7
     9e8:	a2a7a023          	sw	a0,-1504(a5) # 6a20 <GL_current_font>
     9ec:	00008067          	ret

000009f0 <GL_tty_init>:
     9f0:	ff010113          	addi	sp,sp,-16
     9f4:	00112623          	sw	ra,12(sp)
     9f8:	00000097          	auipc	ra,0x0
     9fc:	5bc080e7          	jalr	1468(ra) # fb4 <GL_init>
     a00:	00000097          	auipc	ra,0x0
     a04:	5d0080e7          	jalr	1488(ra) # fd0 <GL_clear>
     a08:	00001537          	lui	a0,0x1
     a0c:	b7850513          	addi	a0,a0,-1160 # b78 <GL_putchar>
     a10:	00001097          	auipc	ra,0x1
     a14:	968080e7          	jalr	-1688(ra) # 1378 <set_putcharfunc>
     a18:	000077b7          	lui	a5,0x7
     a1c:	a407ac23          	sw	zero,-1448(a5) # 6a58 <cursor_X>
     a20:	000077b7          	lui	a5,0x7
     a24:	a407aa23          	sw	zero,-1452(a5) # 6a54 <cursor_Y>
     a28:	000077b7          	lui	a5,0x7
     a2c:	a407ae23          	sw	zero,-1444(a5) # 6a5c <scrolling>
     a30:	00000593          	li	a1,0
     a34:	000077b7          	lui	a5,0x7
     a38:	0a100513          	li	a0,161
     a3c:	a407a823          	sw	zero,-1456(a5) # 6a50 <display_start_line>
     a40:	00000097          	auipc	ra,0x0
     a44:	70c080e7          	jalr	1804(ra) # 114c <oled1>
     a48:	004017b7          	lui	a5,0x401
     a4c:	00400713          	li	a4,4
     a50:	00e7a023          	sw	a4,0(a5) # 401000 <IO_BASE+0x1000>
     a54:	00c12083          	lw	ra,12(sp)
     a58:	000077b7          	lui	a5,0x7
     a5c:	00007737          	lui	a4,0x7
     a60:	9d878793          	addi	a5,a5,-1576 # 69d8 <Font5x6>
     a64:	a2f72023          	sw	a5,-1504(a4) # 6a20 <GL_current_font>
     a68:	01010113          	addi	sp,sp,16
     a6c:	00008067          	ret

00000a70 <GL_tty_goto_xy>:
     a70:	000077b7          	lui	a5,0x7
     a74:	a4a7ac23          	sw	a0,-1448(a5) # 6a58 <cursor_X>
     a78:	000077b7          	lui	a5,0x7
     a7c:	a4b7aa23          	sw	a1,-1452(a5) # 6a54 <cursor_Y>
     a80:	00008067          	ret

00000a84 <GL_tty_scroll>:
     a84:	00007737          	lui	a4,0x7
     a88:	000077b7          	lui	a5,0x7
     a8c:	a6075603          	lhu	a2,-1440(a4) # 6a60 <GL_height>
     a90:	a547a683          	lw	a3,-1452(a5) # 6a54 <cursor_Y>
     a94:	ff010113          	addi	sp,sp,-16
     a98:	00912223          	sw	s1,4(sp)
     a9c:	00112623          	sw	ra,12(sp)
     aa0:	00812423          	sw	s0,8(sp)
     aa4:	00070493          	mv	s1,a4
     aa8:	00007737          	lui	a4,0x7
     aac:	0ac6c063          	blt	a3,a2,b4c <GL_tty_scroll+0xc8>
     ab0:	00100693          	li	a3,1
     ab4:	a4d72e23          	sw	a3,-1444(a4) # 6a5c <scrolling>
     ab8:	a407aa23          	sw	zero,-1452(a5)
     abc:	00007437          	lui	s0,0x7
     ac0:	a547a583          	lw	a1,-1452(a5)
     ac4:	a2042783          	lw	a5,-1504(s0) # 6a20 <GL_current_font>
     ac8:	00000513          	li	a0,0
     acc:	0057c683          	lbu	a3,5(a5)
     ad0:	000077b7          	lui	a5,0x7
     ad4:	a627d603          	lhu	a2,-1438(a5) # 6a62 <GL_width>
     ad8:	000077b7          	lui	a5,0x7
     adc:	a647d703          	lhu	a4,-1436(a5) # 6a64 <GL_bg>
     ae0:	00b686b3          	add	a3,a3,a1
     ae4:	fff68693          	addi	a3,a3,-1
     ae8:	fff60613          	addi	a2,a2,-1
     aec:	00000097          	auipc	ra,0x0
     af0:	178080e7          	jalr	376(ra) # c64 <GL_fill_rect>
     af4:	a2042783          	lw	a5,-1504(s0)
     af8:	00007437          	lui	s0,0x7
     afc:	a5042703          	lw	a4,-1456(s0) # 6a50 <display_start_line>
     b00:	0057c783          	lbu	a5,5(a5)
     b04:	00e787b3          	add	a5,a5,a4
     b08:	a604d703          	lhu	a4,-1440(s1)
     b0c:	a4f42823          	sw	a5,-1456(s0)
     b10:	00e7c463          	blt	a5,a4,b18 <GL_tty_scroll+0x94>
     b14:	a4042823          	sw	zero,-1456(s0)
     b18:	a5042583          	lw	a1,-1456(s0)
     b1c:	0a100513          	li	a0,161
     b20:	00000097          	auipc	ra,0x0
     b24:	62c080e7          	jalr	1580(ra) # 114c <oled1>
     b28:	000077b7          	lui	a5,0x7
     b2c:	a5042703          	lw	a4,-1456(s0)
     b30:	a467d783          	lhu	a5,-1466(a5) # 6a46 <FGA_width>
     b34:	02e787b3          	mul	a5,a5,a4
     b38:	00401737          	lui	a4,0x401
     b3c:	00879793          	slli	a5,a5,0x8
     b40:	0047e793          	ori	a5,a5,4
     b44:	00f72023          	sw	a5,0(a4) # 401000 <IO_BASE+0x1000>
     b48:	00c0006f          	j	b54 <GL_tty_scroll+0xd0>
     b4c:	a5c72703          	lw	a4,-1444(a4)
     b50:	f60716e3          	bnez	a4,abc <GL_tty_scroll+0x38>
     b54:	00c12083          	lw	ra,12(sp)
     b58:	00812403          	lw	s0,8(sp)
     b5c:	00412483          	lw	s1,4(sp)
     b60:	01010113          	addi	sp,sp,16
     b64:	00008067          	ret

00000b68 <GL_putchar_xy>:
     b68:	000077b7          	lui	a5,0x7
     b6c:	a207a783          	lw	a5,-1504(a5) # 6a20 <GL_current_font>
     b70:	0007a303          	lw	t1,0(a5)
     b74:	00030067          	jr	t1

00000b78 <GL_putchar>:
     b78:	fe010113          	addi	sp,sp,-32
     b7c:	00912a23          	sw	s1,20(sp)
     b80:	000074b7          	lui	s1,0x7
     b84:	a4c4a783          	lw	a5,-1460(s1) # 6a4c <last_char_was_CR>
     b88:	01212823          	sw	s2,16(sp)
     b8c:	00112e23          	sw	ra,28(sp)
     b90:	00812c23          	sw	s0,24(sp)
     b94:	01312623          	sw	s3,12(sp)
     b98:	00050913          	mv	s2,a0
     b9c:	00078863          	beqz	a5,bac <GL_putchar+0x34>
     ba0:	00000097          	auipc	ra,0x0
     ba4:	ee4080e7          	jalr	-284(ra) # a84 <GL_tty_scroll>
     ba8:	a404a623          	sw	zero,-1460(s1)
     bac:	00d00793          	li	a5,13
     bb0:	000079b7          	lui	s3,0x7
     bb4:	00007437          	lui	s0,0x7
     bb8:	02f91e63          	bne	s2,a5,bf4 <GL_putchar+0x7c>
     bbc:	a209a783          	lw	a5,-1504(s3) # 6a20 <GL_current_font>
     bc0:	0047c703          	lbu	a4,4(a5)
     bc4:	a5842783          	lw	a5,-1448(s0) # 6a58 <cursor_X>
     bc8:	00e7c663          	blt	a5,a4,bd4 <GL_putchar+0x5c>
     bcc:	40e787b3          	sub	a5,a5,a4
     bd0:	a4f42c23          	sw	a5,-1448(s0)
     bd4:	01c12083          	lw	ra,28(sp)
     bd8:	01812403          	lw	s0,24(sp)
     bdc:	00090513          	mv	a0,s2
     be0:	01412483          	lw	s1,20(sp)
     be4:	01012903          	lw	s2,16(sp)
     be8:	00c12983          	lw	s3,12(sp)
     bec:	02010113          	addi	sp,sp,32
     bf0:	00008067          	ret
     bf4:	00007737          	lui	a4,0x7
     bf8:	00a00793          	li	a5,10
     bfc:	a5472583          	lw	a1,-1452(a4) # 6a54 <cursor_Y>
     c00:	02f91263          	bne	s2,a5,c24 <GL_putchar+0xac>
     c04:	00100793          	li	a5,1
     c08:	a4f4a623          	sw	a5,-1460(s1)
     c0c:	a209a783          	lw	a5,-1504(s3)
     c10:	a4042c23          	sw	zero,-1448(s0)
     c14:	0057c783          	lbu	a5,5(a5)
     c18:	00b787b3          	add	a5,a5,a1
     c1c:	a4f72a23          	sw	a5,-1452(a4)
     c20:	fb5ff06f          	j	bd4 <GL_putchar+0x5c>
     c24:	a5842503          	lw	a0,-1448(s0)
     c28:	0ff97613          	andi	a2,s2,255
     c2c:	00000097          	auipc	ra,0x0
     c30:	f3c080e7          	jalr	-196(ra) # b68 <GL_putchar_xy>
     c34:	a209a783          	lw	a5,-1504(s3)
     c38:	a5842703          	lw	a4,-1448(s0)
     c3c:	0047c783          	lbu	a5,4(a5)
     c40:	00e787b3          	add	a5,a5,a4
     c44:	00007737          	lui	a4,0x7
     c48:	a6275703          	lhu	a4,-1438(a4) # 6a62 <GL_width>
     c4c:	a4f42c23          	sw	a5,-1448(s0)
     c50:	f8e7c2e3          	blt	a5,a4,bd4 <GL_putchar+0x5c>
     c54:	00a00513          	li	a0,10
     c58:	00000097          	auipc	ra,0x0
     c5c:	f20080e7          	jalr	-224(ra) # b78 <GL_putchar>
     c60:	f75ff06f          	j	bd4 <GL_putchar+0x5c>

00000c64 <GL_fill_rect>:
     c64:	fd010113          	addi	sp,sp,-48
     c68:	02812423          	sw	s0,40(sp)
     c6c:	02912223          	sw	s1,36(sp)
     c70:	03212023          	sw	s2,32(sp)
     c74:	01312e23          	sw	s3,28(sp)
     c78:	00068493          	mv	s1,a3
     c7c:	00e12623          	sw	a4,12(sp)
     c80:	02112623          	sw	ra,44(sp)
     c84:	00050913          	mv	s2,a0
     c88:	00060993          	mv	s3,a2
     c8c:	00058413          	mv	s0,a1
     c90:	00000097          	auipc	ra,0x0
     c94:	44c080e7          	jalr	1100(ra) # 10dc <oled_write_window>
     c98:	00c12703          	lw	a4,12(sp)
     c9c:	004026b7          	lui	a3,0x402
     ca0:	0284fa63          	bgeu	s1,s0,cd4 <GL_fill_rect+0x70>
     ca4:	02c12083          	lw	ra,44(sp)
     ca8:	02812403          	lw	s0,40(sp)
     cac:	02412483          	lw	s1,36(sp)
     cb0:	02012903          	lw	s2,32(sp)
     cb4:	01c12983          	lw	s3,28(sp)
     cb8:	03010113          	addi	sp,sp,48
     cbc:	00008067          	ret
     cc0:	10e6a023          	sw	a4,256(a3) # 402100 <IO_BASE+0x2100>
     cc4:	00178793          	addi	a5,a5,1
     cc8:	fef9fce3          	bgeu	s3,a5,cc0 <GL_fill_rect+0x5c>
     ccc:	00140413          	addi	s0,s0,1
     cd0:	fd1ff06f          	j	ca0 <GL_fill_rect+0x3c>
     cd4:	00090793          	mv	a5,s2
     cd8:	ff1ff06f          	j	cc8 <GL_fill_rect+0x64>

00000cdc <FGA_setmode>:
     cdc:	005007b7          	lui	a5,0x500
     ce0:	0007a783          	lw	a5,0(a5) # 500000 <IO_BASE+0x100000>
     ce4:	4007f793          	andi	a5,a5,1024
     ce8:	20078663          	beqz	a5,ef4 <FGA_setmode+0x218>
     cec:	ff010113          	addi	sp,sp,-16
     cf0:	000077b7          	lui	a5,0x7
     cf4:	0001f637          	lui	a2,0x1f
     cf8:	00812423          	sw	s0,8(sp)
     cfc:	a2a7a223          	sw	a0,-1500(a5) # 6a24 <FGA_mode>
     d00:	00050413          	mv	s0,a0
     d04:	40060613          	addi	a2,a2,1024 # 1f400 <__fdlib_version+0x18988>
     d08:	00000593          	li	a1,0
     d0c:	00200537          	lui	a0,0x200
     d10:	00112623          	sw	ra,12(sp)
     d14:	00001097          	auipc	ra,0x1
     d18:	a6c080e7          	jalr	-1428(ra) # 1780 <memset>
     d1c:	00040513          	mv	a0,s0
     d20:	00045463          	bgez	s0,d28 <FGA_setmode+0x4c>
     d24:	00000513          	li	a0,0
     d28:	00400793          	li	a5,4
     d2c:	06a7e463          	bltu	a5,a0,d94 <FGA_setmode+0xb8>
     d30:	000057b7          	lui	a5,0x5
     d34:	5d478793          	addi	a5,a5,1492 # 55d4 <font_8x8+0x4>
     d38:	00251513          	slli	a0,a0,0x2
     d3c:	00f50533          	add	a0,a0,a5
     d40:	00052683          	lw	a3,0(a0) # 200000 <IO_HW_CONFIG_CPUINFO>
     d44:	00007737          	lui	a4,0x7
     d48:	000077b7          	lui	a5,0x7
     d4c:	00068067          	jr	a3
     d50:	0c814637          	lui	a2,0xc814
     d54:	00160613          	addi	a2,a2,1 # c814001 <IO_BASE+0xc414001>
     d58:	004016b7          	lui	a3,0x401
     d5c:	00c6a023          	sw	a2,0(a3) # 401000 <IO_BASE+0x1000>
     d60:	40200613          	li	a2,1026
     d64:	00c6a023          	sw	a2,0(a3)
     d68:	10300613          	li	a2,259
     d6c:	00c6a023          	sw	a2,0(a3)
     d70:	00400613          	li	a2,4
     d74:	00c6a023          	sw	a2,0(a3)
     d78:	00fa0637          	lui	a2,0xfa0
     d7c:	00560613          	addi	a2,a2,5 # fa0005 <IO_BASE+0xba0005>
     d80:	00c6a023          	sw	a2,0(a3)
     d84:	14000693          	li	a3,320
     d88:	a4d71323          	sh	a3,-1466(a4) # 6a46 <FGA_width>
     d8c:	0c800713          	li	a4,200
     d90:	a4e79223          	sh	a4,-1468(a5) # 6a44 <FGA_height>
     d94:	004017b7          	lui	a5,0x401
     d98:	08100713          	li	a4,129
     d9c:	00e7a023          	sw	a4,0(a5) # 401000 <IO_BASE+0x1000>
     da0:	08200713          	li	a4,130
     da4:	00e7a023          	sw	a4,0(a5)
     da8:	08300713          	li	a4,131
     dac:	00e7a023          	sw	a4,0(a5)
     db0:	000106b7          	lui	a3,0x10
     db4:	0ff00737          	lui	a4,0xff00
     db8:	08170813          	addi	a6,a4,129 # ff00081 <IO_BASE+0xfb00081>
     dbc:	08270513          	addi	a0,a4,130
     dc0:	10000793          	li	a5,256
     dc4:	00401637          	lui	a2,0x401
     dc8:	08370713          	addi	a4,a4,131
     dcc:	f0068693          	addi	a3,a3,-256 # ff00 <__fdlib_version+0x9488>
     dd0:	0107e5b3          	or	a1,a5,a6
     dd4:	00b62023          	sw	a1,0(a2) # 401000 <IO_BASE+0x1000>
     dd8:	00a7e5b3          	or	a1,a5,a0
     ddc:	00b62023          	sw	a1,0(a2)
     de0:	00e7e5b3          	or	a1,a5,a4
     de4:	00b62023          	sw	a1,0(a2)
     de8:	10078793          	addi	a5,a5,256
     dec:	fed792e3          	bne	a5,a3,dd0 <FGA_setmode+0xf4>
     df0:	00c12083          	lw	ra,12(sp)
     df4:	00812403          	lw	s0,8(sp)
     df8:	01010113          	addi	sp,sp,16
     dfc:	00008067          	ret
     e00:	0c814637          	lui	a2,0xc814
     e04:	00160613          	addi	a2,a2,1 # c814001 <IO_BASE+0xc414001>
     e08:	004016b7          	lui	a3,0x401
     e0c:	00c6a023          	sw	a2,0(a3) # 401000 <IO_BASE+0x1000>
     e10:	00001637          	lui	a2,0x1
     e14:	b0260613          	addi	a2,a2,-1278 # b02 <GL_tty_scroll+0x7e>
     e18:	f4dff06f          	j	d64 <FGA_setmode+0x88>
     e1c:	19028637          	lui	a2,0x19028
     e20:	004016b7          	lui	a3,0x401
     e24:	00160613          	addi	a2,a2,1 # 19028001 <IO_BASE+0x18c28001>
     e28:	00c6a023          	sw	a2,0(a3) # 401000 <IO_BASE+0x1000>
     e2c:	00001637          	lui	a2,0x1
     e30:	a0260613          	addi	a2,a2,-1534 # a02 <GL_tty_init+0x12>
     e34:	00c6a023          	sw	a2,0(a3)
     e38:	00300613          	li	a2,3
     e3c:	00c6a023          	sw	a2,0(a3)
     e40:	00400613          	li	a2,4
     e44:	00c6a023          	sw	a2,0(a3)
     e48:	03e80637          	lui	a2,0x3e80
     e4c:	00560613          	addi	a2,a2,5 # 3e80005 <IO_BASE+0x3a80005>
     e50:	00c6a023          	sw	a2,0(a3)
     e54:	28000693          	li	a3,640
     e58:	a4d71323          	sh	a3,-1466(a4)
     e5c:	19000713          	li	a4,400
     e60:	f31ff06f          	j	d90 <FGA_setmode+0xb4>
     e64:	25832637          	lui	a2,0x25832
     e68:	004016b7          	lui	a3,0x401
     e6c:	00160613          	addi	a2,a2,1 # 25832001 <IO_BASE+0x25432001>
     e70:	00c6a023          	sw	a2,0(a3) # 401000 <IO_BASE+0x1000>
     e74:	00001637          	lui	a2,0x1
     e78:	90260613          	addi	a2,a2,-1790 # 902 <font_func_5x6+0xb2>
     e7c:	00c6a023          	sw	a2,0(a3)
     e80:	00300613          	li	a2,3
     e84:	00c6a023          	sw	a2,0(a3)
     e88:	00400613          	li	a2,4
     e8c:	00c6a023          	sw	a2,0(a3)
     e90:	07530637          	lui	a2,0x7530
     e94:	00560613          	addi	a2,a2,5 # 7530005 <IO_BASE+0x7130005>
     e98:	00c6a023          	sw	a2,0(a3)
     e9c:	32000693          	li	a3,800
     ea0:	a4d71323          	sh	a3,-1466(a4)
     ea4:	25800713          	li	a4,600
     ea8:	ee9ff06f          	j	d90 <FGA_setmode+0xb4>
     eac:	30040637          	lui	a2,0x30040
     eb0:	004016b7          	lui	a3,0x401
     eb4:	00160613          	addi	a2,a2,1 # 30040001 <IO_BASE+0x2fc40001>
     eb8:	00c6a023          	sw	a2,0(a3) # 401000 <IO_BASE+0x1000>
     ebc:	00001637          	lui	a2,0x1
     ec0:	80260613          	addi	a2,a2,-2046 # 802 <IO_BUTTONS+0x2>
     ec4:	00c6a023          	sw	a2,0(a3)
     ec8:	00300613          	li	a2,3
     ecc:	00c6a023          	sw	a2,0(a3)
     ed0:	00400613          	li	a2,4
     ed4:	00c6a023          	sw	a2,0(a3)
     ed8:	0c000637          	lui	a2,0xc000
     edc:	00560613          	addi	a2,a2,5 # c000005 <IO_BASE+0xbc00005>
     ee0:	00c6a023          	sw	a2,0(a3)
     ee4:	40000693          	li	a3,1024
     ee8:	a4d71323          	sh	a3,-1466(a4)
     eec:	30000713          	li	a4,768
     ef0:	ea1ff06f          	j	d90 <FGA_setmode+0xb4>
     ef4:	00008067          	ret

00000ef8 <FGA_write_window>:
     ef8:	00851513          	slli	a0,a0,0x8
     efc:	01461613          	slli	a2,a2,0x14
     f00:	00c56533          	or	a0,a0,a2
     f04:	00859593          	slli	a1,a1,0x8
     f08:	01469693          	slli	a3,a3,0x14
     f0c:	004017b7          	lui	a5,0x401
     f10:	08456513          	ori	a0,a0,132
     f14:	00d5e5b3          	or	a1,a1,a3
     f18:	00a7a023          	sw	a0,0(a5) # 401000 <IO_BASE+0x1000>
     f1c:	0855e593          	ori	a1,a1,133
     f20:	00b7a023          	sw	a1,0(a5)
     f24:	00008067          	ret

00000f28 <FGA_bpp>:
     f28:	000077b7          	lui	a5,0x7
     f2c:	a247a783          	lw	a5,-1500(a5) # 6a24 <FGA_mode>
     f30:	00000513          	li	a0,0
     f34:	00178713          	addi	a4,a5,1
     f38:	00500793          	li	a5,5
     f3c:	00e7ea63          	bltu	a5,a4,f50 <FGA_bpp+0x28>
     f40:	000077b7          	lui	a5,0x7
     f44:	9f078793          	addi	a5,a5,-1552 # 69f0 <CSWTCH.1>
     f48:	00e787b3          	add	a5,a5,a4
     f4c:	00078503          	lb	a0,0(a5)
     f50:	00008067          	ret

00000f54 <GL_set_fg>:
     f54:	000027b7          	lui	a5,0x2
     f58:	f0078793          	addi	a5,a5,-256 # 1f00 <__ieee754_log+0x80>
     f5c:	00551513          	slli	a0,a0,0x5
     f60:	00f57533          	and	a0,a0,a5
     f64:	0f85f593          	andi	a1,a1,248
     f68:	00b56533          	or	a0,a0,a1
     f6c:	00351513          	slli	a0,a0,0x3
     f70:	00365613          	srli	a2,a2,0x3
     f74:	00c56533          	or	a0,a0,a2
     f78:	000077b7          	lui	a5,0x7
     f7c:	a2a79423          	sh	a0,-1496(a5) # 6a28 <GL_fg>
     f80:	00008067          	ret

00000f84 <GL_set_bg>:
     f84:	000027b7          	lui	a5,0x2
     f88:	f0078793          	addi	a5,a5,-256 # 1f00 <__ieee754_log+0x80>
     f8c:	00551513          	slli	a0,a0,0x5
     f90:	00f57533          	and	a0,a0,a5
     f94:	0f85f593          	andi	a1,a1,248
     f98:	00b56533          	or	a0,a0,a1
     f9c:	00351513          	slli	a0,a0,0x3
     fa0:	00365613          	srli	a2,a2,0x3
     fa4:	00c56533          	or	a0,a0,a2
     fa8:	000077b7          	lui	a5,0x7
     fac:	a6a79223          	sh	a0,-1436(a5) # 6a64 <GL_bg>
     fb0:	00008067          	ret

00000fb4 <GL_init>:
     fb4:	08000793          	li	a5,128
     fb8:	00007737          	lui	a4,0x7
     fbc:	a6f71123          	sh	a5,-1438(a4) # 6a62 <GL_width>
     fc0:	00007737          	lui	a4,0x7
     fc4:	a6f71023          	sh	a5,-1440(a4) # 6a60 <GL_height>
     fc8:	00000317          	auipc	t1,0x0
     fcc:	1e430067          	jr	484(t1) # 11ac <oled_init>

00000fd0 <GL_clear>:
     fd0:	000077b7          	lui	a5,0x7
     fd4:	a607d683          	lhu	a3,-1440(a5) # 6a60 <GL_height>
     fd8:	000077b7          	lui	a5,0x7
     fdc:	a627d603          	lhu	a2,-1438(a5) # 6a62 <GL_width>
     fe0:	000077b7          	lui	a5,0x7
     fe4:	a647d703          	lhu	a4,-1436(a5) # 6a64 <GL_bg>
     fe8:	fff68693          	addi	a3,a3,-1
     fec:	fff60613          	addi	a2,a2,-1
     ff0:	00000593          	li	a1,0
     ff4:	00000513          	li	a0,0
     ff8:	00000317          	auipc	t1,0x0
     ffc:	c6c30067          	jr	-916(t1) # c64 <GL_fill_rect>

00001000 <GL_wait_vbl>:
    1000:	00008067          	ret

00001004 <exit>:
    1004:	00a1a223          	sw	a0,4(gp) # 400004 <IO_BASE+0x4>

00001008 <exitl1>:
    1008:	00051063          	bnez	a0,1008 <exitl1>

0000100c <exitl>:
    100c:	00100293          	li	t0,1
    1010:	0051a223          	sw	t0,4(gp)
    1014:	06400513          	li	a0,100
    1018:	00000097          	auipc	ra,0x0
    101c:	390080e7          	jalr	912(ra) # 13a8 <milliwait>
    1020:	00200293          	li	t0,2
    1024:	0051a223          	sw	t0,4(gp)
    1028:	06400513          	li	a0,100
    102c:	00000097          	auipc	ra,0x0
    1030:	37c080e7          	jalr	892(ra) # 13a8 <milliwait>
    1034:	00400293          	li	t0,4
    1038:	0051a223          	sw	t0,4(gp)
    103c:	06400513          	li	a0,100
    1040:	00000097          	auipc	ra,0x0
    1044:	368080e7          	jalr	872(ra) # 13a8 <milliwait>
    1048:	00800293          	li	t0,8
    104c:	0051a223          	sw	t0,4(gp)
    1050:	06400513          	li	a0,100
    1054:	00000097          	auipc	ra,0x0
    1058:	354080e7          	jalr	852(ra) # 13a8 <milliwait>
    105c:	fb1ff06f          	j	100c <exitl>

00001060 <abort>:
    1060:	00100073          	ebreak
    1064:	00008067          	ret

00001068 <MAX7219>:
    1068:	00851293          	slli	t0,a0,0x8
    106c:	00b2e2b3          	or	t0,t0,a1
    1070:	2051a023          	sw	t0,512(gp)
    1074:	00008067          	ret

00001078 <MAX7219_init>:
    1078:	ffc10113          	addi	sp,sp,-4
    107c:	00112023          	sw	ra,0(sp)
    1080:	00900513          	li	a0,9
    1084:	00000593          	li	a1,0
    1088:	00000097          	auipc	ra,0x0
    108c:	fe0080e7          	jalr	-32(ra) # 1068 <MAX7219>
    1090:	00a00513          	li	a0,10
    1094:	00f00593          	li	a1,15
    1098:	00000097          	auipc	ra,0x0
    109c:	fd0080e7          	jalr	-48(ra) # 1068 <MAX7219>
    10a0:	00b00513          	li	a0,11
    10a4:	00700593          	li	a1,7
    10a8:	00000097          	auipc	ra,0x0
    10ac:	fc0080e7          	jalr	-64(ra) # 1068 <MAX7219>
    10b0:	00c00513          	li	a0,12
    10b4:	00100593          	li	a1,1
    10b8:	00000097          	auipc	ra,0x0
    10bc:	fb0080e7          	jalr	-80(ra) # 1068 <MAX7219>
    10c0:	00f00513          	li	a0,15
    10c4:	00000593          	li	a1,0
    10c8:	00000097          	auipc	ra,0x0
    10cc:	fa0080e7          	jalr	-96(ra) # 1068 <MAX7219>
    10d0:	00012083          	lw	ra,0(sp)
    10d4:	00410113          	addi	sp,sp,4
    10d8:	00008067          	ret

000010dc <oled_write_window>:
    10dc:	ffc10113          	addi	sp,sp,-4
    10e0:	00112023          	sw	ra,0(sp)
    10e4:	00050293          	mv	t0,a0
    10e8:	00060313          	mv	t1,a2
    10ec:	00058393          	mv	t2,a1
    10f0:	00068e13          	mv	t3,a3
    10f4:	01500513          	li	a0,21
    10f8:	00028593          	mv	a1,t0
    10fc:	00030613          	mv	a2,t1
    1100:	00000097          	auipc	ra,0x0
    1104:	068080e7          	jalr	104(ra) # 1168 <oled2>
    1108:	07500513          	li	a0,117
    110c:	00038593          	mv	a1,t2
    1110:	000e0613          	mv	a2,t3
    1114:	00000097          	auipc	ra,0x0
    1118:	054080e7          	jalr	84(ra) # 1168 <oled2>
    111c:	05c00513          	li	a0,92
    1120:	00000097          	auipc	ra,0x0
    1124:	014080e7          	jalr	20(ra) # 1134 <oled0>
    1128:	00012083          	lw	ra,0(sp)
    112c:	00410113          	addi	sp,sp,4
    1130:	00008067          	ret

00001134 <oled0>:
    1134:	ffc10113          	addi	sp,sp,-4
    1138:	00112023          	sw	ra,0(sp)
    113c:	04a1a023          	sw	a0,64(gp)
    1140:	00012083          	lw	ra,0(sp)
    1144:	00410113          	addi	sp,sp,4
    1148:	00008067          	ret

0000114c <oled1>:
    114c:	ffc10113          	addi	sp,sp,-4
    1150:	00112023          	sw	ra,0(sp)
    1154:	04a1a023          	sw	a0,64(gp)
    1158:	08b1a023          	sw	a1,128(gp)
    115c:	00012083          	lw	ra,0(sp)
    1160:	00410113          	addi	sp,sp,4
    1164:	00008067          	ret

00001168 <oled2>:
    1168:	ffc10113          	addi	sp,sp,-4
    116c:	00112023          	sw	ra,0(sp)
    1170:	04a1a023          	sw	a0,64(gp)
    1174:	08b1a023          	sw	a1,128(gp)
    1178:	08c1a023          	sw	a2,128(gp)
    117c:	00012083          	lw	ra,0(sp)
    1180:	00410113          	addi	sp,sp,4
    1184:	00008067          	ret

00001188 <oled3>:
    1188:	ffc10113          	addi	sp,sp,-4
    118c:	00112023          	sw	ra,0(sp)
    1190:	04a1a023          	sw	a0,64(gp)
    1194:	08b1a023          	sw	a1,128(gp)
    1198:	08c1a023          	sw	a2,128(gp)
    119c:	08d1a023          	sw	a3,128(gp)
    11a0:	00012083          	lw	ra,0(sp)
    11a4:	00410113          	addi	sp,sp,4
    11a8:	00008067          	ret

000011ac <oled_init>:
    11ac:	ffc10113          	addi	sp,sp,-4
    11b0:	00112023          	sw	ra,0(sp)
    11b4:	00500513          	li	a0,5
    11b8:	00a1a223          	sw	a0,4(gp)
    11bc:	00100513          	li	a0,1
    11c0:	02a1a023          	sw	a0,32(gp)
    11c4:	0fa00513          	li	a0,250
    11c8:	00000097          	auipc	ra,0x0
    11cc:	1e0080e7          	jalr	480(ra) # 13a8 <milliwait>
    11d0:	00a00513          	li	a0,10
    11d4:	00a1a223          	sw	a0,4(gp)
    11d8:	00300513          	li	a0,3
    11dc:	02a1a023          	sw	a0,32(gp)
    11e0:	0fa00513          	li	a0,250
    11e4:	00000097          	auipc	ra,0x0
    11e8:	1c4080e7          	jalr	452(ra) # 13a8 <milliwait>
    11ec:	00f00513          	li	a0,15
    11f0:	00a1a223          	sw	a0,4(gp)
    11f4:	00000513          	li	a0,0
    11f8:	00a1a223          	sw	a0,4(gp)
    11fc:	0fd00513          	li	a0,253
    1200:	01200593          	li	a1,18
    1204:	00000097          	auipc	ra,0x0
    1208:	f48080e7          	jalr	-184(ra) # 114c <oled1>
    120c:	0fd00513          	li	a0,253
    1210:	0b100593          	li	a1,177
    1214:	00000097          	auipc	ra,0x0
    1218:	f38080e7          	jalr	-200(ra) # 114c <oled1>
    121c:	0ae00513          	li	a0,174
    1220:	00000097          	auipc	ra,0x0
    1224:	f14080e7          	jalr	-236(ra) # 1134 <oled0>
    1228:	0a400513          	li	a0,164
    122c:	00000097          	auipc	ra,0x0
    1230:	f08080e7          	jalr	-248(ra) # 1134 <oled0>
    1234:	01500513          	li	a0,21
    1238:	00000593          	li	a1,0
    123c:	07f00613          	li	a2,127
    1240:	00000097          	auipc	ra,0x0
    1244:	f28080e7          	jalr	-216(ra) # 1168 <oled2>
    1248:	07500513          	li	a0,117
    124c:	00000593          	li	a1,0
    1250:	07f00613          	li	a2,127
    1254:	00000097          	auipc	ra,0x0
    1258:	f14080e7          	jalr	-236(ra) # 1168 <oled2>
    125c:	0b300513          	li	a0,179
    1260:	0f100593          	li	a1,241
    1264:	00000097          	auipc	ra,0x0
    1268:	ee8080e7          	jalr	-280(ra) # 114c <oled1>
    126c:	0ca00513          	li	a0,202
    1270:	07f00593          	li	a1,127
    1274:	00000097          	auipc	ra,0x0
    1278:	ed8080e7          	jalr	-296(ra) # 114c <oled1>
    127c:	0a000513          	li	a0,160
    1280:	07400593          	li	a1,116
    1284:	00000097          	auipc	ra,0x0
    1288:	ec8080e7          	jalr	-312(ra) # 114c <oled1>
    128c:	0a100513          	li	a0,161
    1290:	00000593          	li	a1,0
    1294:	00000097          	auipc	ra,0x0
    1298:	eb8080e7          	jalr	-328(ra) # 114c <oled1>
    129c:	0a200513          	li	a0,162
    12a0:	00000593          	li	a1,0
    12a4:	00000097          	auipc	ra,0x0
    12a8:	ea8080e7          	jalr	-344(ra) # 114c <oled1>
    12ac:	0ab00513          	li	a0,171
    12b0:	00100593          	li	a1,1
    12b4:	00000097          	auipc	ra,0x0
    12b8:	e98080e7          	jalr	-360(ra) # 114c <oled1>
    12bc:	0b400513          	li	a0,180
    12c0:	0a000593          	li	a1,160
    12c4:	0b500613          	li	a2,181
    12c8:	05500693          	li	a3,85
    12cc:	00000097          	auipc	ra,0x0
    12d0:	ebc080e7          	jalr	-324(ra) # 1188 <oled3>
    12d4:	0c100513          	li	a0,193
    12d8:	0c800593          	li	a1,200
    12dc:	08000613          	li	a2,128
    12e0:	0c000693          	li	a3,192
    12e4:	00000097          	auipc	ra,0x0
    12e8:	ea4080e7          	jalr	-348(ra) # 1188 <oled3>
    12ec:	0c700513          	li	a0,199
    12f0:	00f00593          	li	a1,15
    12f4:	00000097          	auipc	ra,0x0
    12f8:	e58080e7          	jalr	-424(ra) # 114c <oled1>
    12fc:	0b100513          	li	a0,177
    1300:	03200593          	li	a1,50
    1304:	00000097          	auipc	ra,0x0
    1308:	e48080e7          	jalr	-440(ra) # 114c <oled1>
    130c:	0b200513          	li	a0,178
    1310:	0a400593          	li	a1,164
    1314:	00000613          	li	a2,0
    1318:	00000693          	li	a3,0
    131c:	00000097          	auipc	ra,0x0
    1320:	e6c080e7          	jalr	-404(ra) # 1188 <oled3>
    1324:	0bb00513          	li	a0,187
    1328:	01700593          	li	a1,23
    132c:	00000097          	auipc	ra,0x0
    1330:	e20080e7          	jalr	-480(ra) # 114c <oled1>
    1334:	0b600513          	li	a0,182
    1338:	00100593          	li	a1,1
    133c:	00000097          	auipc	ra,0x0
    1340:	e10080e7          	jalr	-496(ra) # 114c <oled1>
    1344:	0be00513          	li	a0,190
    1348:	00500593          	li	a1,5
    134c:	00000097          	auipc	ra,0x0
    1350:	e00080e7          	jalr	-512(ra) # 114c <oled1>
    1354:	0a600513          	li	a0,166
    1358:	00000097          	auipc	ra,0x0
    135c:	ddc080e7          	jalr	-548(ra) # 1134 <oled0>
    1360:	0af00513          	li	a0,175
    1364:	00000097          	auipc	ra,0x0
    1368:	dd0080e7          	jalr	-560(ra) # 1134 <oled0>
    136c:	00012083          	lw	ra,0(sp)
    1370:	00410113          	addi	sp,sp,4
    1374:	00008067          	ret

00001378 <set_putcharfunc>:
    1378:	000077b7          	lui	a5,0x7
    137c:	a2a7a823          	sw	a0,-1488(a5) # 6a30 <putcharfunc>
    1380:	00008067          	ret

00001384 <set_getcharfunc>:
    1384:	000077b7          	lui	a5,0x7
    1388:	a2a7a623          	sw	a0,-1492(a5) # 6a2c <getcharfunc>
    138c:	00008067          	ret

00001390 <putchar>:
    1390:	000077b7          	lui	a5,0x7
    1394:	a307a303          	lw	t1,-1488(a5) # 6a30 <putcharfunc>
    1398:	00030067          	jr	t1

0000139c <getchar>:
    139c:	000077b7          	lui	a5,0x7
    13a0:	a2c7a303          	lw	t1,-1492(a5) # 6a2c <getcharfunc>
    13a4:	00030067          	jr	t1

000013a8 <milliwait>:
    13a8:	006007b7          	lui	a5,0x600
    13ac:	0007a783          	lw	a5,0(a5) # 600000 <IO_BASE+0x200000>
    13b0:	0107d793          	srli	a5,a5,0x10
    13b4:	3ff7f793          	andi	a5,a5,1023
    13b8:	02a78533          	mul	a0,a5,a0
    13bc:	3e800793          	li	a5,1000
    13c0:	02f50533          	mul	a0,a0,a5
    13c4:	00000317          	auipc	t1,0x0
    13c8:	03830067          	jr	56(t1) # 13fc <wait_cycles>

000013cc <UART_putchar>:
    13cc:	00a1a423          	sw	a0,8(gp)

000013d0 <pcrx>:
    13d0:	0081a283          	lw	t0,8(gp)
    13d4:	2002f293          	andi	t0,t0,512
    13d8:	fe029ce3          	bnez	t0,13d0 <pcrx>
    13dc:	00008067          	ret

000013e0 <UART_getchar>:
    13e0:	0081a503          	lw	a0,8(gp)
    13e4:	10057293          	andi	t0,a0,256
    13e8:	fe028ce3          	beqz	t0,13e0 <UART_getchar>
    13ec:	0ff57513          	andi	a0,a0,255
    13f0:	00a00293          	li	t0,10
    13f4:	fe5506e3          	beq	a0,t0,13e0 <UART_getchar>
    13f8:	00008067          	ret

000013fc <wait_cycles>:
    13fc:	ff010113          	addi	sp,sp,-16
    1400:	00812423          	sw	s0,8(sp)
    1404:	00912223          	sw	s1,4(sp)
    1408:	00050413          	mv	s0,a0
    140c:	00112623          	sw	ra,12(sp)
    1410:	00000097          	auipc	ra,0x0
    1414:	044080e7          	jalr	68(ra) # 1454 <cycles>
    1418:	41f45793          	srai	a5,s0,0x1f
    141c:	00a404b3          	add	s1,s0,a0
    1420:	0084b433          	sltu	s0,s1,s0
    1424:	00b785b3          	add	a1,a5,a1
    1428:	00b40433          	add	s0,s0,a1
    142c:	00000097          	auipc	ra,0x0
    1430:	028080e7          	jalr	40(ra) # 1454 <cycles>
    1434:	fe85ece3          	bltu	a1,s0,142c <wait_cycles+0x30>
    1438:	00b41463          	bne	s0,a1,1440 <wait_cycles+0x44>
    143c:	fe9568e3          	bltu	a0,s1,142c <wait_cycles+0x30>
    1440:	00c12083          	lw	ra,12(sp)
    1444:	00812403          	lw	s0,8(sp)
    1448:	00412483          	lw	s1,4(sp)
    144c:	01010113          	addi	sp,sp,16
    1450:	00008067          	ret

00001454 <cycles>:
    1454:	000076b7          	lui	a3,0x7
    1458:	a746a783          	lw	a5,-1420(a3) # 6a74 <cycles_lap_.1900>
    145c:	02079263          	bnez	a5,1480 <cycles+0x2c>
    1460:	006007b7          	lui	a5,0x600
    1464:	0007a783          	lw	a5,0(a5) # 600000 <IO_BASE+0x200000>
    1468:	02000713          	li	a4,32
    146c:	07f7f793          	andi	a5,a5,127
    1470:	a6f6aa23          	sw	a5,-1420(a3)
    1474:	06e79a63          	bne	a5,a4,14e8 <cycles+0x94>
    1478:	fff00793          	li	a5,-1
    147c:	a6f6aa23          	sw	a5,-1420(a3)
    1480:	c0002873          	rdcycle	a6
    1484:	00007737          	lui	a4,0x7
    1488:	a7072783          	lw	a5,-1424(a4) # 6a70 <last_cycles32_.1902>
    148c:	00070613          	mv	a2,a4
    1490:	00007737          	lui	a4,0x7
    1494:	02f87263          	bgeu	a6,a5,14b8 <cycles+0x64>
    1498:	a746a583          	lw	a1,-1420(a3)
    149c:	a6872683          	lw	a3,-1432(a4) # 6a68 <cycles_.1901>
    14a0:	a6c72503          	lw	a0,-1428(a4)
    14a4:	00b685b3          	add	a1,a3,a1
    14a8:	00d5b6b3          	sltu	a3,a1,a3
    14ac:	00a686b3          	add	a3,a3,a0
    14b0:	a6b72423          	sw	a1,-1432(a4)
    14b4:	a6d72623          	sw	a3,-1428(a4)
    14b8:	a6872683          	lw	a3,-1432(a4)
    14bc:	a6c72583          	lw	a1,-1428(a4)
    14c0:	a7062823          	sw	a6,-1424(a2)
    14c4:	40f687b3          	sub	a5,a3,a5
    14c8:	01078533          	add	a0,a5,a6
    14cc:	00f6b6b3          	sltu	a3,a3,a5
    14d0:	40d586b3          	sub	a3,a1,a3
    14d4:	00f537b3          	sltu	a5,a0,a5
    14d8:	00d785b3          	add	a1,a5,a3
    14dc:	a6a72423          	sw	a0,-1432(a4)
    14e0:	a6b72623          	sw	a1,-1428(a4)
    14e4:	00008067          	ret
    14e8:	00100713          	li	a4,1
    14ec:	00f717b3          	sll	a5,a4,a5
    14f0:	f8dff06f          	j	147c <cycles+0x28>

000014f4 <printf>:
    14f4:	fb010113          	addi	sp,sp,-80
    14f8:	04f12223          	sw	a5,68(sp)
    14fc:	03410793          	addi	a5,sp,52
    1500:	02812423          	sw	s0,40(sp)
    1504:	03212023          	sw	s2,32(sp)
    1508:	01312e23          	sw	s3,28(sp)
    150c:	01412c23          	sw	s4,24(sp)
    1510:	01512a23          	sw	s5,20(sp)
    1514:	01612823          	sw	s6,16(sp)
    1518:	02112623          	sw	ra,44(sp)
    151c:	02912223          	sw	s1,36(sp)
    1520:	00050413          	mv	s0,a0
    1524:	02b12a23          	sw	a1,52(sp)
    1528:	02c12c23          	sw	a2,56(sp)
    152c:	02d12e23          	sw	a3,60(sp)
    1530:	04e12023          	sw	a4,64(sp)
    1534:	05012423          	sw	a6,72(sp)
    1538:	05112623          	sw	a7,76(sp)
    153c:	00f12623          	sw	a5,12(sp)
    1540:	02500913          	li	s2,37
    1544:	07300993          	li	s3,115
    1548:	07800a13          	li	s4,120
    154c:	06400a93          	li	s5,100
    1550:	06300b13          	li	s6,99
    1554:	00044503          	lbu	a0,0(s0)
    1558:	02051663          	bnez	a0,1584 <printf+0x90>
    155c:	02c12083          	lw	ra,44(sp)
    1560:	02812403          	lw	s0,40(sp)
    1564:	02412483          	lw	s1,36(sp)
    1568:	02012903          	lw	s2,32(sp)
    156c:	01c12983          	lw	s3,28(sp)
    1570:	01812a03          	lw	s4,24(sp)
    1574:	01412a83          	lw	s5,20(sp)
    1578:	01012b03          	lw	s6,16(sp)
    157c:	05010113          	addi	sp,sp,80
    1580:	00008067          	ret
    1584:	00140493          	addi	s1,s0,1
    1588:	09251663          	bne	a0,s2,1614 <printf+0x120>
    158c:	00144503          	lbu	a0,1(s0)
    1590:	03351263          	bne	a0,s3,15b4 <printf+0xc0>
    1594:	00c12783          	lw	a5,12(sp)
    1598:	0007a503          	lw	a0,0(a5)
    159c:	00478713          	addi	a4,a5,4
    15a0:	00e12623          	sw	a4,12(sp)
    15a4:	00000097          	auipc	ra,0x0
    15a8:	080080e7          	jalr	128(ra) # 1624 <print_string>
    15ac:	00148413          	addi	s0,s1,1
    15b0:	fa5ff06f          	j	1554 <printf+0x60>
    15b4:	03451063          	bne	a0,s4,15d4 <printf+0xe0>
    15b8:	00c12783          	lw	a5,12(sp)
    15bc:	0007a503          	lw	a0,0(a5)
    15c0:	00478713          	addi	a4,a5,4
    15c4:	00e12623          	sw	a4,12(sp)
    15c8:	00000097          	auipc	ra,0x0
    15cc:	1ac080e7          	jalr	428(ra) # 1774 <print_hex>
    15d0:	fddff06f          	j	15ac <printf+0xb8>
    15d4:	03551063          	bne	a0,s5,15f4 <printf+0x100>
    15d8:	00c12783          	lw	a5,12(sp)
    15dc:	0007a503          	lw	a0,0(a5)
    15e0:	00478713          	addi	a4,a5,4
    15e4:	00e12623          	sw	a4,12(sp)
    15e8:	00000097          	auipc	ra,0x0
    15ec:	0a0080e7          	jalr	160(ra) # 1688 <print_dec>
    15f0:	fbdff06f          	j	15ac <printf+0xb8>
    15f4:	01651a63          	bne	a0,s6,1608 <printf+0x114>
    15f8:	00c12783          	lw	a5,12(sp)
    15fc:	0007a503          	lw	a0,0(a5)
    1600:	00478713          	addi	a4,a5,4
    1604:	00e12623          	sw	a4,12(sp)
    1608:	00000097          	auipc	ra,0x0
    160c:	d88080e7          	jalr	-632(ra) # 1390 <putchar>
    1610:	f9dff06f          	j	15ac <printf+0xb8>
    1614:	00000097          	auipc	ra,0x0
    1618:	d7c080e7          	jalr	-644(ra) # 1390 <putchar>
    161c:	00040493          	mv	s1,s0
    1620:	f8dff06f          	j	15ac <printf+0xb8>

00001624 <print_string>:
    1624:	ff010113          	addi	sp,sp,-16
    1628:	00812423          	sw	s0,8(sp)
    162c:	00112623          	sw	ra,12(sp)
    1630:	00050413          	mv	s0,a0
    1634:	00044503          	lbu	a0,0(s0)
    1638:	00051a63          	bnez	a0,164c <print_string+0x28>
    163c:	00c12083          	lw	ra,12(sp)
    1640:	00812403          	lw	s0,8(sp)
    1644:	01010113          	addi	sp,sp,16
    1648:	00008067          	ret
    164c:	00000097          	auipc	ra,0x0
    1650:	d44080e7          	jalr	-700(ra) # 1390 <putchar>
    1654:	00140413          	addi	s0,s0,1
    1658:	fddff06f          	j	1634 <print_string+0x10>

0000165c <puts>:
    165c:	ff010113          	addi	sp,sp,-16
    1660:	00112623          	sw	ra,12(sp)
    1664:	00000097          	auipc	ra,0x0
    1668:	fc0080e7          	jalr	-64(ra) # 1624 <print_string>
    166c:	00a00513          	li	a0,10
    1670:	00000097          	auipc	ra,0x0
    1674:	d20080e7          	jalr	-736(ra) # 1390 <putchar>
    1678:	00c12083          	lw	ra,12(sp)
    167c:	00100513          	li	a0,1
    1680:	01010113          	addi	sp,sp,16
    1684:	00008067          	ret

00001688 <print_dec>:
    1688:	ef010113          	addi	sp,sp,-272
    168c:	10912223          	sw	s1,260(sp)
    1690:	10112623          	sw	ra,268(sp)
    1694:	10812423          	sw	s0,264(sp)
    1698:	11212023          	sw	s2,256(sp)
    169c:	00050493          	mv	s1,a0
    16a0:	0604d063          	bgez	s1,1700 <print_dec+0x78>
    16a4:	02d00513          	li	a0,45
    16a8:	00000097          	auipc	ra,0x0
    16ac:	ce8080e7          	jalr	-792(ra) # 1390 <putchar>
    16b0:	409004b3          	neg	s1,s1
    16b4:	fedff06f          	j	16a0 <print_dec+0x18>
    16b8:	02f4e733          	rem	a4,s1,a5
    16bc:	00140413          	addi	s0,s0,1
    16c0:	02f4c4b3          	div	s1,s1,a5
    16c4:	fee40fa3          	sb	a4,-1(s0)
    16c8:	fe0498e3          	bnez	s1,16b8 <print_dec+0x30>
    16cc:	ff2406e3          	beq	s0,s2,16b8 <print_dec+0x30>
    16d0:	fff40413          	addi	s0,s0,-1
    16d4:	00044503          	lbu	a0,0(s0)
    16d8:	03050513          	addi	a0,a0,48
    16dc:	00000097          	auipc	ra,0x0
    16e0:	cb4080e7          	jalr	-844(ra) # 1390 <putchar>
    16e4:	ff2416e3          	bne	s0,s2,16d0 <print_dec+0x48>
    16e8:	10c12083          	lw	ra,268(sp)
    16ec:	10812403          	lw	s0,264(sp)
    16f0:	10412483          	lw	s1,260(sp)
    16f4:	10012903          	lw	s2,256(sp)
    16f8:	11010113          	addi	sp,sp,272
    16fc:	00008067          	ret
    1700:	00010413          	mv	s0,sp
    1704:	00040913          	mv	s2,s0
    1708:	00a00793          	li	a5,10
    170c:	fbdff06f          	j	16c8 <print_dec+0x40>

00001710 <print_hex_digits>:
    1710:	ff010113          	addi	sp,sp,-16
    1714:	00912223          	sw	s1,4(sp)
    1718:	fff58593          	addi	a1,a1,-1
    171c:	000054b7          	lui	s1,0x5
    1720:	00812423          	sw	s0,8(sp)
    1724:	01212023          	sw	s2,0(sp)
    1728:	00112623          	sw	ra,12(sp)
    172c:	00050913          	mv	s2,a0
    1730:	00259413          	slli	s0,a1,0x2
    1734:	d1048493          	addi	s1,s1,-752 # 4d10 <_end+0x60>
    1738:	00045e63          	bgez	s0,1754 <print_hex_digits+0x44>
    173c:	00c12083          	lw	ra,12(sp)
    1740:	00812403          	lw	s0,8(sp)
    1744:	00412483          	lw	s1,4(sp)
    1748:	00012903          	lw	s2,0(sp)
    174c:	01010113          	addi	sp,sp,16
    1750:	00008067          	ret
    1754:	008957b3          	srl	a5,s2,s0
    1758:	00f7f793          	andi	a5,a5,15
    175c:	00f487b3          	add	a5,s1,a5
    1760:	0007c503          	lbu	a0,0(a5)
    1764:	ffc40413          	addi	s0,s0,-4
    1768:	00000097          	auipc	ra,0x0
    176c:	c28080e7          	jalr	-984(ra) # 1390 <putchar>
    1770:	fc9ff06f          	j	1738 <print_hex_digits+0x28>

00001774 <print_hex>:
    1774:	00800593          	li	a1,8
    1778:	00000317          	auipc	t1,0x0
    177c:	f9830067          	jr	-104(t1) # 1710 <print_hex_digits>

00001780 <memset>:
    1780:	00f00313          	li	t1,15
    1784:	00050713          	mv	a4,a0
    1788:	02c37e63          	bgeu	t1,a2,17c4 <memset+0x44>
    178c:	00f77793          	andi	a5,a4,15
    1790:	0a079063          	bnez	a5,1830 <memset+0xb0>
    1794:	08059263          	bnez	a1,1818 <memset+0x98>
    1798:	ff067693          	andi	a3,a2,-16
    179c:	00f67613          	andi	a2,a2,15
    17a0:	00e686b3          	add	a3,a3,a4
    17a4:	00b72023          	sw	a1,0(a4)
    17a8:	00b72223          	sw	a1,4(a4)
    17ac:	00b72423          	sw	a1,8(a4)
    17b0:	00b72623          	sw	a1,12(a4)
    17b4:	01070713          	addi	a4,a4,16
    17b8:	fed766e3          	bltu	a4,a3,17a4 <memset+0x24>
    17bc:	00061463          	bnez	a2,17c4 <memset+0x44>
    17c0:	00008067          	ret
    17c4:	40c306b3          	sub	a3,t1,a2
    17c8:	00269693          	slli	a3,a3,0x2
    17cc:	00000297          	auipc	t0,0x0
    17d0:	005686b3          	add	a3,a3,t0
    17d4:	00c68067          	jr	12(a3)
    17d8:	00b70723          	sb	a1,14(a4)
    17dc:	00b706a3          	sb	a1,13(a4)
    17e0:	00b70623          	sb	a1,12(a4)
    17e4:	00b705a3          	sb	a1,11(a4)
    17e8:	00b70523          	sb	a1,10(a4)
    17ec:	00b704a3          	sb	a1,9(a4)
    17f0:	00b70423          	sb	a1,8(a4)
    17f4:	00b703a3          	sb	a1,7(a4)
    17f8:	00b70323          	sb	a1,6(a4)
    17fc:	00b702a3          	sb	a1,5(a4)
    1800:	00b70223          	sb	a1,4(a4)
    1804:	00b701a3          	sb	a1,3(a4)
    1808:	00b70123          	sb	a1,2(a4)
    180c:	00b700a3          	sb	a1,1(a4)
    1810:	00b70023          	sb	a1,0(a4)
    1814:	00008067          	ret
    1818:	0ff5f593          	andi	a1,a1,255
    181c:	00859693          	slli	a3,a1,0x8
    1820:	00d5e5b3          	or	a1,a1,a3
    1824:	01059693          	slli	a3,a1,0x10
    1828:	00d5e5b3          	or	a1,a1,a3
    182c:	f6dff06f          	j	1798 <memset+0x18>
    1830:	00279693          	slli	a3,a5,0x2
    1834:	00000297          	auipc	t0,0x0
    1838:	005686b3          	add	a3,a3,t0
    183c:	00008293          	mv	t0,ra
    1840:	fa0680e7          	jalr	-96(a3)
    1844:	00028093          	mv	ra,t0
    1848:	ff078793          	addi	a5,a5,-16
    184c:	40f70733          	sub	a4,a4,a5
    1850:	00f60633          	add	a2,a2,a5
    1854:	f6c378e3          	bgeu	t1,a2,17c4 <memset+0x44>
    1858:	f3dff06f          	j	1794 <memset+0x14>

0000185c <fmod>:
    185c:	fe010113          	addi	sp,sp,-32
    1860:	00812c23          	sw	s0,24(sp)
    1864:	00912a23          	sw	s1,20(sp)
    1868:	01212823          	sw	s2,16(sp)
    186c:	01312623          	sw	s3,12(sp)
    1870:	01412423          	sw	s4,8(sp)
    1874:	01512223          	sw	s5,4(sp)
    1878:	00112e23          	sw	ra,28(sp)
    187c:	00050a13          	mv	s4,a0
    1880:	00058a93          	mv	s5,a1
    1884:	00060413          	mv	s0,a2
    1888:	00068493          	mv	s1,a3
    188c:	00000097          	auipc	ra,0x0
    1890:	2c0080e7          	jalr	704(ra) # 1b4c <__ieee754_fmod>
    1894:	00005797          	auipc	a5,0x5
    1898:	1e478793          	addi	a5,a5,484 # 6a78 <__fdlib_version>
    189c:	0007a703          	lw	a4,0(a5)
    18a0:	fff00793          	li	a5,-1
    18a4:	00050913          	mv	s2,a0
    18a8:	00058993          	mv	s3,a1
    18ac:	04f70c63          	beq	a4,a5,1904 <fmod+0xa8>
    18b0:	00040613          	mv	a2,s0
    18b4:	00048693          	mv	a3,s1
    18b8:	00040513          	mv	a0,s0
    18bc:	00048593          	mv	a1,s1
    18c0:	00003097          	auipc	ra,0x3
    18c4:	228080e7          	jalr	552(ra) # 4ae8 <__unorddf2>
    18c8:	02051e63          	bnez	a0,1904 <fmod+0xa8>
    18cc:	000a0613          	mv	a2,s4
    18d0:	000a8693          	mv	a3,s5
    18d4:	000a0513          	mv	a0,s4
    18d8:	000a8593          	mv	a1,s5
    18dc:	00003097          	auipc	ra,0x3
    18e0:	20c080e7          	jalr	524(ra) # 4ae8 <__unorddf2>
    18e4:	02051063          	bnez	a0,1904 <fmod+0xa8>
    18e8:	00000613          	li	a2,0
    18ec:	00000693          	li	a3,0
    18f0:	00040513          	mv	a0,s0
    18f4:	00048593          	mv	a1,s1
    18f8:	00002097          	auipc	ra,0x2
    18fc:	204080e7          	jalr	516(ra) # 3afc <__eqdf2>
    1900:	02050863          	beqz	a0,1930 <fmod+0xd4>
    1904:	01c12083          	lw	ra,28(sp)
    1908:	01812403          	lw	s0,24(sp)
    190c:	00090513          	mv	a0,s2
    1910:	00098593          	mv	a1,s3
    1914:	01412483          	lw	s1,20(sp)
    1918:	01012903          	lw	s2,16(sp)
    191c:	00c12983          	lw	s3,12(sp)
    1920:	00812a03          	lw	s4,8(sp)
    1924:	00412a83          	lw	s5,4(sp)
    1928:	02010113          	addi	sp,sp,32
    192c:	00008067          	ret
    1930:	ffffe097          	auipc	ra,0xffffe
    1934:	6f4080e7          	jalr	1780(ra) # 24 <__errno>
    1938:	02100793          	li	a5,33
    193c:	00000613          	li	a2,0
    1940:	00000693          	li	a3,0
    1944:	00f52023          	sw	a5,0(a0)
    1948:	00068593          	mv	a1,a3
    194c:	00060513          	mv	a0,a2
    1950:	00002097          	auipc	ra,0x2
    1954:	ad0080e7          	jalr	-1328(ra) # 3420 <__divdf3>
    1958:	00050913          	mv	s2,a0
    195c:	00058993          	mv	s3,a1
    1960:	fa5ff06f          	j	1904 <fmod+0xa8>

00001964 <log>:
    1964:	fe010113          	addi	sp,sp,-32
    1968:	00812c23          	sw	s0,24(sp)
    196c:	00912a23          	sw	s1,20(sp)
    1970:	01212823          	sw	s2,16(sp)
    1974:	01312623          	sw	s3,12(sp)
    1978:	00112e23          	sw	ra,28(sp)
    197c:	00050413          	mv	s0,a0
    1980:	00058493          	mv	s1,a1
    1984:	00000097          	auipc	ra,0x0
    1988:	4fc080e7          	jalr	1276(ra) # 1e80 <__ieee754_log>
    198c:	00005797          	auipc	a5,0x5
    1990:	0ec78793          	addi	a5,a5,236 # 6a78 <__fdlib_version>
    1994:	0007a703          	lw	a4,0(a5)
    1998:	fff00793          	li	a5,-1
    199c:	00050913          	mv	s2,a0
    19a0:	00058993          	mv	s3,a1
    19a4:	06f70c63          	beq	a4,a5,1a1c <log+0xb8>
    19a8:	00040613          	mv	a2,s0
    19ac:	00048693          	mv	a3,s1
    19b0:	00040513          	mv	a0,s0
    19b4:	00048593          	mv	a1,s1
    19b8:	00003097          	auipc	ra,0x3
    19bc:	130080e7          	jalr	304(ra) # 4ae8 <__unorddf2>
    19c0:	04051e63          	bnez	a0,1a1c <log+0xb8>
    19c4:	00000613          	li	a2,0
    19c8:	00000693          	li	a3,0
    19cc:	00040513          	mv	a0,s0
    19d0:	00048593          	mv	a1,s1
    19d4:	00002097          	auipc	ra,0x2
    19d8:	1b4080e7          	jalr	436(ra) # 3b88 <__gedf2>
    19dc:	04a04063          	bgtz	a0,1a1c <log+0xb8>
    19e0:	00000613          	li	a2,0
    19e4:	00000693          	li	a3,0
    19e8:	00040513          	mv	a0,s0
    19ec:	00048593          	mv	a1,s1
    19f0:	00002097          	auipc	ra,0x2
    19f4:	10c080e7          	jalr	268(ra) # 3afc <__eqdf2>
    19f8:	04051463          	bnez	a0,1a40 <log+0xdc>
    19fc:	ffffe097          	auipc	ra,0xffffe
    1a00:	628080e7          	jalr	1576(ra) # 24 <__errno>
    1a04:	02200793          	li	a5,34
    1a08:	00f52023          	sw	a5,0(a0)
    1a0c:	00003797          	auipc	a5,0x3
    1a10:	33c78793          	addi	a5,a5,828 # 4d48 <_end+0x98>
    1a14:	0007a903          	lw	s2,0(a5)
    1a18:	0047a983          	lw	s3,4(a5)
    1a1c:	01c12083          	lw	ra,28(sp)
    1a20:	01812403          	lw	s0,24(sp)
    1a24:	00090513          	mv	a0,s2
    1a28:	00098593          	mv	a1,s3
    1a2c:	01412483          	lw	s1,20(sp)
    1a30:	01012903          	lw	s2,16(sp)
    1a34:	00c12983          	lw	s3,12(sp)
    1a38:	02010113          	addi	sp,sp,32
    1a3c:	00008067          	ret
    1a40:	ffffe097          	auipc	ra,0xffffe
    1a44:	5e4080e7          	jalr	1508(ra) # 24 <__errno>
    1a48:	01812403          	lw	s0,24(sp)
    1a4c:	01c12083          	lw	ra,28(sp)
    1a50:	01412483          	lw	s1,20(sp)
    1a54:	01012903          	lw	s2,16(sp)
    1a58:	00c12983          	lw	s3,12(sp)
    1a5c:	02100793          	li	a5,33
    1a60:	00f52023          	sw	a5,0(a0)
    1a64:	00003517          	auipc	a0,0x3
    1a68:	2bc50513          	addi	a0,a0,700 # 4d20 <_end+0x70>
    1a6c:	02010113          	addi	sp,sp,32
    1a70:	00001317          	auipc	t1,0x1
    1a74:	d7c30067          	jr	-644(t1) # 27ec <nan>

00001a78 <sqrt>:
    1a78:	fe010113          	addi	sp,sp,-32
    1a7c:	00812c23          	sw	s0,24(sp)
    1a80:	00912a23          	sw	s1,20(sp)
    1a84:	01212823          	sw	s2,16(sp)
    1a88:	01312623          	sw	s3,12(sp)
    1a8c:	00112e23          	sw	ra,28(sp)
    1a90:	00050413          	mv	s0,a0
    1a94:	00058493          	mv	s1,a1
    1a98:	00001097          	auipc	ra,0x1
    1a9c:	a90080e7          	jalr	-1392(ra) # 2528 <__ieee754_sqrt>
    1aa0:	00005797          	auipc	a5,0x5
    1aa4:	fd878793          	addi	a5,a5,-40 # 6a78 <__fdlib_version>
    1aa8:	0007a703          	lw	a4,0(a5)
    1aac:	fff00793          	li	a5,-1
    1ab0:	00050913          	mv	s2,a0
    1ab4:	00058993          	mv	s3,a1
    1ab8:	02f70e63          	beq	a4,a5,1af4 <sqrt+0x7c>
    1abc:	00040613          	mv	a2,s0
    1ac0:	00048693          	mv	a3,s1
    1ac4:	00040513          	mv	a0,s0
    1ac8:	00048593          	mv	a1,s1
    1acc:	00003097          	auipc	ra,0x3
    1ad0:	01c080e7          	jalr	28(ra) # 4ae8 <__unorddf2>
    1ad4:	02051063          	bnez	a0,1af4 <sqrt+0x7c>
    1ad8:	00000613          	li	a2,0
    1adc:	00000693          	li	a3,0
    1ae0:	00040513          	mv	a0,s0
    1ae4:	00048593          	mv	a1,s1
    1ae8:	00002097          	auipc	ra,0x2
    1aec:	184080e7          	jalr	388(ra) # 3c6c <__ledf2>
    1af0:	02054463          	bltz	a0,1b18 <sqrt+0xa0>
    1af4:	01c12083          	lw	ra,28(sp)
    1af8:	01812403          	lw	s0,24(sp)
    1afc:	00090513          	mv	a0,s2
    1b00:	00098593          	mv	a1,s3
    1b04:	01412483          	lw	s1,20(sp)
    1b08:	01012903          	lw	s2,16(sp)
    1b0c:	00c12983          	lw	s3,12(sp)
    1b10:	02010113          	addi	sp,sp,32
    1b14:	00008067          	ret
    1b18:	ffffe097          	auipc	ra,0xffffe
    1b1c:	50c080e7          	jalr	1292(ra) # 24 <__errno>
    1b20:	02100793          	li	a5,33
    1b24:	00000613          	li	a2,0
    1b28:	00000693          	li	a3,0
    1b2c:	00f52023          	sw	a5,0(a0)
    1b30:	00068593          	mv	a1,a3
    1b34:	00060513          	mv	a0,a2
    1b38:	00002097          	auipc	ra,0x2
    1b3c:	8e8080e7          	jalr	-1816(ra) # 3420 <__divdf3>
    1b40:	00050913          	mv	s2,a0
    1b44:	00058993          	mv	s3,a1
    1b48:	fadff06f          	j	1af4 <sqrt+0x7c>

00001b4c <__ieee754_fmod>:
    1b4c:	80000f37          	lui	t5,0x80000
    1b50:	ffff4793          	not	a5,t5
    1b54:	00d7f8b3          	and	a7,a5,a3
    1b58:	00c8e733          	or	a4,a7,a2
    1b5c:	06070a63          	beqz	a4,1bd0 <__ieee754_fmod+0x84>
    1b60:	00b7f7b3          	and	a5,a5,a1
    1b64:	7ff00837          	lui	a6,0x7ff00
    1b68:	0707d463          	bge	a5,a6,1bd0 <__ieee754_fmod+0x84>
    1b6c:	40c00733          	neg	a4,a2
    1b70:	00c76733          	or	a4,a4,a2
    1b74:	01f75713          	srli	a4,a4,0x1f
    1b78:	01176733          	or	a4,a4,a7
    1b7c:	04e86a63          	bltu	a6,a4,1bd0 <__ieee754_fmod+0x84>
    1b80:	00060293          	mv	t0,a2
    1b84:	00050e93          	mv	t4,a0
    1b88:	00bf7f33          	and	t5,t5,a1
    1b8c:	00f8cc63          	blt	a7,a5,1ba4 <__ieee754_fmod+0x58>
    1b90:	00050713          	mv	a4,a0
    1b94:	00058813          	mv	a6,a1
    1b98:	0917c063          	blt	a5,a7,1c18 <__ieee754_fmod+0xcc>
    1b9c:	06c56e63          	bltu	a0,a2,1c18 <__ieee754_fmod+0xcc>
    1ba0:	04c50e63          	beq	a0,a2,1bfc <__ieee754_fmod+0xb0>
    1ba4:	7ff00737          	lui	a4,0x7ff00
    1ba8:	00b77733          	and	a4,a4,a1
    1bac:	06071c63          	bnez	a4,1c24 <__ieee754_fmod+0xd8>
    1bb0:	26079063          	bnez	a5,1e10 <__ieee754_fmod+0x2c4>
    1bb4:	00050713          	mv	a4,a0
    1bb8:	bed00813          	li	a6,-1043
    1bbc:	07d05863          	blez	t4,1c2c <__ieee754_fmod+0xe0>
    1bc0:	00171713          	slli	a4,a4,0x1
    1bc4:	fff80813          	addi	a6,a6,-1 # 7fefffff <IO_BASE+0x7fafffff>
    1bc8:	fee04ce3          	bgtz	a4,1bc0 <__ieee754_fmod+0x74>
    1bcc:	0600006f          	j	1c2c <__ieee754_fmod+0xe0>
    1bd0:	ff010113          	addi	sp,sp,-16
    1bd4:	00112623          	sw	ra,12(sp)
    1bd8:	00002097          	auipc	ra,0x2
    1bdc:	178080e7          	jalr	376(ra) # 3d50 <__muldf3>
    1be0:	00050613          	mv	a2,a0
    1be4:	00058693          	mv	a3,a1
    1be8:	00002097          	auipc	ra,0x2
    1bec:	838080e7          	jalr	-1992(ra) # 3420 <__divdf3>
    1bf0:	00c12083          	lw	ra,12(sp)
    1bf4:	01010113          	addi	sp,sp,16
    1bf8:	00008067          	ret
    1bfc:	01ff5793          	srli	a5,t5,0x1f
    1c00:	00379713          	slli	a4,a5,0x3
    1c04:	00005797          	auipc	a5,0x5
    1c08:	c4478793          	addi	a5,a5,-956 # 6848 <Zero>
    1c0c:	00e787b3          	add	a5,a5,a4
    1c10:	0007a703          	lw	a4,0(a5)
    1c14:	0047a803          	lw	a6,4(a5)
    1c18:	00070513          	mv	a0,a4
    1c1c:	00080593          	mv	a1,a6
    1c20:	00008067          	ret
    1c24:	4147d813          	srai	a6,a5,0x14
    1c28:	c0180813          	addi	a6,a6,-1023
    1c2c:	7ff00737          	lui	a4,0x7ff00
    1c30:	00d77733          	and	a4,a4,a3
    1c34:	02071263          	bnez	a4,1c58 <__ieee754_fmod+0x10c>
    1c38:	1a089e63          	bnez	a7,1df4 <__ieee754_fmod+0x2a8>
    1c3c:	00060713          	mv	a4,a2
    1c40:	bed00f93          	li	t6,-1043
    1c44:	00505e63          	blez	t0,1c60 <__ieee754_fmod+0x114>
    1c48:	00171713          	slli	a4,a4,0x1
    1c4c:	ffff8f93          	addi	t6,t6,-1
    1c50:	fee04ce3          	bgtz	a4,1c48 <__ieee754_fmod+0xfc>
    1c54:	00c0006f          	j	1c60 <__ieee754_fmod+0x114>
    1c58:	4148df93          	srai	t6,a7,0x14
    1c5c:	c01f8f93          	addi	t6,t6,-1023
    1c60:	c0200713          	li	a4,-1022
    1c64:	14e84263          	blt	a6,a4,1da8 <__ieee754_fmod+0x25c>
    1c68:	00100737          	lui	a4,0x100
    1c6c:	fff70793          	addi	a5,a4,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    1c70:	00b7f7b3          	and	a5,a5,a1
    1c74:	00e7e7b3          	or	a5,a5,a4
    1c78:	c0200713          	li	a4,-1022
    1c7c:	10efc463          	blt	t6,a4,1d84 <__ieee754_fmod+0x238>
    1c80:	00100337          	lui	t1,0x100
    1c84:	fff30613          	addi	a2,t1,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    1c88:	00d67633          	and	a2,a2,a3
    1c8c:	00666333          	or	t1,a2,t1
    1c90:	41f806b3          	sub	a3,a6,t6
    1c94:	405e8633          	sub	a2,t4,t0
    1c98:	005eb5b3          	sltu	a1,t4,t0
    1c9c:	01f65813          	srli	a6,a2,0x1f
    1ca0:	40678733          	sub	a4,a5,t1
    1ca4:	04068463          	beqz	a3,1cec <__ieee754_fmod+0x1a0>
    1ca8:	40b70733          	sub	a4,a4,a1
    1cac:	01fede13          	srli	t3,t4,0x1f
    1cb0:	00179793          	slli	a5,a5,0x1
    1cb4:	00c765b3          	or	a1,a4,a2
    1cb8:	00171893          	slli	a7,a4,0x1
    1cbc:	01c787b3          	add	a5,a5,t3
    1cc0:	001e9e93          	slli	t4,t4,0x1
    1cc4:	00074863          	bltz	a4,1cd4 <__ieee754_fmod+0x188>
    1cc8:	08058a63          	beqz	a1,1d5c <__ieee754_fmod+0x210>
    1ccc:	010887b3          	add	a5,a7,a6
    1cd0:	00161e93          	slli	t4,a2,0x1
    1cd4:	405e8633          	sub	a2,t4,t0
    1cd8:	fff68693          	addi	a3,a3,-1
    1cdc:	005eb5b3          	sltu	a1,t4,t0
    1ce0:	01f65813          	srli	a6,a2,0x1f
    1ce4:	40678733          	sub	a4,a5,t1
    1ce8:	fc0690e3          	bnez	a3,1ca8 <__ieee754_fmod+0x15c>
    1cec:	40b70733          	sub	a4,a4,a1
    1cf0:	00074663          	bltz	a4,1cfc <__ieee754_fmod+0x1b0>
    1cf4:	00060e93          	mv	t4,a2
    1cf8:	00070793          	mv	a5,a4
    1cfc:	01d7e733          	or	a4,a5,t4
    1d00:	04070e63          	beqz	a4,1d5c <__ieee754_fmod+0x210>
    1d04:	00100737          	lui	a4,0x100
    1d08:	001006b7          	lui	a3,0x100
    1d0c:	00e7de63          	bge	a5,a4,1d28 <__ieee754_fmod+0x1dc>
    1d10:	01fed713          	srli	a4,t4,0x1f
    1d14:	00179793          	slli	a5,a5,0x1
    1d18:	00e787b3          	add	a5,a5,a4
    1d1c:	001e9e93          	slli	t4,t4,0x1
    1d20:	ffff8f93          	addi	t6,t6,-1
    1d24:	fed7c6e3          	blt	a5,a3,1d10 <__ieee754_fmod+0x1c4>
    1d28:	c0200713          	li	a4,-1022
    1d2c:	10efd063          	bge	t6,a4,1e2c <__ieee754_fmod+0x2e0>
    1d30:	41f70733          	sub	a4,a4,t6
    1d34:	01400693          	li	a3,20
    1d38:	10e6ca63          	blt	a3,a4,1e4c <__ieee754_fmod+0x300>
    1d3c:	41ef8693          	addi	a3,t6,1054
    1d40:	00d796b3          	sll	a3,a5,a3
    1d44:	40e7d7b3          	sra	a5,a5,a4
    1d48:	00eedeb3          	srl	t4,t4,a4
    1d4c:	00ff6f33          	or	t5,t5,a5
    1d50:	01d6e733          	or	a4,a3,t4
    1d54:	000f0813          	mv	a6,t5
    1d58:	ec1ff06f          	j	1c18 <__ieee754_fmod+0xcc>
    1d5c:	01ff5f13          	srli	t5,t5,0x1f
    1d60:	003f1f13          	slli	t5,t5,0x3
    1d64:	00005797          	auipc	a5,0x5
    1d68:	ae478793          	addi	a5,a5,-1308 # 6848 <Zero>
    1d6c:	01e787b3          	add	a5,a5,t5
    1d70:	0007a703          	lw	a4,0(a5)
    1d74:	0047a803          	lw	a6,4(a5)
    1d78:	00070513          	mv	a0,a4
    1d7c:	00080593          	mv	a1,a6
    1d80:	00008067          	ret
    1d84:	41f70733          	sub	a4,a4,t6
    1d88:	01f00693          	li	a3,31
    1d8c:	04e6ca63          	blt	a3,a4,1de0 <__ieee754_fmod+0x294>
    1d90:	41ef8313          	addi	t1,t6,1054
    1d94:	00665333          	srl	t1,a2,t1
    1d98:	00e896b3          	sll	a3,a7,a4
    1d9c:	00d36333          	or	t1,t1,a3
    1da0:	00e612b3          	sll	t0,a2,a4
    1da4:	eedff06f          	j	1c90 <__ieee754_fmod+0x144>
    1da8:	41070733          	sub	a4,a4,a6
    1dac:	01f00593          	li	a1,31
    1db0:	00e5ce63          	blt	a1,a4,1dcc <__ieee754_fmod+0x280>
    1db4:	41e80593          	addi	a1,a6,1054
    1db8:	00b555b3          	srl	a1,a0,a1
    1dbc:	00e797b3          	sll	a5,a5,a4
    1dc0:	00f5e7b3          	or	a5,a1,a5
    1dc4:	00e51eb3          	sll	t4,a0,a4
    1dc8:	eb1ff06f          	j	1c78 <__ieee754_fmod+0x12c>
    1dcc:	be200793          	li	a5,-1054
    1dd0:	410787b3          	sub	a5,a5,a6
    1dd4:	00f517b3          	sll	a5,a0,a5
    1dd8:	00000e93          	li	t4,0
    1ddc:	e9dff06f          	j	1c78 <__ieee754_fmod+0x12c>
    1de0:	be200693          	li	a3,-1054
    1de4:	41f686b3          	sub	a3,a3,t6
    1de8:	00d61333          	sll	t1,a2,a3
    1dec:	00000293          	li	t0,0
    1df0:	ea1ff06f          	j	1c90 <__ieee754_fmod+0x144>
    1df4:	00b89713          	slli	a4,a7,0xb
    1df8:	c0200f93          	li	t6,-1022
    1dfc:	e6e052e3          	blez	a4,1c60 <__ieee754_fmod+0x114>
    1e00:	00171713          	slli	a4,a4,0x1
    1e04:	ffff8f93          	addi	t6,t6,-1
    1e08:	fee04ce3          	bgtz	a4,1e00 <__ieee754_fmod+0x2b4>
    1e0c:	e55ff06f          	j	1c60 <__ieee754_fmod+0x114>
    1e10:	00b79713          	slli	a4,a5,0xb
    1e14:	c0200813          	li	a6,-1022
    1e18:	e0e05ae3          	blez	a4,1c2c <__ieee754_fmod+0xe0>
    1e1c:	00171713          	slli	a4,a4,0x1
    1e20:	fff80813          	addi	a6,a6,-1
    1e24:	fee04ce3          	bgtz	a4,1e1c <__ieee754_fmod+0x2d0>
    1e28:	e05ff06f          	j	1c2c <__ieee754_fmod+0xe0>
    1e2c:	fff00737          	lui	a4,0xfff00
    1e30:	00e787b3          	add	a5,a5,a4
    1e34:	3fff8813          	addi	a6,t6,1023
    1e38:	01481813          	slli	a6,a6,0x14
    1e3c:	01e7ef33          	or	t5,a5,t5
    1e40:	000e8713          	mv	a4,t4
    1e44:	01e86833          	or	a6,a6,t5
    1e48:	dd1ff06f          	j	1c18 <__ieee754_fmod+0xcc>
    1e4c:	01f00693          	li	a3,31
    1e50:	00e6ce63          	blt	a3,a4,1e6c <__ieee754_fmod+0x320>
    1e54:	41ef8f93          	addi	t6,t6,1054
    1e58:	00eed733          	srl	a4,t4,a4
    1e5c:	01f797b3          	sll	a5,a5,t6
    1e60:	00e7e733          	or	a4,a5,a4
    1e64:	000f0813          	mv	a6,t5
    1e68:	db1ff06f          	j	1c18 <__ieee754_fmod+0xcc>
    1e6c:	be200713          	li	a4,-1054
    1e70:	41f70733          	sub	a4,a4,t6
    1e74:	40e7d733          	sra	a4,a5,a4
    1e78:	000f0813          	mv	a6,t5
    1e7c:	d9dff06f          	j	1c18 <__ieee754_fmod+0xcc>

00001e80 <__ieee754_log>:
    1e80:	fb010113          	addi	sp,sp,-80
    1e84:	04112623          	sw	ra,76(sp)
    1e88:	04812423          	sw	s0,72(sp)
    1e8c:	04912223          	sw	s1,68(sp)
    1e90:	05212023          	sw	s2,64(sp)
    1e94:	03312e23          	sw	s3,60(sp)
    1e98:	03412c23          	sw	s4,56(sp)
    1e9c:	03512a23          	sw	s5,52(sp)
    1ea0:	03612823          	sw	s6,48(sp)
    1ea4:	03712623          	sw	s7,44(sp)
    1ea8:	03812423          	sw	s8,40(sp)
    1eac:	03912223          	sw	s9,36(sp)
    1eb0:	03a12023          	sw	s10,32(sp)
    1eb4:	01b12e23          	sw	s11,28(sp)
    1eb8:	00100837          	lui	a6,0x100
    1ebc:	00058713          	mv	a4,a1
    1ec0:	00050693          	mv	a3,a0
    1ec4:	1f05d863          	bge	a1,a6,20b4 <IO_FGA_DAT+0xb4>
    1ec8:	00159793          	slli	a5,a1,0x1
    1ecc:	0017d793          	srli	a5,a5,0x1
    1ed0:	00a7e7b3          	or	a5,a5,a0
    1ed4:	4a078c63          	beqz	a5,238c <IO_FGA_DAT+0x38c>
    1ed8:	5c05c063          	bltz	a1,2498 <IO_FGA_DAT+0x498>
    1edc:	00003797          	auipc	a5,0x3
    1ee0:	e7c78793          	addi	a5,a5,-388 # 4d58 <_end+0xa8>
    1ee4:	0007a603          	lw	a2,0(a5)
    1ee8:	0047a683          	lw	a3,4(a5)
    1eec:	00002097          	auipc	ra,0x2
    1ef0:	e64080e7          	jalr	-412(ra) # 3d50 <__muldf3>
    1ef4:	00058793          	mv	a5,a1
    1ef8:	7ff00637          	lui	a2,0x7ff00
    1efc:	00050693          	mv	a3,a0
    1f00:	00058713          	mv	a4,a1
    1f04:	fca00513          	li	a0,-54
    1f08:	1ac7de63          	bge	a5,a2,20c4 <IO_FGA_DAT+0xc4>
    1f0c:	00100637          	lui	a2,0x100
    1f10:	fff60913          	addi	s2,a2,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    1f14:	00096737          	lui	a4,0x96
    1f18:	0127fcb3          	and	s9,a5,s2
    1f1c:	f6470713          	addi	a4,a4,-156 # 95f64 <IO_HW_CONFIG_RAM+0x15f64>
    1f20:	00ec8733          	add	a4,s9,a4
    1f24:	00c77733          	and	a4,a4,a2
    1f28:	00068593          	mv	a1,a3
    1f2c:	3ff00837          	lui	a6,0x3ff00
    1f30:	00003697          	auipc	a3,0x3
    1f34:	e0868693          	addi	a3,a3,-504 # 4d38 <_end+0x88>
    1f38:	01074833          	xor	a6,a4,a6
    1f3c:	0006a603          	lw	a2,0(a3)
    1f40:	4147d793          	srai	a5,a5,0x14
    1f44:	0046a683          	lw	a3,4(a3)
    1f48:	01986833          	or	a6,a6,s9
    1f4c:	c0178793          	addi	a5,a5,-1023
    1f50:	00a787b3          	add	a5,a5,a0
    1f54:	41475713          	srai	a4,a4,0x14
    1f58:	00058513          	mv	a0,a1
    1f5c:	00080593          	mv	a1,a6
    1f60:	00f70c33          	add	s8,a4,a5
    1f64:	00002097          	auipc	ra,0x2
    1f68:	3b8080e7          	jalr	952(ra) # 431c <__subdf3>
    1f6c:	002c8793          	addi	a5,s9,2
    1f70:	0127f7b3          	and	a5,a5,s2
    1f74:	00200713          	li	a4,2
    1f78:	00050413          	mv	s0,a0
    1f7c:	00058493          	mv	s1,a1
    1f80:	18f74c63          	blt	a4,a5,2118 <IO_FGA_DAT+0x118>
    1f84:	00000613          	li	a2,0
    1f88:	00000693          	li	a3,0
    1f8c:	00002097          	auipc	ra,0x2
    1f90:	b70080e7          	jalr	-1168(ra) # 3afc <__eqdf2>
    1f94:	40050e63          	beqz	a0,23b0 <IO_FGA_DAT+0x3b0>
    1f98:	00003797          	auipc	a5,0x3
    1f9c:	dd878793          	addi	a5,a5,-552 # 4d70 <_end+0xc0>
    1fa0:	0007a603          	lw	a2,0(a5)
    1fa4:	0047a683          	lw	a3,4(a5)
    1fa8:	00040513          	mv	a0,s0
    1fac:	00048593          	mv	a1,s1
    1fb0:	00002097          	auipc	ra,0x2
    1fb4:	da0080e7          	jalr	-608(ra) # 3d50 <__muldf3>
    1fb8:	00003797          	auipc	a5,0x3
    1fbc:	dc078793          	addi	a5,a5,-576 # 4d78 <_end+0xc8>
    1fc0:	00050613          	mv	a2,a0
    1fc4:	00058693          	mv	a3,a1
    1fc8:	0007a503          	lw	a0,0(a5)
    1fcc:	0047a583          	lw	a1,4(a5)
    1fd0:	00002097          	auipc	ra,0x2
    1fd4:	34c080e7          	jalr	844(ra) # 431c <__subdf3>
    1fd8:	00050913          	mv	s2,a0
    1fdc:	00058993          	mv	s3,a1
    1fe0:	00040613          	mv	a2,s0
    1fe4:	00048693          	mv	a3,s1
    1fe8:	00040513          	mv	a0,s0
    1fec:	00048593          	mv	a1,s1
    1ff0:	00002097          	auipc	ra,0x2
    1ff4:	d60080e7          	jalr	-672(ra) # 3d50 <__muldf3>
    1ff8:	00050613          	mv	a2,a0
    1ffc:	00058693          	mv	a3,a1
    2000:	00090513          	mv	a0,s2
    2004:	00098593          	mv	a1,s3
    2008:	00002097          	auipc	ra,0x2
    200c:	d48080e7          	jalr	-696(ra) # 3d50 <__muldf3>
    2010:	00050913          	mv	s2,a0
    2014:	00058993          	mv	s3,a1
    2018:	460c0263          	beqz	s8,247c <IO_FGA_DAT+0x47c>
    201c:	000c0513          	mv	a0,s8
    2020:	00003097          	auipc	ra,0x3
    2024:	b94080e7          	jalr	-1132(ra) # 4bb4 <__floatsidf>
    2028:	00003797          	auipc	a5,0x3
    202c:	d3878793          	addi	a5,a5,-712 # 4d60 <_end+0xb0>
    2030:	0007a603          	lw	a2,0(a5)
    2034:	0047a683          	lw	a3,4(a5)
    2038:	00050b13          	mv	s6,a0
    203c:	00058b93          	mv	s7,a1
    2040:	00002097          	auipc	ra,0x2
    2044:	d10080e7          	jalr	-752(ra) # 3d50 <__muldf3>
    2048:	00003797          	auipc	a5,0x3
    204c:	d2078793          	addi	a5,a5,-736 # 4d68 <_end+0xb8>
    2050:	0007a603          	lw	a2,0(a5)
    2054:	0047a683          	lw	a3,4(a5)
    2058:	00050a13          	mv	s4,a0
    205c:	00058a93          	mv	s5,a1
    2060:	000b0513          	mv	a0,s6
    2064:	000b8593          	mv	a1,s7
    2068:	00002097          	auipc	ra,0x2
    206c:	ce8080e7          	jalr	-792(ra) # 3d50 <__muldf3>
    2070:	00050613          	mv	a2,a0
    2074:	00058693          	mv	a3,a1
    2078:	00090513          	mv	a0,s2
    207c:	00098593          	mv	a1,s3
    2080:	00002097          	auipc	ra,0x2
    2084:	29c080e7          	jalr	668(ra) # 431c <__subdf3>
    2088:	00040613          	mv	a2,s0
    208c:	00048693          	mv	a3,s1
    2090:	00002097          	auipc	ra,0x2
    2094:	28c080e7          	jalr	652(ra) # 431c <__subdf3>
    2098:	00050613          	mv	a2,a0
    209c:	00058693          	mv	a3,a1
    20a0:	000a0513          	mv	a0,s4
    20a4:	000a8593          	mv	a1,s5
    20a8:	00002097          	auipc	ra,0x2
    20ac:	274080e7          	jalr	628(ra) # 431c <__subdf3>
    20b0:	02c0006f          	j	20dc <IO_FGA_DAT+0xdc>
    20b4:	00058793          	mv	a5,a1
    20b8:	7ff00637          	lui	a2,0x7ff00
    20bc:	00000513          	li	a0,0
    20c0:	e4c7c6e3          	blt	a5,a2,1f0c <__ieee754_log+0x8c>
    20c4:	00068513          	mv	a0,a3
    20c8:	00068613          	mv	a2,a3
    20cc:	00070593          	mv	a1,a4
    20d0:	00070693          	mv	a3,a4
    20d4:	00001097          	auipc	ra,0x1
    20d8:	b84080e7          	jalr	-1148(ra) # 2c58 <__adddf3>
    20dc:	04c12083          	lw	ra,76(sp)
    20e0:	04812403          	lw	s0,72(sp)
    20e4:	04412483          	lw	s1,68(sp)
    20e8:	04012903          	lw	s2,64(sp)
    20ec:	03c12983          	lw	s3,60(sp)
    20f0:	03812a03          	lw	s4,56(sp)
    20f4:	03412a83          	lw	s5,52(sp)
    20f8:	03012b03          	lw	s6,48(sp)
    20fc:	02c12b83          	lw	s7,44(sp)
    2100:	02812c03          	lw	s8,40(sp)
    2104:	02412c83          	lw	s9,36(sp)
    2108:	02012d03          	lw	s10,32(sp)
    210c:	01c12d83          	lw	s11,28(sp)
    2110:	05010113          	addi	sp,sp,80
    2114:	00008067          	ret
    2118:	00003797          	auipc	a5,0x3
    211c:	c6878793          	addi	a5,a5,-920 # 4d80 <_end+0xd0>
    2120:	0007a603          	lw	a2,0(a5)
    2124:	0047a683          	lw	a3,4(a5)
    2128:	00001097          	auipc	ra,0x1
    212c:	b30080e7          	jalr	-1232(ra) # 2c58 <__adddf3>
    2130:	00050613          	mv	a2,a0
    2134:	00058693          	mv	a3,a1
    2138:	00040513          	mv	a0,s0
    213c:	00048593          	mv	a1,s1
    2140:	00001097          	auipc	ra,0x1
    2144:	2e0080e7          	jalr	736(ra) # 3420 <__divdf3>
    2148:	00050a13          	mv	s4,a0
    214c:	000c0513          	mv	a0,s8
    2150:	00058a93          	mv	s5,a1
    2154:	00003097          	auipc	ra,0x3
    2158:	a60080e7          	jalr	-1440(ra) # 4bb4 <__floatsidf>
    215c:	000a0613          	mv	a2,s4
    2160:	000a8693          	mv	a3,s5
    2164:	00050b13          	mv	s6,a0
    2168:	00058b93          	mv	s7,a1
    216c:	000a0513          	mv	a0,s4
    2170:	000a8593          	mv	a1,s5
    2174:	00002097          	auipc	ra,0x2
    2178:	bdc080e7          	jalr	-1060(ra) # 3d50 <__muldf3>
    217c:	fff9f737          	lui	a4,0xfff9f
    2180:	b8670713          	addi	a4,a4,-1146 # fff9eb86 <IO_BASE+0xffb9eb86>
    2184:	00ec8733          	add	a4,s9,a4
    2188:	00050613          	mv	a2,a0
    218c:	00058693          	mv	a3,a1
    2190:	00e12623          	sw	a4,12(sp)
    2194:	00050d13          	mv	s10,a0
    2198:	00058d93          	mv	s11,a1
    219c:	00002097          	auipc	ra,0x2
    21a0:	bb4080e7          	jalr	-1100(ra) # 3d50 <__muldf3>
    21a4:	00003797          	auipc	a5,0x3
    21a8:	be478793          	addi	a5,a5,-1052 # 4d88 <_end+0xd8>
    21ac:	0007a603          	lw	a2,0(a5)
    21b0:	0047a683          	lw	a3,4(a5)
    21b4:	00050913          	mv	s2,a0
    21b8:	00058993          	mv	s3,a1
    21bc:	00002097          	auipc	ra,0x2
    21c0:	b94080e7          	jalr	-1132(ra) # 3d50 <__muldf3>
    21c4:	00003797          	auipc	a5,0x3
    21c8:	bcc78793          	addi	a5,a5,-1076 # 4d90 <_end+0xe0>
    21cc:	0007a603          	lw	a2,0(a5)
    21d0:	0047a683          	lw	a3,4(a5)
    21d4:	00001097          	auipc	ra,0x1
    21d8:	a84080e7          	jalr	-1404(ra) # 2c58 <__adddf3>
    21dc:	00090613          	mv	a2,s2
    21e0:	00098693          	mv	a3,s3
    21e4:	00002097          	auipc	ra,0x2
    21e8:	b6c080e7          	jalr	-1172(ra) # 3d50 <__muldf3>
    21ec:	00003797          	auipc	a5,0x3
    21f0:	bac78793          	addi	a5,a5,-1108 # 4d98 <_end+0xe8>
    21f4:	0007a603          	lw	a2,0(a5)
    21f8:	0047a683          	lw	a3,4(a5)
    21fc:	00001097          	auipc	ra,0x1
    2200:	a5c080e7          	jalr	-1444(ra) # 2c58 <__adddf3>
    2204:	00090613          	mv	a2,s2
    2208:	00098693          	mv	a3,s3
    220c:	00002097          	auipc	ra,0x2
    2210:	b44080e7          	jalr	-1212(ra) # 3d50 <__muldf3>
    2214:	00003797          	auipc	a5,0x3
    2218:	b8c78793          	addi	a5,a5,-1140 # 4da0 <_end+0xf0>
    221c:	0007a603          	lw	a2,0(a5)
    2220:	0047a683          	lw	a3,4(a5)
    2224:	00001097          	auipc	ra,0x1
    2228:	a34080e7          	jalr	-1484(ra) # 2c58 <__adddf3>
    222c:	000d0613          	mv	a2,s10
    2230:	000d8693          	mv	a3,s11
    2234:	00002097          	auipc	ra,0x2
    2238:	b1c080e7          	jalr	-1252(ra) # 3d50 <__muldf3>
    223c:	00003797          	auipc	a5,0x3
    2240:	b6c78793          	addi	a5,a5,-1172 # 4da8 <_end+0xf8>
    2244:	0007a603          	lw	a2,0(a5)
    2248:	0047a683          	lw	a3,4(a5)
    224c:	00050d13          	mv	s10,a0
    2250:	00058d93          	mv	s11,a1
    2254:	00090513          	mv	a0,s2
    2258:	00098593          	mv	a1,s3
    225c:	00002097          	auipc	ra,0x2
    2260:	af4080e7          	jalr	-1292(ra) # 3d50 <__muldf3>
    2264:	00003797          	auipc	a5,0x3
    2268:	b4c78793          	addi	a5,a5,-1204 # 4db0 <_end+0x100>
    226c:	0007a603          	lw	a2,0(a5)
    2270:	0047a683          	lw	a3,4(a5)
    2274:	00001097          	auipc	ra,0x1
    2278:	9e4080e7          	jalr	-1564(ra) # 2c58 <__adddf3>
    227c:	00090613          	mv	a2,s2
    2280:	00098693          	mv	a3,s3
    2284:	00002097          	auipc	ra,0x2
    2288:	acc080e7          	jalr	-1332(ra) # 3d50 <__muldf3>
    228c:	00003797          	auipc	a5,0x3
    2290:	b2c78793          	addi	a5,a5,-1236 # 4db8 <_end+0x108>
    2294:	0007a603          	lw	a2,0(a5)
    2298:	0047a683          	lw	a3,4(a5)
    229c:	00001097          	auipc	ra,0x1
    22a0:	9bc080e7          	jalr	-1604(ra) # 2c58 <__adddf3>
    22a4:	00090613          	mv	a2,s2
    22a8:	00098693          	mv	a3,s3
    22ac:	00002097          	auipc	ra,0x2
    22b0:	aa4080e7          	jalr	-1372(ra) # 3d50 <__muldf3>
    22b4:	00050613          	mv	a2,a0
    22b8:	00058693          	mv	a3,a1
    22bc:	000d0513          	mv	a0,s10
    22c0:	000d8593          	mv	a1,s11
    22c4:	00001097          	auipc	ra,0x1
    22c8:	994080e7          	jalr	-1644(ra) # 2c58 <__adddf3>
    22cc:	0006c7b7          	lui	a5,0x6c
    22d0:	00c12703          	lw	a4,12(sp)
    22d4:	85178793          	addi	a5,a5,-1967 # 6b851 <__fdlib_version+0x64dd9>
    22d8:	41978cb3          	sub	s9,a5,s9
    22dc:	00ececb3          	or	s9,s9,a4
    22e0:	00050913          	mv	s2,a0
    22e4:	00058993          	mv	s3,a1
    22e8:	15905263          	blez	s9,242c <IO_FGA_DAT+0x42c>
    22ec:	00003797          	auipc	a5,0x3
    22f0:	a8c78793          	addi	a5,a5,-1396 # 4d78 <_end+0xc8>
    22f4:	0007a603          	lw	a2,0(a5)
    22f8:	0047a683          	lw	a3,4(a5)
    22fc:	00040513          	mv	a0,s0
    2300:	00048593          	mv	a1,s1
    2304:	00002097          	auipc	ra,0x2
    2308:	a4c080e7          	jalr	-1460(ra) # 3d50 <__muldf3>
    230c:	00040613          	mv	a2,s0
    2310:	00048693          	mv	a3,s1
    2314:	00002097          	auipc	ra,0x2
    2318:	a3c080e7          	jalr	-1476(ra) # 3d50 <__muldf3>
    231c:	00050613          	mv	a2,a0
    2320:	00058693          	mv	a3,a1
    2324:	00050d13          	mv	s10,a0
    2328:	00058d93          	mv	s11,a1
    232c:	00090513          	mv	a0,s2
    2330:	00098593          	mv	a1,s3
    2334:	00001097          	auipc	ra,0x1
    2338:	924080e7          	jalr	-1756(ra) # 2c58 <__adddf3>
    233c:	000a0613          	mv	a2,s4
    2340:	000a8693          	mv	a3,s5
    2344:	00002097          	auipc	ra,0x2
    2348:	a0c080e7          	jalr	-1524(ra) # 3d50 <__muldf3>
    234c:	00050913          	mv	s2,a0
    2350:	00058993          	mv	s3,a1
    2354:	160c1463          	bnez	s8,24bc <IO_FGA_DAT+0x4bc>
    2358:	00050613          	mv	a2,a0
    235c:	00058693          	mv	a3,a1
    2360:	000d0513          	mv	a0,s10
    2364:	000d8593          	mv	a1,s11
    2368:	00002097          	auipc	ra,0x2
    236c:	fb4080e7          	jalr	-76(ra) # 431c <__subdf3>
    2370:	00050613          	mv	a2,a0
    2374:	00058693          	mv	a3,a1
    2378:	00040513          	mv	a0,s0
    237c:	00048593          	mv	a1,s1
    2380:	00002097          	auipc	ra,0x2
    2384:	f9c080e7          	jalr	-100(ra) # 431c <__subdf3>
    2388:	d55ff06f          	j	20dc <IO_FGA_DAT+0xdc>
    238c:	00003797          	auipc	a5,0x3
    2390:	9c478793          	addi	a5,a5,-1596 # 4d50 <_end+0xa0>
    2394:	0007a503          	lw	a0,0(a5)
    2398:	0047a583          	lw	a1,4(a5)
    239c:	00000613          	li	a2,0
    23a0:	00000693          	li	a3,0
    23a4:	00001097          	auipc	ra,0x1
    23a8:	07c080e7          	jalr	124(ra) # 3420 <__divdf3>
    23ac:	d31ff06f          	j	20dc <IO_FGA_DAT+0xdc>
    23b0:	00000513          	li	a0,0
    23b4:	00000593          	li	a1,0
    23b8:	d20c02e3          	beqz	s8,20dc <IO_FGA_DAT+0xdc>
    23bc:	000c0513          	mv	a0,s8
    23c0:	00002097          	auipc	ra,0x2
    23c4:	7f4080e7          	jalr	2036(ra) # 4bb4 <__floatsidf>
    23c8:	00003797          	auipc	a5,0x3
    23cc:	99878793          	addi	a5,a5,-1640 # 4d60 <_end+0xb0>
    23d0:	0007a603          	lw	a2,0(a5)
    23d4:	0047a683          	lw	a3,4(a5)
    23d8:	00050913          	mv	s2,a0
    23dc:	00058993          	mv	s3,a1
    23e0:	00002097          	auipc	ra,0x2
    23e4:	970080e7          	jalr	-1680(ra) # 3d50 <__muldf3>
    23e8:	00003797          	auipc	a5,0x3
    23ec:	98078793          	addi	a5,a5,-1664 # 4d68 <_end+0xb8>
    23f0:	0007a603          	lw	a2,0(a5)
    23f4:	0047a683          	lw	a3,4(a5)
    23f8:	00050413          	mv	s0,a0
    23fc:	00058493          	mv	s1,a1
    2400:	00090513          	mv	a0,s2
    2404:	00098593          	mv	a1,s3
    2408:	00002097          	auipc	ra,0x2
    240c:	948080e7          	jalr	-1720(ra) # 3d50 <__muldf3>
    2410:	00050613          	mv	a2,a0
    2414:	00058693          	mv	a3,a1
    2418:	00040513          	mv	a0,s0
    241c:	00048593          	mv	a1,s1
    2420:	00001097          	auipc	ra,0x1
    2424:	838080e7          	jalr	-1992(ra) # 2c58 <__adddf3>
    2428:	cb5ff06f          	j	20dc <IO_FGA_DAT+0xdc>
    242c:	00050613          	mv	a2,a0
    2430:	00058693          	mv	a3,a1
    2434:	00040513          	mv	a0,s0
    2438:	00048593          	mv	a1,s1
    243c:	00002097          	auipc	ra,0x2
    2440:	ee0080e7          	jalr	-288(ra) # 431c <__subdf3>
    2444:	000a0613          	mv	a2,s4
    2448:	000a8693          	mv	a3,s5
    244c:	00002097          	auipc	ra,0x2
    2450:	904080e7          	jalr	-1788(ra) # 3d50 <__muldf3>
    2454:	00050913          	mv	s2,a0
    2458:	00058993          	mv	s3,a1
    245c:	020c0063          	beqz	s8,247c <IO_FGA_DAT+0x47c>
    2460:	00003797          	auipc	a5,0x3
    2464:	90078793          	addi	a5,a5,-1792 # 4d60 <_end+0xb0>
    2468:	0007a603          	lw	a2,0(a5)
    246c:	0047a683          	lw	a3,4(a5)
    2470:	000b0513          	mv	a0,s6
    2474:	000b8593          	mv	a1,s7
    2478:	bc9ff06f          	j	2040 <IO_FGA_DAT+0x40>
    247c:	00090613          	mv	a2,s2
    2480:	00098693          	mv	a3,s3
    2484:	00040513          	mv	a0,s0
    2488:	00048593          	mv	a1,s1
    248c:	00002097          	auipc	ra,0x2
    2490:	e90080e7          	jalr	-368(ra) # 431c <__subdf3>
    2494:	c49ff06f          	j	20dc <IO_FGA_DAT+0xdc>
    2498:	00050613          	mv	a2,a0
    249c:	00058693          	mv	a3,a1
    24a0:	00002097          	auipc	ra,0x2
    24a4:	e7c080e7          	jalr	-388(ra) # 431c <__subdf3>
    24a8:	00000613          	li	a2,0
    24ac:	00000693          	li	a3,0
    24b0:	00001097          	auipc	ra,0x1
    24b4:	f70080e7          	jalr	-144(ra) # 3420 <__divdf3>
    24b8:	c25ff06f          	j	20dc <IO_FGA_DAT+0xdc>
    24bc:	00003797          	auipc	a5,0x3
    24c0:	8a478793          	addi	a5,a5,-1884 # 4d60 <_end+0xb0>
    24c4:	0007a603          	lw	a2,0(a5)
    24c8:	0047a683          	lw	a3,4(a5)
    24cc:	000b0513          	mv	a0,s6
    24d0:	000b8593          	mv	a1,s7
    24d4:	00002097          	auipc	ra,0x2
    24d8:	87c080e7          	jalr	-1924(ra) # 3d50 <__muldf3>
    24dc:	00003797          	auipc	a5,0x3
    24e0:	88c78793          	addi	a5,a5,-1908 # 4d68 <_end+0xb8>
    24e4:	0007a603          	lw	a2,0(a5)
    24e8:	0047a683          	lw	a3,4(a5)
    24ec:	00050a13          	mv	s4,a0
    24f0:	00058a93          	mv	s5,a1
    24f4:	000b0513          	mv	a0,s6
    24f8:	000b8593          	mv	a1,s7
    24fc:	00002097          	auipc	ra,0x2
    2500:	854080e7          	jalr	-1964(ra) # 3d50 <__muldf3>
    2504:	00090613          	mv	a2,s2
    2508:	00098693          	mv	a3,s3
    250c:	00000097          	auipc	ra,0x0
    2510:	74c080e7          	jalr	1868(ra) # 2c58 <__adddf3>
    2514:	00050613          	mv	a2,a0
    2518:	00058693          	mv	a3,a1
    251c:	000d0513          	mv	a0,s10
    2520:	000d8593          	mv	a1,s11
    2524:	b5dff06f          	j	2080 <IO_FGA_DAT+0x80>

00002528 <__ieee754_sqrt>:
    2528:	ff010113          	addi	sp,sp,-16
    252c:	7ff00737          	lui	a4,0x7ff00
    2530:	00812423          	sw	s0,8(sp)
    2534:	00912223          	sw	s1,4(sp)
    2538:	00112623          	sw	ra,12(sp)
    253c:	00b77833          	and	a6,a4,a1
    2540:	00058493          	mv	s1,a1
    2544:	00050413          	mv	s0,a0
    2548:	20e80863          	beq	a6,a4,2758 <__ieee754_sqrt+0x230>
    254c:	00058793          	mv	a5,a1
    2550:	00050693          	mv	a3,a0
    2554:	14b05a63          	blez	a1,26a8 <__ieee754_sqrt+0x180>
    2558:	4145de13          	srai	t3,a1,0x14
    255c:	260e0663          	beqz	t3,27c8 <__ieee754_sqrt+0x2a0>
    2560:	00100737          	lui	a4,0x100
    2564:	fff70613          	addi	a2,a4,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    2568:	00c7f7b3          	and	a5,a5,a2
    256c:	00e7e7b3          	or	a5,a5,a4
    2570:	c01e0e13          	addi	t3,t3,-1023
    2574:	00179713          	slli	a4,a5,0x1
    2578:	001e7613          	andi	a2,t3,1
    257c:	01f6d793          	srli	a5,a3,0x1f
    2580:	00f707b3          	add	a5,a4,a5
    2584:	00169713          	slli	a4,a3,0x1
    2588:	00060a63          	beqz	a2,259c <__ieee754_sqrt+0x74>
    258c:	01f75713          	srli	a4,a4,0x1f
    2590:	00179793          	slli	a5,a5,0x1
    2594:	00e787b3          	add	a5,a5,a4
    2598:	00269713          	slli	a4,a3,0x2
    259c:	401e5e13          	srai	t3,t3,0x1
    25a0:	01600593          	li	a1,22
    25a4:	00000e93          	li	t4,0
    25a8:	00000693          	li	a3,0
    25ac:	00200637          	lui	a2,0x200
    25b0:	00c68533          	add	a0,a3,a2
    25b4:	01f75813          	srli	a6,a4,0x1f
    25b8:	fff58593          	addi	a1,a1,-1
    25bc:	00a7c863          	blt	a5,a0,25cc <__ieee754_sqrt+0xa4>
    25c0:	40a787b3          	sub	a5,a5,a0
    25c4:	00c506b3          	add	a3,a0,a2
    25c8:	00ce8eb3          	add	t4,t4,a2
    25cc:	00179793          	slli	a5,a5,0x1
    25d0:	00f807b3          	add	a5,a6,a5
    25d4:	00171713          	slli	a4,a4,0x1
    25d8:	00165613          	srli	a2,a2,0x1
    25dc:	fc059ae3          	bnez	a1,25b0 <__ieee754_sqrt+0x88>
    25e0:	00000313          	li	t1,0
    25e4:	02000813          	li	a6,32
    25e8:	80000637          	lui	a2,0x80000
    25ec:	0240006f          	j	2610 <__ieee754_sqrt+0xe8>
    25f0:	12d78e63          	beq	a5,a3,272c <__ieee754_sqrt+0x204>
    25f4:	01f75513          	srli	a0,a4,0x1f
    25f8:	00179793          	slli	a5,a5,0x1
    25fc:	fff80813          	addi	a6,a6,-1 # 3fefffff <IO_BASE+0x3fafffff>
    2600:	00a787b3          	add	a5,a5,a0
    2604:	00171713          	slli	a4,a4,0x1
    2608:	00165613          	srli	a2,a2,0x1
    260c:	04080663          	beqz	a6,2658 <__ieee754_sqrt+0x130>
    2610:	00b60533          	add	a0,a2,a1
    2614:	fcf6dee3          	bge	a3,a5,25f0 <__ieee754_sqrt+0xc8>
    2618:	00c505b3          	add	a1,a0,a2
    261c:	00068893          	mv	a7,a3
    2620:	0e054e63          	bltz	a0,271c <__ieee754_sqrt+0x1f4>
    2624:	40d787b3          	sub	a5,a5,a3
    2628:	00a736b3          	sltu	a3,a4,a0
    262c:	40d787b3          	sub	a5,a5,a3
    2630:	40a70733          	sub	a4,a4,a0
    2634:	01f75513          	srli	a0,a4,0x1f
    2638:	00179793          	slli	a5,a5,0x1
    263c:	fff80813          	addi	a6,a6,-1
    2640:	00c30333          	add	t1,t1,a2
    2644:	00088693          	mv	a3,a7
    2648:	00a787b3          	add	a5,a5,a0
    264c:	00171713          	slli	a4,a4,0x1
    2650:	00165613          	srli	a2,a2,0x1
    2654:	fa081ee3          	bnez	a6,2610 <__ieee754_sqrt+0xe8>
    2658:	00e7e7b3          	or	a5,a5,a4
    265c:	0e079463          	bnez	a5,2744 <__ieee754_sqrt+0x21c>
    2660:	00135813          	srli	a6,t1,0x1
    2664:	401ed713          	srai	a4,t4,0x1
    2668:	3fe004b7          	lui	s1,0x3fe00
    266c:	001efe93          	andi	t4,t4,1
    2670:	009704b3          	add	s1,a4,s1
    2674:	000e8663          	beqz	t4,2680 <__ieee754_sqrt+0x158>
    2678:	800007b7          	lui	a5,0x80000
    267c:	00f86833          	or	a6,a6,a5
    2680:	014e1713          	slli	a4,t3,0x14
    2684:	00080413          	mv	s0,a6
    2688:	00970733          	add	a4,a4,s1
    268c:	00040513          	mv	a0,s0
    2690:	00c12083          	lw	ra,12(sp)
    2694:	00812403          	lw	s0,8(sp)
    2698:	00412483          	lw	s1,4(sp)
    269c:	00070593          	mv	a1,a4
    26a0:	01010113          	addi	sp,sp,16
    26a4:	00008067          	ret
    26a8:	00159713          	slli	a4,a1,0x1
    26ac:	00175713          	srli	a4,a4,0x1
    26b0:	00a76833          	or	a6,a4,a0
    26b4:	00058713          	mv	a4,a1
    26b8:	fc080ae3          	beqz	a6,268c <__ieee754_sqrt+0x164>
    26bc:	0e059063          	bnez	a1,279c <__ieee754_sqrt+0x274>
    26c0:	00b6d593          	srli	a1,a3,0xb
    26c4:	feb78793          	addi	a5,a5,-21 # 7fffffeb <IO_BASE+0x7fbfffeb>
    26c8:	00058713          	mv	a4,a1
    26cc:	01569693          	slli	a3,a3,0x15
    26d0:	fe0588e3          	beqz	a1,26c0 <__ieee754_sqrt+0x198>
    26d4:	0145d613          	srli	a2,a1,0x14
    26d8:	10061263          	bnez	a2,27dc <__ieee754_sqrt+0x2b4>
    26dc:	00000613          	li	a2,0
    26e0:	0080006f          	j	26e8 <__ieee754_sqrt+0x1c0>
    26e4:	00050613          	mv	a2,a0
    26e8:	00171713          	slli	a4,a4,0x1
    26ec:	00b71593          	slli	a1,a4,0xb
    26f0:	00160513          	addi	a0,a2,1 # 80000001 <IO_BASE+0x7fc00001>
    26f4:	fe05d8e3          	bgez	a1,26e4 <__ieee754_sqrt+0x1bc>
    26f8:	02000893          	li	a7,32
    26fc:	00068813          	mv	a6,a3
    2700:	40a888b3          	sub	a7,a7,a0
    2704:	00070593          	mv	a1,a4
    2708:	00a696b3          	sll	a3,a3,a0
    270c:	01185733          	srl	a4,a6,a7
    2710:	40c78e33          	sub	t3,a5,a2
    2714:	00b767b3          	or	a5,a4,a1
    2718:	e49ff06f          	j	2560 <__ieee754_sqrt+0x38>
    271c:	fff5c893          	not	a7,a1
    2720:	01f8d893          	srli	a7,a7,0x1f
    2724:	011688b3          	add	a7,a3,a7
    2728:	efdff06f          	j	2624 <__ieee754_sqrt+0xfc>
    272c:	eca764e3          	bltu	a4,a0,25f4 <__ieee754_sqrt+0xcc>
    2730:	00c505b3          	add	a1,a0,a2
    2734:	fe0544e3          	bltz	a0,271c <__ieee754_sqrt+0x1f4>
    2738:	00078893          	mv	a7,a5
    273c:	00000793          	li	a5,0
    2740:	ef1ff06f          	j	2630 <__ieee754_sqrt+0x108>
    2744:	fff00793          	li	a5,-1
    2748:	08f30663          	beq	t1,a5,27d4 <__ieee754_sqrt+0x2ac>
    274c:	00130813          	addi	a6,t1,1
    2750:	00185813          	srli	a6,a6,0x1
    2754:	f11ff06f          	j	2664 <__ieee754_sqrt+0x13c>
    2758:	00050613          	mv	a2,a0
    275c:	00058693          	mv	a3,a1
    2760:	00001097          	auipc	ra,0x1
    2764:	5f0080e7          	jalr	1520(ra) # 3d50 <__muldf3>
    2768:	00040613          	mv	a2,s0
    276c:	00048693          	mv	a3,s1
    2770:	00000097          	auipc	ra,0x0
    2774:	4e8080e7          	jalr	1256(ra) # 2c58 <__adddf3>
    2778:	00050413          	mv	s0,a0
    277c:	00040513          	mv	a0,s0
    2780:	00c12083          	lw	ra,12(sp)
    2784:	00812403          	lw	s0,8(sp)
    2788:	00058713          	mv	a4,a1
    278c:	00412483          	lw	s1,4(sp)
    2790:	00070593          	mv	a1,a4
    2794:	01010113          	addi	sp,sp,16
    2798:	00008067          	ret
    279c:	00050613          	mv	a2,a0
    27a0:	00058693          	mv	a3,a1
    27a4:	00002097          	auipc	ra,0x2
    27a8:	b78080e7          	jalr	-1160(ra) # 431c <__subdf3>
    27ac:	00050613          	mv	a2,a0
    27b0:	00058693          	mv	a3,a1
    27b4:	00001097          	auipc	ra,0x1
    27b8:	c6c080e7          	jalr	-916(ra) # 3420 <__divdf3>
    27bc:	00050413          	mv	s0,a0
    27c0:	00058713          	mv	a4,a1
    27c4:	ec9ff06f          	j	268c <__ieee754_sqrt+0x164>
    27c8:	00058713          	mv	a4,a1
    27cc:	00000793          	li	a5,0
    27d0:	f0dff06f          	j	26dc <__ieee754_sqrt+0x1b4>
    27d4:	001e8e93          	addi	t4,t4,1
    27d8:	e8dff06f          	j	2664 <__ieee754_sqrt+0x13c>
    27dc:	00068813          	mv	a6,a3
    27e0:	02000893          	li	a7,32
    27e4:	fff00613          	li	a2,-1
    27e8:	f25ff06f          	j	270c <__ieee754_sqrt+0x1e4>

000027ec <nan>:
    27ec:	00002797          	auipc	a5,0x2
    27f0:	5d478793          	addi	a5,a5,1492 # 4dc0 <_end+0x110>
    27f4:	0007a503          	lw	a0,0(a5)
    27f8:	0047a583          	lw	a1,4(a5)
    27fc:	00008067          	ret

00002800 <__moddi3>:
    2800:	00000893          	li	a7,0
    2804:	0005dc63          	bgez	a1,281c <__moddi3+0x1c>
    2808:	40a00533          	neg	a0,a0
    280c:	00a037b3          	snez	a5,a0
    2810:	40b005b3          	neg	a1,a1
    2814:	40f585b3          	sub	a1,a1,a5
    2818:	fff00893          	li	a7,-1
    281c:	0006da63          	bgez	a3,2830 <__moddi3+0x30>
    2820:	40c00633          	neg	a2,a2
    2824:	00c037b3          	snez	a5,a2
    2828:	40d006b3          	neg	a3,a3
    282c:	40f686b3          	sub	a3,a3,a5
    2830:	00060313          	mv	t1,a2
    2834:	00068713          	mv	a4,a3
    2838:	00050793          	mv	a5,a0
    283c:	00058813          	mv	a6,a1
    2840:	24069863          	bnez	a3,2a90 <__moddi3+0x290>
    2844:	00004697          	auipc	a3,0x4
    2848:	08c68693          	addi	a3,a3,140 # 68d0 <__clz_tab>
    284c:	0ec5f863          	bgeu	a1,a2,293c <__moddi3+0x13c>
    2850:	00010e37          	lui	t3,0x10
    2854:	0dc67a63          	bgeu	a2,t3,2928 <__moddi3+0x128>
    2858:	0ff00e13          	li	t3,255
    285c:	00ce7463          	bgeu	t3,a2,2864 <__moddi3+0x64>
    2860:	00800713          	li	a4,8
    2864:	00e65e33          	srl	t3,a2,a4
    2868:	01c686b3          	add	a3,a3,t3
    286c:	0006c683          	lbu	a3,0(a3)
    2870:	02000e13          	li	t3,32
    2874:	00e68733          	add	a4,a3,a4
    2878:	40ee0e33          	sub	t3,t3,a4
    287c:	000e0c63          	beqz	t3,2894 <__moddi3+0x94>
    2880:	01c595b3          	sll	a1,a1,t3
    2884:	00e55733          	srl	a4,a0,a4
    2888:	01c61333          	sll	t1,a2,t3
    288c:	00b76833          	or	a6,a4,a1
    2890:	01c517b3          	sll	a5,a0,t3
    2894:	01035613          	srli	a2,t1,0x10
    2898:	02c855b3          	divu	a1,a6,a2
    289c:	01031513          	slli	a0,t1,0x10
    28a0:	01055513          	srli	a0,a0,0x10
    28a4:	0107d713          	srli	a4,a5,0x10
    28a8:	02c876b3          	remu	a3,a6,a2
    28ac:	02b505b3          	mul	a1,a0,a1
    28b0:	01069693          	slli	a3,a3,0x10
    28b4:	00e6e733          	or	a4,a3,a4
    28b8:	00b77a63          	bgeu	a4,a1,28cc <__moddi3+0xcc>
    28bc:	00670733          	add	a4,a4,t1
    28c0:	00676663          	bltu	a4,t1,28cc <__moddi3+0xcc>
    28c4:	00b77463          	bgeu	a4,a1,28cc <__moddi3+0xcc>
    28c8:	00670733          	add	a4,a4,t1
    28cc:	40b70733          	sub	a4,a4,a1
    28d0:	02c776b3          	remu	a3,a4,a2
    28d4:	01079793          	slli	a5,a5,0x10
    28d8:	0107d793          	srli	a5,a5,0x10
    28dc:	02c75733          	divu	a4,a4,a2
    28e0:	02e50733          	mul	a4,a0,a4
    28e4:	01069513          	slli	a0,a3,0x10
    28e8:	00f567b3          	or	a5,a0,a5
    28ec:	00e7fa63          	bgeu	a5,a4,2900 <__moddi3+0x100>
    28f0:	006787b3          	add	a5,a5,t1
    28f4:	0067e663          	bltu	a5,t1,2900 <__moddi3+0x100>
    28f8:	00e7f463          	bgeu	a5,a4,2900 <__moddi3+0x100>
    28fc:	006787b3          	add	a5,a5,t1
    2900:	40e787b3          	sub	a5,a5,a4
    2904:	01c7d533          	srl	a0,a5,t3
    2908:	00000593          	li	a1,0
    290c:	00088c63          	beqz	a7,2924 <__moddi3+0x124>
    2910:	40a007b3          	neg	a5,a0
    2914:	00f03733          	snez	a4,a5
    2918:	40b005b3          	neg	a1,a1
    291c:	00078513          	mv	a0,a5
    2920:	40e585b3          	sub	a1,a1,a4
    2924:	00008067          	ret
    2928:	01000e37          	lui	t3,0x1000
    292c:	01000713          	li	a4,16
    2930:	f3c66ae3          	bltu	a2,t3,2864 <__moddi3+0x64>
    2934:	01800713          	li	a4,24
    2938:	f2dff06f          	j	2864 <__moddi3+0x64>
    293c:	00061663          	bnez	a2,2948 <__moddi3+0x148>
    2940:	00100313          	li	t1,1
    2944:	02e35333          	divu	t1,t1,a4
    2948:	00010637          	lui	a2,0x10
    294c:	0ac37263          	bgeu	t1,a2,29f0 <__moddi3+0x1f0>
    2950:	0ff00613          	li	a2,255
    2954:	00667463          	bgeu	a2,t1,295c <__moddi3+0x15c>
    2958:	00800713          	li	a4,8
    295c:	00e35633          	srl	a2,t1,a4
    2960:	00c686b3          	add	a3,a3,a2
    2964:	0006c803          	lbu	a6,0(a3)
    2968:	02000e13          	li	t3,32
    296c:	00e80833          	add	a6,a6,a4
    2970:	410e0e33          	sub	t3,t3,a6
    2974:	080e1863          	bnez	t3,2a04 <__moddi3+0x204>
    2978:	406585b3          	sub	a1,a1,t1
    297c:	01035693          	srli	a3,t1,0x10
    2980:	01031513          	slli	a0,t1,0x10
    2984:	01055513          	srli	a0,a0,0x10
    2988:	0107d613          	srli	a2,a5,0x10
    298c:	02d5f733          	remu	a4,a1,a3
    2990:	02d5d5b3          	divu	a1,a1,a3
    2994:	01071713          	slli	a4,a4,0x10
    2998:	00c76733          	or	a4,a4,a2
    299c:	02b505b3          	mul	a1,a0,a1
    29a0:	00b77a63          	bgeu	a4,a1,29b4 <__moddi3+0x1b4>
    29a4:	00670733          	add	a4,a4,t1
    29a8:	00676663          	bltu	a4,t1,29b4 <__moddi3+0x1b4>
    29ac:	00b77463          	bgeu	a4,a1,29b4 <__moddi3+0x1b4>
    29b0:	00670733          	add	a4,a4,t1
    29b4:	40b705b3          	sub	a1,a4,a1
    29b8:	02d5f733          	remu	a4,a1,a3
    29bc:	01079793          	slli	a5,a5,0x10
    29c0:	0107d793          	srli	a5,a5,0x10
    29c4:	02d5d5b3          	divu	a1,a1,a3
    29c8:	02b505b3          	mul	a1,a0,a1
    29cc:	01071513          	slli	a0,a4,0x10
    29d0:	00f567b3          	or	a5,a0,a5
    29d4:	00b7fa63          	bgeu	a5,a1,29e8 <__moddi3+0x1e8>
    29d8:	006787b3          	add	a5,a5,t1
    29dc:	0067e663          	bltu	a5,t1,29e8 <__moddi3+0x1e8>
    29e0:	00b7f463          	bgeu	a5,a1,29e8 <__moddi3+0x1e8>
    29e4:	006787b3          	add	a5,a5,t1
    29e8:	40b787b3          	sub	a5,a5,a1
    29ec:	f19ff06f          	j	2904 <__moddi3+0x104>
    29f0:	01000637          	lui	a2,0x1000
    29f4:	01000713          	li	a4,16
    29f8:	f6c362e3          	bltu	t1,a2,295c <__moddi3+0x15c>
    29fc:	01800713          	li	a4,24
    2a00:	f5dff06f          	j	295c <__moddi3+0x15c>
    2a04:	01c31333          	sll	t1,t1,t3
    2a08:	0105d633          	srl	a2,a1,a6
    2a0c:	01c517b3          	sll	a5,a0,t3
    2a10:	01055833          	srl	a6,a0,a6
    2a14:	01035513          	srli	a0,t1,0x10
    2a18:	02a67733          	remu	a4,a2,a0
    2a1c:	01c595b3          	sll	a1,a1,t3
    2a20:	00b86833          	or	a6,a6,a1
    2a24:	01031593          	slli	a1,t1,0x10
    2a28:	0105d593          	srli	a1,a1,0x10
    2a2c:	01085693          	srli	a3,a6,0x10
    2a30:	02a65633          	divu	a2,a2,a0
    2a34:	01071713          	slli	a4,a4,0x10
    2a38:	00d76733          	or	a4,a4,a3
    2a3c:	02c58633          	mul	a2,a1,a2
    2a40:	00c77a63          	bgeu	a4,a2,2a54 <__moddi3+0x254>
    2a44:	00670733          	add	a4,a4,t1
    2a48:	00676663          	bltu	a4,t1,2a54 <__moddi3+0x254>
    2a4c:	00c77463          	bgeu	a4,a2,2a54 <__moddi3+0x254>
    2a50:	00670733          	add	a4,a4,t1
    2a54:	40c706b3          	sub	a3,a4,a2
    2a58:	02a6f733          	remu	a4,a3,a0
    2a5c:	01081813          	slli	a6,a6,0x10
    2a60:	01085813          	srli	a6,a6,0x10
    2a64:	02a6d6b3          	divu	a3,a3,a0
    2a68:	01071713          	slli	a4,a4,0x10
    2a6c:	02d586b3          	mul	a3,a1,a3
    2a70:	010765b3          	or	a1,a4,a6
    2a74:	00d5fa63          	bgeu	a1,a3,2a88 <__moddi3+0x288>
    2a78:	006585b3          	add	a1,a1,t1
    2a7c:	0065e663          	bltu	a1,t1,2a88 <__moddi3+0x288>
    2a80:	00d5f463          	bgeu	a1,a3,2a88 <__moddi3+0x288>
    2a84:	006585b3          	add	a1,a1,t1
    2a88:	40d585b3          	sub	a1,a1,a3
    2a8c:	ef1ff06f          	j	297c <__moddi3+0x17c>
    2a90:	e6d5eee3          	bltu	a1,a3,290c <__moddi3+0x10c>
    2a94:	00010737          	lui	a4,0x10
    2a98:	04e6fc63          	bgeu	a3,a4,2af0 <__moddi3+0x2f0>
    2a9c:	0ff00f13          	li	t5,255
    2aa0:	00df3733          	sltu	a4,t5,a3
    2aa4:	00371713          	slli	a4,a4,0x3
    2aa8:	00e6de33          	srl	t3,a3,a4
    2aac:	00004317          	auipc	t1,0x4
    2ab0:	e2430313          	addi	t1,t1,-476 # 68d0 <__clz_tab>
    2ab4:	01c30333          	add	t1,t1,t3
    2ab8:	00034f03          	lbu	t5,0(t1)
    2abc:	02000e93          	li	t4,32
    2ac0:	00ef0f33          	add	t5,t5,a4
    2ac4:	41ee8eb3          	sub	t4,t4,t5
    2ac8:	020e9e63          	bnez	t4,2b04 <__moddi3+0x304>
    2acc:	00b6e463          	bltu	a3,a1,2ad4 <__moddi3+0x2d4>
    2ad0:	00c56a63          	bltu	a0,a2,2ae4 <__moddi3+0x2e4>
    2ad4:	40c507b3          	sub	a5,a0,a2
    2ad8:	40d585b3          	sub	a1,a1,a3
    2adc:	00f53533          	sltu	a0,a0,a5
    2ae0:	40a58833          	sub	a6,a1,a0
    2ae4:	00078513          	mv	a0,a5
    2ae8:	00080593          	mv	a1,a6
    2aec:	e21ff06f          	j	290c <__moddi3+0x10c>
    2af0:	01000337          	lui	t1,0x1000
    2af4:	01000713          	li	a4,16
    2af8:	fa66e8e3          	bltu	a3,t1,2aa8 <__moddi3+0x2a8>
    2afc:	01800713          	li	a4,24
    2b00:	fa9ff06f          	j	2aa8 <__moddi3+0x2a8>
    2b04:	01e65733          	srl	a4,a2,t5
    2b08:	01d696b3          	sll	a3,a3,t4
    2b0c:	00d766b3          	or	a3,a4,a3
    2b10:	0106d813          	srli	a6,a3,0x10
    2b14:	01e5d733          	srl	a4,a1,t5
    2b18:	03077e33          	remu	t3,a4,a6
    2b1c:	01d595b3          	sll	a1,a1,t4
    2b20:	01e557b3          	srl	a5,a0,t5
    2b24:	00b7e7b3          	or	a5,a5,a1
    2b28:	01069593          	slli	a1,a3,0x10
    2b2c:	0105d593          	srli	a1,a1,0x10
    2b30:	0107d313          	srli	t1,a5,0x10
    2b34:	01d61633          	sll	a2,a2,t4
    2b38:	01d51533          	sll	a0,a0,t4
    2b3c:	03075733          	divu	a4,a4,a6
    2b40:	010e1e13          	slli	t3,t3,0x10
    2b44:	006e6333          	or	t1,t3,t1
    2b48:	02e58fb3          	mul	t6,a1,a4
    2b4c:	00070e13          	mv	t3,a4
    2b50:	01f37e63          	bgeu	t1,t6,2b6c <__moddi3+0x36c>
    2b54:	00d30333          	add	t1,t1,a3
    2b58:	fff70e13          	addi	t3,a4,-1 # ffff <__fdlib_version+0x9587>
    2b5c:	00d36863          	bltu	t1,a3,2b6c <__moddi3+0x36c>
    2b60:	01f37663          	bgeu	t1,t6,2b6c <__moddi3+0x36c>
    2b64:	ffe70e13          	addi	t3,a4,-2
    2b68:	00d30333          	add	t1,t1,a3
    2b6c:	41f30333          	sub	t1,t1,t6
    2b70:	03037fb3          	remu	t6,t1,a6
    2b74:	01079793          	slli	a5,a5,0x10
    2b78:	0107d793          	srli	a5,a5,0x10
    2b7c:	03035333          	divu	t1,t1,a6
    2b80:	010f9f93          	slli	t6,t6,0x10
    2b84:	00ffefb3          	or	t6,t6,a5
    2b88:	026585b3          	mul	a1,a1,t1
    2b8c:	00030793          	mv	a5,t1
    2b90:	00bffe63          	bgeu	t6,a1,2bac <__moddi3+0x3ac>
    2b94:	00df8fb3          	add	t6,t6,a3
    2b98:	fff30793          	addi	a5,t1,-1 # ffffff <IO_BASE+0xbfffff>
    2b9c:	00dfe863          	bltu	t6,a3,2bac <__moddi3+0x3ac>
    2ba0:	00bff663          	bgeu	t6,a1,2bac <__moddi3+0x3ac>
    2ba4:	ffe30793          	addi	a5,t1,-2
    2ba8:	00df8fb3          	add	t6,t6,a3
    2bac:	40bf85b3          	sub	a1,t6,a1
    2bb0:	010e1e13          	slli	t3,t3,0x10
    2bb4:	00010fb7          	lui	t6,0x10
    2bb8:	00fe6e33          	or	t3,t3,a5
    2bbc:	ffff8793          	addi	a5,t6,-1 # ffff <__fdlib_version+0x9587>
    2bc0:	00fe7333          	and	t1,t3,a5
    2bc4:	01065813          	srli	a6,a2,0x10
    2bc8:	010e5e13          	srli	t3,t3,0x10
    2bcc:	00f677b3          	and	a5,a2,a5
    2bd0:	02f30733          	mul	a4,t1,a5
    2bd4:	02fe07b3          	mul	a5,t3,a5
    2bd8:	03030333          	mul	t1,t1,a6
    2bdc:	030e0e33          	mul	t3,t3,a6
    2be0:	00f30333          	add	t1,t1,a5
    2be4:	01075813          	srli	a6,a4,0x10
    2be8:	00680833          	add	a6,a6,t1
    2bec:	00f87463          	bgeu	a6,a5,2bf4 <__moddi3+0x3f4>
    2bf0:	01fe0e33          	add	t3,t3,t6
    2bf4:	01085793          	srli	a5,a6,0x10
    2bf8:	01c78e33          	add	t3,a5,t3
    2bfc:	000107b7          	lui	a5,0x10
    2c00:	fff78793          	addi	a5,a5,-1 # ffff <__fdlib_version+0x9587>
    2c04:	00f87833          	and	a6,a6,a5
    2c08:	01081813          	slli	a6,a6,0x10
    2c0c:	00f77733          	and	a4,a4,a5
    2c10:	00e80733          	add	a4,a6,a4
    2c14:	01c5e663          	bltu	a1,t3,2c20 <__moddi3+0x420>
    2c18:	01c59e63          	bne	a1,t3,2c34 <__moddi3+0x434>
    2c1c:	00e57c63          	bgeu	a0,a4,2c34 <__moddi3+0x434>
    2c20:	40c70633          	sub	a2,a4,a2
    2c24:	00c73733          	sltu	a4,a4,a2
    2c28:	00d70733          	add	a4,a4,a3
    2c2c:	40ee0e33          	sub	t3,t3,a4
    2c30:	00060713          	mv	a4,a2
    2c34:	40e50733          	sub	a4,a0,a4
    2c38:	00e53533          	sltu	a0,a0,a4
    2c3c:	41c585b3          	sub	a1,a1,t3
    2c40:	40a585b3          	sub	a1,a1,a0
    2c44:	01e597b3          	sll	a5,a1,t5
    2c48:	01d75733          	srl	a4,a4,t4
    2c4c:	00e7e533          	or	a0,a5,a4
    2c50:	01d5d5b3          	srl	a1,a1,t4
    2c54:	cb9ff06f          	j	290c <__moddi3+0x10c>

00002c58 <__adddf3>:
    2c58:	00100837          	lui	a6,0x100
    2c5c:	fff80813          	addi	a6,a6,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    2c60:	00b878b3          	and	a7,a6,a1
    2c64:	00389893          	slli	a7,a7,0x3
    2c68:	01d55793          	srli	a5,a0,0x1d
    2c6c:	fe010113          	addi	sp,sp,-32
    2c70:	0145d713          	srli	a4,a1,0x14
    2c74:	00d87833          	and	a6,a6,a3
    2c78:	0117e7b3          	or	a5,a5,a7
    2c7c:	0146d893          	srli	a7,a3,0x14
    2c80:	00381813          	slli	a6,a6,0x3
    2c84:	00912a23          	sw	s1,20(sp)
    2c88:	01212823          	sw	s2,16(sp)
    2c8c:	7ff77493          	andi	s1,a4,2047
    2c90:	7ff8f893          	andi	a7,a7,2047
    2c94:	01d65713          	srli	a4,a2,0x1d
    2c98:	00112e23          	sw	ra,28(sp)
    2c9c:	00812c23          	sw	s0,24(sp)
    2ca0:	01312623          	sw	s3,12(sp)
    2ca4:	01f5d913          	srli	s2,a1,0x1f
    2ca8:	01f6d693          	srli	a3,a3,0x1f
    2cac:	01076733          	or	a4,a4,a6
    2cb0:	00351513          	slli	a0,a0,0x3
    2cb4:	00361613          	slli	a2,a2,0x3
    2cb8:	41148833          	sub	a6,s1,a7
    2cbc:	2cd91463          	bne	s2,a3,2f84 <__adddf3+0x32c>
    2cc0:	11005e63          	blez	a6,2ddc <__adddf3+0x184>
    2cc4:	04089063          	bnez	a7,2d04 <__adddf3+0xac>
    2cc8:	00c766b3          	or	a3,a4,a2
    2ccc:	70068463          	beqz	a3,33d4 <__adddf3+0x77c>
    2cd0:	fff80593          	addi	a1,a6,-1
    2cd4:	02059063          	bnez	a1,2cf4 <__adddf3+0x9c>
    2cd8:	00c50633          	add	a2,a0,a2
    2cdc:	00a63533          	sltu	a0,a2,a0
    2ce0:	00e787b3          	add	a5,a5,a4
    2ce4:	00a787b3          	add	a5,a5,a0
    2ce8:	00060513          	mv	a0,a2
    2cec:	00100493          	li	s1,1
    2cf0:	0700006f          	j	2d60 <__adddf3+0x108>
    2cf4:	7ff00693          	li	a3,2047
    2cf8:	02d81063          	bne	a6,a3,2d18 <__adddf3+0xc0>
    2cfc:	7ff00493          	li	s1,2047
    2d00:	20c0006f          	j	2f0c <__adddf3+0x2b4>
    2d04:	7ff00693          	li	a3,2047
    2d08:	20d48263          	beq	s1,a3,2f0c <__adddf3+0x2b4>
    2d0c:	008006b7          	lui	a3,0x800
    2d10:	00d76733          	or	a4,a4,a3
    2d14:	00080593          	mv	a1,a6
    2d18:	03800693          	li	a3,56
    2d1c:	0ab6ca63          	blt	a3,a1,2dd0 <__adddf3+0x178>
    2d20:	01f00693          	li	a3,31
    2d24:	06b6cc63          	blt	a3,a1,2d9c <__adddf3+0x144>
    2d28:	02000813          	li	a6,32
    2d2c:	40b80833          	sub	a6,a6,a1
    2d30:	010716b3          	sll	a3,a4,a6
    2d34:	00b658b3          	srl	a7,a2,a1
    2d38:	01061633          	sll	a2,a2,a6
    2d3c:	0116e6b3          	or	a3,a3,a7
    2d40:	00c03633          	snez	a2,a2
    2d44:	00c6e633          	or	a2,a3,a2
    2d48:	00b75733          	srl	a4,a4,a1
    2d4c:	00a60633          	add	a2,a2,a0
    2d50:	00f70733          	add	a4,a4,a5
    2d54:	00a637b3          	sltu	a5,a2,a0
    2d58:	00f707b3          	add	a5,a4,a5
    2d5c:	00060513          	mv	a0,a2
    2d60:	00879713          	slli	a4,a5,0x8
    2d64:	1a075463          	bgez	a4,2f0c <__adddf3+0x2b4>
    2d68:	00148493          	addi	s1,s1,1 # 3fe00001 <IO_BASE+0x3fa00001>
    2d6c:	7ff00713          	li	a4,2047
    2d70:	5ce48863          	beq	s1,a4,3340 <__adddf3+0x6e8>
    2d74:	ff8006b7          	lui	a3,0xff800
    2d78:	fff68693          	addi	a3,a3,-1 # ff7fffff <IO_BASE+0xff3fffff>
    2d7c:	00d7f6b3          	and	a3,a5,a3
    2d80:	00155593          	srli	a1,a0,0x1
    2d84:	00157513          	andi	a0,a0,1
    2d88:	01f69793          	slli	a5,a3,0x1f
    2d8c:	00a5e533          	or	a0,a1,a0
    2d90:	00a7e533          	or	a0,a5,a0
    2d94:	0016d793          	srli	a5,a3,0x1
    2d98:	1740006f          	j	2f0c <__adddf3+0x2b4>
    2d9c:	fe058693          	addi	a3,a1,-32
    2da0:	02000893          	li	a7,32
    2da4:	00d756b3          	srl	a3,a4,a3
    2da8:	00000813          	li	a6,0
    2dac:	01158863          	beq	a1,a7,2dbc <__adddf3+0x164>
    2db0:	04000813          	li	a6,64
    2db4:	40b805b3          	sub	a1,a6,a1
    2db8:	00b71833          	sll	a6,a4,a1
    2dbc:	00c86633          	or	a2,a6,a2
    2dc0:	00c03633          	snez	a2,a2
    2dc4:	00c6e633          	or	a2,a3,a2
    2dc8:	00000713          	li	a4,0
    2dcc:	f81ff06f          	j	2d4c <__adddf3+0xf4>
    2dd0:	00c76633          	or	a2,a4,a2
    2dd4:	00c03633          	snez	a2,a2
    2dd8:	ff1ff06f          	j	2dc8 <__adddf3+0x170>
    2ddc:	0e080263          	beqz	a6,2ec0 <__adddf3+0x268>
    2de0:	409885b3          	sub	a1,a7,s1
    2de4:	02049e63          	bnez	s1,2e20 <__adddf3+0x1c8>
    2de8:	00a7e6b3          	or	a3,a5,a0
    2dec:	52068a63          	beqz	a3,3320 <__adddf3+0x6c8>
    2df0:	fff58693          	addi	a3,a1,-1
    2df4:	00069c63          	bnez	a3,2e0c <__adddf3+0x1b4>
    2df8:	00c50533          	add	a0,a0,a2
    2dfc:	00e787b3          	add	a5,a5,a4
    2e00:	00c53633          	sltu	a2,a0,a2
    2e04:	00c787b3          	add	a5,a5,a2
    2e08:	ee5ff06f          	j	2cec <__adddf3+0x94>
    2e0c:	7ff00813          	li	a6,2047
    2e10:	03059263          	bne	a1,a6,2e34 <__adddf3+0x1dc>
    2e14:	00070793          	mv	a5,a4
    2e18:	00060513          	mv	a0,a2
    2e1c:	ee1ff06f          	j	2cfc <__adddf3+0xa4>
    2e20:	7ff00693          	li	a3,2047
    2e24:	fed888e3          	beq	a7,a3,2e14 <__adddf3+0x1bc>
    2e28:	008006b7          	lui	a3,0x800
    2e2c:	00d7e7b3          	or	a5,a5,a3
    2e30:	00058693          	mv	a3,a1
    2e34:	03800593          	li	a1,56
    2e38:	06d5ce63          	blt	a1,a3,2eb4 <__adddf3+0x25c>
    2e3c:	01f00593          	li	a1,31
    2e40:	04d5c063          	blt	a1,a3,2e80 <__adddf3+0x228>
    2e44:	02000813          	li	a6,32
    2e48:	40d80833          	sub	a6,a6,a3
    2e4c:	00d55333          	srl	t1,a0,a3
    2e50:	010795b3          	sll	a1,a5,a6
    2e54:	01051533          	sll	a0,a0,a6
    2e58:	0065e5b3          	or	a1,a1,t1
    2e5c:	00a03533          	snez	a0,a0
    2e60:	00a5e533          	or	a0,a1,a0
    2e64:	00d7d6b3          	srl	a3,a5,a3
    2e68:	00c50533          	add	a0,a0,a2
    2e6c:	00e687b3          	add	a5,a3,a4
    2e70:	00c53633          	sltu	a2,a0,a2
    2e74:	00c787b3          	add	a5,a5,a2
    2e78:	00088493          	mv	s1,a7
    2e7c:	ee5ff06f          	j	2d60 <__adddf3+0x108>
    2e80:	fe068593          	addi	a1,a3,-32 # 7fffe0 <IO_BASE+0x3fffe0>
    2e84:	02000313          	li	t1,32
    2e88:	00b7d5b3          	srl	a1,a5,a1
    2e8c:	00000813          	li	a6,0
    2e90:	00668863          	beq	a3,t1,2ea0 <__adddf3+0x248>
    2e94:	04000813          	li	a6,64
    2e98:	40d806b3          	sub	a3,a6,a3
    2e9c:	00d79833          	sll	a6,a5,a3
    2ea0:	00a86533          	or	a0,a6,a0
    2ea4:	00a03533          	snez	a0,a0
    2ea8:	00a5e533          	or	a0,a1,a0
    2eac:	00000693          	li	a3,0
    2eb0:	fb9ff06f          	j	2e68 <__adddf3+0x210>
    2eb4:	00a7e533          	or	a0,a5,a0
    2eb8:	00a03533          	snez	a0,a0
    2ebc:	ff1ff06f          	j	2eac <__adddf3+0x254>
    2ec0:	00148693          	addi	a3,s1,1
    2ec4:	7fe6f593          	andi	a1,a3,2046
    2ec8:	08059663          	bnez	a1,2f54 <__adddf3+0x2fc>
    2ecc:	00a7e6b3          	or	a3,a5,a0
    2ed0:	06049263          	bnez	s1,2f34 <__adddf3+0x2dc>
    2ed4:	44068e63          	beqz	a3,3330 <__adddf3+0x6d8>
    2ed8:	00c766b3          	or	a3,a4,a2
    2edc:	02068863          	beqz	a3,2f0c <__adddf3+0x2b4>
    2ee0:	00c50633          	add	a2,a0,a2
    2ee4:	00e787b3          	add	a5,a5,a4
    2ee8:	00a63533          	sltu	a0,a2,a0
    2eec:	00a787b3          	add	a5,a5,a0
    2ef0:	00879713          	slli	a4,a5,0x8
    2ef4:	00060513          	mv	a0,a2
    2ef8:	00075a63          	bgez	a4,2f0c <__adddf3+0x2b4>
    2efc:	ff800737          	lui	a4,0xff800
    2f00:	fff70713          	addi	a4,a4,-1 # ff7fffff <IO_BASE+0xff3fffff>
    2f04:	00e7f7b3          	and	a5,a5,a4
    2f08:	00100493          	li	s1,1
    2f0c:	00757713          	andi	a4,a0,7
    2f10:	42070c63          	beqz	a4,3348 <__adddf3+0x6f0>
    2f14:	00f57713          	andi	a4,a0,15
    2f18:	00400693          	li	a3,4
    2f1c:	42d70663          	beq	a4,a3,3348 <__adddf3+0x6f0>
    2f20:	00450693          	addi	a3,a0,4
    2f24:	00a6b533          	sltu	a0,a3,a0
    2f28:	00a787b3          	add	a5,a5,a0
    2f2c:	00068513          	mv	a0,a3
    2f30:	4180006f          	j	3348 <__adddf3+0x6f0>
    2f34:	ee0680e3          	beqz	a3,2e14 <__adddf3+0x1bc>
    2f38:	00c76633          	or	a2,a4,a2
    2f3c:	dc0600e3          	beqz	a2,2cfc <__adddf3+0xa4>
    2f40:	00000913          	li	s2,0
    2f44:	004007b7          	lui	a5,0x400
    2f48:	00000513          	li	a0,0
    2f4c:	7ff00493          	li	s1,2047
    2f50:	3f80006f          	j	3348 <__adddf3+0x6f0>
    2f54:	7ff00593          	li	a1,2047
    2f58:	3eb68263          	beq	a3,a1,333c <__adddf3+0x6e4>
    2f5c:	00c50633          	add	a2,a0,a2
    2f60:	00e78733          	add	a4,a5,a4
    2f64:	00a637b3          	sltu	a5,a2,a0
    2f68:	00f70733          	add	a4,a4,a5
    2f6c:	01f71513          	slli	a0,a4,0x1f
    2f70:	00165613          	srli	a2,a2,0x1
    2f74:	00c56533          	or	a0,a0,a2
    2f78:	00175793          	srli	a5,a4,0x1
    2f7c:	00068493          	mv	s1,a3
    2f80:	f8dff06f          	j	2f0c <__adddf3+0x2b4>
    2f84:	0f005c63          	blez	a6,307c <__adddf3+0x424>
    2f88:	08089e63          	bnez	a7,3024 <__adddf3+0x3cc>
    2f8c:	00c766b3          	or	a3,a4,a2
    2f90:	44068263          	beqz	a3,33d4 <__adddf3+0x77c>
    2f94:	fff80593          	addi	a1,a6,-1
    2f98:	02059063          	bnez	a1,2fb8 <__adddf3+0x360>
    2f9c:	40c50633          	sub	a2,a0,a2
    2fa0:	00c53533          	sltu	a0,a0,a2
    2fa4:	40e787b3          	sub	a5,a5,a4
    2fa8:	40a787b3          	sub	a5,a5,a0
    2fac:	00060513          	mv	a0,a2
    2fb0:	00100493          	li	s1,1
    2fb4:	0540006f          	j	3008 <__adddf3+0x3b0>
    2fb8:	7ff00693          	li	a3,2047
    2fbc:	d4d800e3          	beq	a6,a3,2cfc <__adddf3+0xa4>
    2fc0:	03800693          	li	a3,56
    2fc4:	0ab6c663          	blt	a3,a1,3070 <__adddf3+0x418>
    2fc8:	01f00693          	li	a3,31
    2fcc:	06b6c863          	blt	a3,a1,303c <__adddf3+0x3e4>
    2fd0:	02000813          	li	a6,32
    2fd4:	40b80833          	sub	a6,a6,a1
    2fd8:	010716b3          	sll	a3,a4,a6
    2fdc:	00b658b3          	srl	a7,a2,a1
    2fe0:	01061633          	sll	a2,a2,a6
    2fe4:	0116e6b3          	or	a3,a3,a7
    2fe8:	00c03633          	snez	a2,a2
    2fec:	00c6e633          	or	a2,a3,a2
    2ff0:	00b75733          	srl	a4,a4,a1
    2ff4:	40c50633          	sub	a2,a0,a2
    2ff8:	40e78733          	sub	a4,a5,a4
    2ffc:	00c537b3          	sltu	a5,a0,a2
    3000:	40f707b3          	sub	a5,a4,a5
    3004:	00060513          	mv	a0,a2
    3008:	00879713          	slli	a4,a5,0x8
    300c:	f00750e3          	bgez	a4,2f0c <__adddf3+0x2b4>
    3010:	00800437          	lui	s0,0x800
    3014:	fff40413          	addi	s0,s0,-1 # 7fffff <IO_BASE+0x3fffff>
    3018:	0087f433          	and	s0,a5,s0
    301c:	00050993          	mv	s3,a0
    3020:	20c0006f          	j	322c <__adddf3+0x5d4>
    3024:	7ff00693          	li	a3,2047
    3028:	eed482e3          	beq	s1,a3,2f0c <__adddf3+0x2b4>
    302c:	008006b7          	lui	a3,0x800
    3030:	00d76733          	or	a4,a4,a3
    3034:	00080593          	mv	a1,a6
    3038:	f89ff06f          	j	2fc0 <__adddf3+0x368>
    303c:	fe058693          	addi	a3,a1,-32
    3040:	02000893          	li	a7,32
    3044:	00d756b3          	srl	a3,a4,a3
    3048:	00000813          	li	a6,0
    304c:	01158863          	beq	a1,a7,305c <__adddf3+0x404>
    3050:	04000813          	li	a6,64
    3054:	40b805b3          	sub	a1,a6,a1
    3058:	00b71833          	sll	a6,a4,a1
    305c:	00c86633          	or	a2,a6,a2
    3060:	00c03633          	snez	a2,a2
    3064:	00c6e633          	or	a2,a3,a2
    3068:	00000713          	li	a4,0
    306c:	f89ff06f          	j	2ff4 <__adddf3+0x39c>
    3070:	00c76633          	or	a2,a4,a2
    3074:	00c03633          	snez	a2,a2
    3078:	ff1ff06f          	j	3068 <__adddf3+0x410>
    307c:	0e080863          	beqz	a6,316c <__adddf3+0x514>
    3080:	40988833          	sub	a6,a7,s1
    3084:	04049263          	bnez	s1,30c8 <__adddf3+0x470>
    3088:	00a7e5b3          	or	a1,a5,a0
    308c:	34058863          	beqz	a1,33dc <__adddf3+0x784>
    3090:	fff80593          	addi	a1,a6,-1
    3094:	00059e63          	bnez	a1,30b0 <__adddf3+0x458>
    3098:	40a60533          	sub	a0,a2,a0
    309c:	40f707b3          	sub	a5,a4,a5
    30a0:	00a63633          	sltu	a2,a2,a0
    30a4:	40c787b3          	sub	a5,a5,a2
    30a8:	00068913          	mv	s2,a3
    30ac:	f05ff06f          	j	2fb0 <__adddf3+0x358>
    30b0:	7ff00313          	li	t1,2047
    30b4:	02681463          	bne	a6,t1,30dc <__adddf3+0x484>
    30b8:	00070793          	mv	a5,a4
    30bc:	00060513          	mv	a0,a2
    30c0:	7ff00493          	li	s1,2047
    30c4:	0d00006f          	j	3194 <__adddf3+0x53c>
    30c8:	7ff00593          	li	a1,2047
    30cc:	feb886e3          	beq	a7,a1,30b8 <__adddf3+0x460>
    30d0:	008005b7          	lui	a1,0x800
    30d4:	00b7e7b3          	or	a5,a5,a1
    30d8:	00080593          	mv	a1,a6
    30dc:	03800813          	li	a6,56
    30e0:	08b84063          	blt	a6,a1,3160 <__adddf3+0x508>
    30e4:	01f00813          	li	a6,31
    30e8:	04b84263          	blt	a6,a1,312c <__adddf3+0x4d4>
    30ec:	02000313          	li	t1,32
    30f0:	40b30333          	sub	t1,t1,a1
    30f4:	00b55e33          	srl	t3,a0,a1
    30f8:	00679833          	sll	a6,a5,t1
    30fc:	00651533          	sll	a0,a0,t1
    3100:	01c86833          	or	a6,a6,t3
    3104:	00a03533          	snez	a0,a0
    3108:	00a86533          	or	a0,a6,a0
    310c:	00b7d5b3          	srl	a1,a5,a1
    3110:	40a60533          	sub	a0,a2,a0
    3114:	40b707b3          	sub	a5,a4,a1
    3118:	00a63633          	sltu	a2,a2,a0
    311c:	40c787b3          	sub	a5,a5,a2
    3120:	00088493          	mv	s1,a7
    3124:	00068913          	mv	s2,a3
    3128:	ee1ff06f          	j	3008 <__adddf3+0x3b0>
    312c:	fe058813          	addi	a6,a1,-32 # 7fffe0 <IO_BASE+0x3fffe0>
    3130:	02000e13          	li	t3,32
    3134:	0107d833          	srl	a6,a5,a6
    3138:	00000313          	li	t1,0
    313c:	01c58863          	beq	a1,t3,314c <__adddf3+0x4f4>
    3140:	04000313          	li	t1,64
    3144:	40b305b3          	sub	a1,t1,a1
    3148:	00b79333          	sll	t1,a5,a1
    314c:	00a36533          	or	a0,t1,a0
    3150:	00a03533          	snez	a0,a0
    3154:	00a86533          	or	a0,a6,a0
    3158:	00000593          	li	a1,0
    315c:	fb5ff06f          	j	3110 <__adddf3+0x4b8>
    3160:	00a7e533          	or	a0,a5,a0
    3164:	00a03533          	snez	a0,a0
    3168:	ff1ff06f          	j	3158 <__adddf3+0x500>
    316c:	00148593          	addi	a1,s1,1
    3170:	7fe5f593          	andi	a1,a1,2046
    3174:	08059663          	bnez	a1,3200 <__adddf3+0x5a8>
    3178:	00a7e833          	or	a6,a5,a0
    317c:	00c765b3          	or	a1,a4,a2
    3180:	06049063          	bnez	s1,31e0 <__adddf3+0x588>
    3184:	00081c63          	bnez	a6,319c <__adddf3+0x544>
    3188:	26058263          	beqz	a1,33ec <__adddf3+0x794>
    318c:	00070793          	mv	a5,a4
    3190:	00060513          	mv	a0,a2
    3194:	00068913          	mv	s2,a3
    3198:	d75ff06f          	j	2f0c <__adddf3+0x2b4>
    319c:	d60588e3          	beqz	a1,2f0c <__adddf3+0x2b4>
    31a0:	40c50833          	sub	a6,a0,a2
    31a4:	010538b3          	sltu	a7,a0,a6
    31a8:	40e785b3          	sub	a1,a5,a4
    31ac:	411585b3          	sub	a1,a1,a7
    31b0:	00859893          	slli	a7,a1,0x8
    31b4:	0008dc63          	bgez	a7,31cc <__adddf3+0x574>
    31b8:	40a60533          	sub	a0,a2,a0
    31bc:	40f707b3          	sub	a5,a4,a5
    31c0:	00a63633          	sltu	a2,a2,a0
    31c4:	40c787b3          	sub	a5,a5,a2
    31c8:	fcdff06f          	j	3194 <__adddf3+0x53c>
    31cc:	00b86533          	or	a0,a6,a1
    31d0:	22050663          	beqz	a0,33fc <__adddf3+0x7a4>
    31d4:	00058793          	mv	a5,a1
    31d8:	00080513          	mv	a0,a6
    31dc:	d31ff06f          	j	2f0c <__adddf3+0x2b4>
    31e0:	00081c63          	bnez	a6,31f8 <__adddf3+0x5a0>
    31e4:	22058063          	beqz	a1,3404 <__adddf3+0x7ac>
    31e8:	00070793          	mv	a5,a4
    31ec:	00060513          	mv	a0,a2
    31f0:	00068913          	mv	s2,a3
    31f4:	b09ff06f          	j	2cfc <__adddf3+0xa4>
    31f8:	b00582e3          	beqz	a1,2cfc <__adddf3+0xa4>
    31fc:	d45ff06f          	j	2f40 <__adddf3+0x2e8>
    3200:	40c509b3          	sub	s3,a0,a2
    3204:	013535b3          	sltu	a1,a0,s3
    3208:	40e78433          	sub	s0,a5,a4
    320c:	40b40433          	sub	s0,s0,a1
    3210:	00841593          	slli	a1,s0,0x8
    3214:	0805d663          	bgez	a1,32a0 <__adddf3+0x648>
    3218:	40a609b3          	sub	s3,a2,a0
    321c:	40f707b3          	sub	a5,a4,a5
    3220:	01363633          	sltu	a2,a2,s3
    3224:	40c78433          	sub	s0,a5,a2
    3228:	00068913          	mv	s2,a3
    322c:	08040463          	beqz	s0,32b4 <__adddf3+0x65c>
    3230:	00040513          	mv	a0,s0
    3234:	00002097          	auipc	ra,0x2
    3238:	a30080e7          	jalr	-1488(ra) # 4c64 <__clzsi2>
    323c:	ff850713          	addi	a4,a0,-8
    3240:	01f00793          	li	a5,31
    3244:	08e7c263          	blt	a5,a4,32c8 <__adddf3+0x670>
    3248:	02000793          	li	a5,32
    324c:	40e787b3          	sub	a5,a5,a4
    3250:	00e41433          	sll	s0,s0,a4
    3254:	00f9d7b3          	srl	a5,s3,a5
    3258:	0087e433          	or	s0,a5,s0
    325c:	00e99533          	sll	a0,s3,a4
    3260:	0a974663          	blt	a4,s1,330c <__adddf3+0x6b4>
    3264:	40970733          	sub	a4,a4,s1
    3268:	00170793          	addi	a5,a4,1
    326c:	01f00693          	li	a3,31
    3270:	06f6c463          	blt	a3,a5,32d8 <__adddf3+0x680>
    3274:	02000713          	li	a4,32
    3278:	40f70733          	sub	a4,a4,a5
    327c:	00f55633          	srl	a2,a0,a5
    3280:	00e416b3          	sll	a3,s0,a4
    3284:	00e51533          	sll	a0,a0,a4
    3288:	00c6e6b3          	or	a3,a3,a2
    328c:	00a03533          	snez	a0,a0
    3290:	00a6e533          	or	a0,a3,a0
    3294:	00f457b3          	srl	a5,s0,a5
    3298:	00000493          	li	s1,0
    329c:	c71ff06f          	j	2f0c <__adddf3+0x2b4>
    32a0:	0089e533          	or	a0,s3,s0
    32a4:	f80514e3          	bnez	a0,322c <__adddf3+0x5d4>
    32a8:	00000793          	li	a5,0
    32ac:	00000493          	li	s1,0
    32b0:	1440006f          	j	33f4 <__adddf3+0x79c>
    32b4:	00098513          	mv	a0,s3
    32b8:	00002097          	auipc	ra,0x2
    32bc:	9ac080e7          	jalr	-1620(ra) # 4c64 <__clzsi2>
    32c0:	02050513          	addi	a0,a0,32
    32c4:	f79ff06f          	j	323c <__adddf3+0x5e4>
    32c8:	fd850413          	addi	s0,a0,-40
    32cc:	00899433          	sll	s0,s3,s0
    32d0:	00000513          	li	a0,0
    32d4:	f8dff06f          	j	3260 <__adddf3+0x608>
    32d8:	fe170713          	addi	a4,a4,-31
    32dc:	02000613          	li	a2,32
    32e0:	00e45733          	srl	a4,s0,a4
    32e4:	00000693          	li	a3,0
    32e8:	00c78863          	beq	a5,a2,32f8 <__adddf3+0x6a0>
    32ec:	04000693          	li	a3,64
    32f0:	40f686b3          	sub	a3,a3,a5
    32f4:	00d416b3          	sll	a3,s0,a3
    32f8:	00d56533          	or	a0,a0,a3
    32fc:	00a03533          	snez	a0,a0
    3300:	00a76533          	or	a0,a4,a0
    3304:	00000793          	li	a5,0
    3308:	f91ff06f          	j	3298 <__adddf3+0x640>
    330c:	ff8007b7          	lui	a5,0xff800
    3310:	fff78793          	addi	a5,a5,-1 # ff7fffff <IO_BASE+0xff3fffff>
    3314:	40e484b3          	sub	s1,s1,a4
    3318:	00f477b3          	and	a5,s0,a5
    331c:	bf1ff06f          	j	2f0c <__adddf3+0x2b4>
    3320:	00070793          	mv	a5,a4
    3324:	00060513          	mv	a0,a2
    3328:	00058493          	mv	s1,a1
    332c:	be1ff06f          	j	2f0c <__adddf3+0x2b4>
    3330:	00070793          	mv	a5,a4
    3334:	00060513          	mv	a0,a2
    3338:	bd5ff06f          	j	2f0c <__adddf3+0x2b4>
    333c:	7ff00493          	li	s1,2047
    3340:	00000793          	li	a5,0
    3344:	00000513          	li	a0,0
    3348:	00879713          	slli	a4,a5,0x8
    334c:	00075e63          	bgez	a4,3368 <__adddf3+0x710>
    3350:	00148493          	addi	s1,s1,1
    3354:	7ff00713          	li	a4,2047
    3358:	0ae48e63          	beq	s1,a4,3414 <__adddf3+0x7bc>
    335c:	ff800737          	lui	a4,0xff800
    3360:	fff70713          	addi	a4,a4,-1 # ff7fffff <IO_BASE+0xff3fffff>
    3364:	00e7f7b3          	and	a5,a5,a4
    3368:	01d79713          	slli	a4,a5,0x1d
    336c:	00355513          	srli	a0,a0,0x3
    3370:	00a76533          	or	a0,a4,a0
    3374:	7ff00713          	li	a4,2047
    3378:	0037d793          	srli	a5,a5,0x3
    337c:	00e49e63          	bne	s1,a4,3398 <__adddf3+0x740>
    3380:	00f56533          	or	a0,a0,a5
    3384:	00000793          	li	a5,0
    3388:	00050863          	beqz	a0,3398 <__adddf3+0x740>
    338c:	000807b7          	lui	a5,0x80
    3390:	00000513          	li	a0,0
    3394:	00000913          	li	s2,0
    3398:	7ff4f713          	andi	a4,s1,2047
    339c:	00c79793          	slli	a5,a5,0xc
    33a0:	01471713          	slli	a4,a4,0x14
    33a4:	01c12083          	lw	ra,28(sp)
    33a8:	01812403          	lw	s0,24(sp)
    33ac:	00c7d793          	srli	a5,a5,0xc
    33b0:	01f91593          	slli	a1,s2,0x1f
    33b4:	00e7e7b3          	or	a5,a5,a4
    33b8:	00b7e733          	or	a4,a5,a1
    33bc:	01412483          	lw	s1,20(sp)
    33c0:	01012903          	lw	s2,16(sp)
    33c4:	00c12983          	lw	s3,12(sp)
    33c8:	00070593          	mv	a1,a4
    33cc:	02010113          	addi	sp,sp,32
    33d0:	00008067          	ret
    33d4:	00080493          	mv	s1,a6
    33d8:	b35ff06f          	j	2f0c <__adddf3+0x2b4>
    33dc:	00070793          	mv	a5,a4
    33e0:	00060513          	mv	a0,a2
    33e4:	00080493          	mv	s1,a6
    33e8:	dadff06f          	j	3194 <__adddf3+0x53c>
    33ec:	00000793          	li	a5,0
    33f0:	00000513          	li	a0,0
    33f4:	00000913          	li	s2,0
    33f8:	f51ff06f          	j	3348 <__adddf3+0x6f0>
    33fc:	00000793          	li	a5,0
    3400:	ff5ff06f          	j	33f4 <__adddf3+0x79c>
    3404:	00000513          	li	a0,0
    3408:	00000913          	li	s2,0
    340c:	004007b7          	lui	a5,0x400
    3410:	b3dff06f          	j	2f4c <__adddf3+0x2f4>
    3414:	00000793          	li	a5,0
    3418:	00000513          	li	a0,0
    341c:	f4dff06f          	j	3368 <__adddf3+0x710>

00003420 <__divdf3>:
    3420:	fd010113          	addi	sp,sp,-48
    3424:	0145d813          	srli	a6,a1,0x14
    3428:	02912223          	sw	s1,36(sp)
    342c:	01312e23          	sw	s3,28(sp)
    3430:	01412c23          	sw	s4,24(sp)
    3434:	01612823          	sw	s6,16(sp)
    3438:	01712623          	sw	s7,12(sp)
    343c:	00c59493          	slli	s1,a1,0xc
    3440:	02112623          	sw	ra,44(sp)
    3444:	02812423          	sw	s0,40(sp)
    3448:	03212023          	sw	s2,32(sp)
    344c:	01512a23          	sw	s5,20(sp)
    3450:	7ff87813          	andi	a6,a6,2047
    3454:	00050b13          	mv	s6,a0
    3458:	00060b93          	mv	s7,a2
    345c:	00068a13          	mv	s4,a3
    3460:	00c4d493          	srli	s1,s1,0xc
    3464:	01f5d993          	srli	s3,a1,0x1f
    3468:	0a080263          	beqz	a6,350c <__divdf3+0xec>
    346c:	7ff00793          	li	a5,2047
    3470:	10f80463          	beq	a6,a5,3578 <__divdf3+0x158>
    3474:	01d55a93          	srli	s5,a0,0x1d
    3478:	00349493          	slli	s1,s1,0x3
    347c:	009ae4b3          	or	s1,s5,s1
    3480:	00800ab7          	lui	s5,0x800
    3484:	0154eab3          	or	s5,s1,s5
    3488:	00351413          	slli	s0,a0,0x3
    348c:	c0180913          	addi	s2,a6,-1023
    3490:	00000b13          	li	s6,0
    3494:	014a5513          	srli	a0,s4,0x14
    3498:	00ca1493          	slli	s1,s4,0xc
    349c:	7ff57813          	andi	a6,a0,2047
    34a0:	00c4d493          	srli	s1,s1,0xc
    34a4:	01fa5a13          	srli	s4,s4,0x1f
    34a8:	10080663          	beqz	a6,35b4 <__divdf3+0x194>
    34ac:	7ff00793          	li	a5,2047
    34b0:	16f80a63          	beq	a6,a5,3624 <__divdf3+0x204>
    34b4:	00349513          	slli	a0,s1,0x3
    34b8:	01dbd793          	srli	a5,s7,0x1d
    34bc:	00a7e533          	or	a0,a5,a0
    34c0:	008004b7          	lui	s1,0x800
    34c4:	009564b3          	or	s1,a0,s1
    34c8:	003b9f13          	slli	t5,s7,0x3
    34cc:	c0180513          	addi	a0,a6,-1023
    34d0:	00000793          	li	a5,0
    34d4:	002b1713          	slli	a4,s6,0x2
    34d8:	00f76733          	or	a4,a4,a5
    34dc:	fff70713          	addi	a4,a4,-1
    34e0:	00e00693          	li	a3,14
    34e4:	0149c633          	xor	a2,s3,s4
    34e8:	40a90833          	sub	a6,s2,a0
    34ec:	16e6e863          	bltu	a3,a4,365c <__divdf3+0x23c>
    34f0:	00003697          	auipc	a3,0x3
    34f4:	36868693          	addi	a3,a3,872 # 6858 <Zero+0x10>
    34f8:	00271713          	slli	a4,a4,0x2
    34fc:	00d70733          	add	a4,a4,a3
    3500:	00072703          	lw	a4,0(a4)
    3504:	00d70733          	add	a4,a4,a3
    3508:	00070067          	jr	a4
    350c:	00a4eab3          	or	s5,s1,a0
    3510:	080a8263          	beqz	s5,3594 <__divdf3+0x174>
    3514:	04048263          	beqz	s1,3558 <__divdf3+0x138>
    3518:	00048513          	mv	a0,s1
    351c:	00001097          	auipc	ra,0x1
    3520:	748080e7          	jalr	1864(ra) # 4c64 <__clzsi2>
    3524:	ff550793          	addi	a5,a0,-11
    3528:	01c00713          	li	a4,28
    352c:	02f74e63          	blt	a4,a5,3568 <__divdf3+0x148>
    3530:	01d00a93          	li	s5,29
    3534:	ff850413          	addi	s0,a0,-8
    3538:	40fa8ab3          	sub	s5,s5,a5
    353c:	008494b3          	sll	s1,s1,s0
    3540:	015b5ab3          	srl	s5,s6,s5
    3544:	009aeab3          	or	s5,s5,s1
    3548:	008b1433          	sll	s0,s6,s0
    354c:	c0d00813          	li	a6,-1011
    3550:	40a80933          	sub	s2,a6,a0
    3554:	f3dff06f          	j	3490 <__divdf3+0x70>
    3558:	00001097          	auipc	ra,0x1
    355c:	70c080e7          	jalr	1804(ra) # 4c64 <__clzsi2>
    3560:	02050513          	addi	a0,a0,32
    3564:	fc1ff06f          	j	3524 <__divdf3+0x104>
    3568:	fd850493          	addi	s1,a0,-40
    356c:	009b1ab3          	sll	s5,s6,s1
    3570:	00000413          	li	s0,0
    3574:	fd9ff06f          	j	354c <__divdf3+0x12c>
    3578:	00a4eab3          	or	s5,s1,a0
    357c:	020a8463          	beqz	s5,35a4 <__divdf3+0x184>
    3580:	00050413          	mv	s0,a0
    3584:	00048a93          	mv	s5,s1
    3588:	7ff00913          	li	s2,2047
    358c:	00300b13          	li	s6,3
    3590:	f05ff06f          	j	3494 <__divdf3+0x74>
    3594:	00000413          	li	s0,0
    3598:	00000913          	li	s2,0
    359c:	00100b13          	li	s6,1
    35a0:	ef5ff06f          	j	3494 <__divdf3+0x74>
    35a4:	00000413          	li	s0,0
    35a8:	7ff00913          	li	s2,2047
    35ac:	00200b13          	li	s6,2
    35b0:	ee5ff06f          	j	3494 <__divdf3+0x74>
    35b4:	0174ef33          	or	t5,s1,s7
    35b8:	080f0263          	beqz	t5,363c <__divdf3+0x21c>
    35bc:	04048263          	beqz	s1,3600 <__divdf3+0x1e0>
    35c0:	00048513          	mv	a0,s1
    35c4:	00001097          	auipc	ra,0x1
    35c8:	6a0080e7          	jalr	1696(ra) # 4c64 <__clzsi2>
    35cc:	ff550793          	addi	a5,a0,-11
    35d0:	01c00713          	li	a4,28
    35d4:	04f74063          	blt	a4,a5,3614 <__divdf3+0x1f4>
    35d8:	01d00713          	li	a4,29
    35dc:	ff850f13          	addi	t5,a0,-8
    35e0:	40f70733          	sub	a4,a4,a5
    35e4:	01e494b3          	sll	s1,s1,t5
    35e8:	00ebd733          	srl	a4,s7,a4
    35ec:	009764b3          	or	s1,a4,s1
    35f0:	01eb9f33          	sll	t5,s7,t5
    35f4:	c0d00613          	li	a2,-1011
    35f8:	40a60533          	sub	a0,a2,a0
    35fc:	ed5ff06f          	j	34d0 <__divdf3+0xb0>
    3600:	000b8513          	mv	a0,s7
    3604:	00001097          	auipc	ra,0x1
    3608:	660080e7          	jalr	1632(ra) # 4c64 <__clzsi2>
    360c:	02050513          	addi	a0,a0,32
    3610:	fbdff06f          	j	35cc <__divdf3+0x1ac>
    3614:	fd850493          	addi	s1,a0,-40
    3618:	009b94b3          	sll	s1,s7,s1
    361c:	00000f13          	li	t5,0
    3620:	fd5ff06f          	j	35f4 <__divdf3+0x1d4>
    3624:	0174ef33          	or	t5,s1,s7
    3628:	020f0263          	beqz	t5,364c <__divdf3+0x22c>
    362c:	000b8f13          	mv	t5,s7
    3630:	7ff00513          	li	a0,2047
    3634:	00300793          	li	a5,3
    3638:	e9dff06f          	j	34d4 <__divdf3+0xb4>
    363c:	00000493          	li	s1,0
    3640:	00000513          	li	a0,0
    3644:	00100793          	li	a5,1
    3648:	e8dff06f          	j	34d4 <__divdf3+0xb4>
    364c:	00000493          	li	s1,0
    3650:	7ff00513          	li	a0,2047
    3654:	00200793          	li	a5,2
    3658:	e7dff06f          	j	34d4 <__divdf3+0xb4>
    365c:	0154e663          	bltu	s1,s5,3668 <__divdf3+0x248>
    3660:	349a9863          	bne	s5,s1,39b0 <__divdf3+0x590>
    3664:	35e46663          	bltu	s0,t5,39b0 <__divdf3+0x590>
    3668:	01fa9693          	slli	a3,s5,0x1f
    366c:	00145713          	srli	a4,s0,0x1
    3670:	01f41793          	slli	a5,s0,0x1f
    3674:	001ada93          	srli	s5,s5,0x1
    3678:	00e6e433          	or	s0,a3,a4
    367c:	00849513          	slli	a0,s1,0x8
    3680:	018f5493          	srli	s1,t5,0x18
    3684:	00a4e533          	or	a0,s1,a0
    3688:	01055e13          	srli	t3,a0,0x10
    368c:	03cad8b3          	divu	a7,s5,t3
    3690:	01051313          	slli	t1,a0,0x10
    3694:	01035313          	srli	t1,t1,0x10
    3698:	01045713          	srli	a4,s0,0x10
    369c:	008f1593          	slli	a1,t5,0x8
    36a0:	03caf4b3          	remu	s1,s5,t3
    36a4:	00088f93          	mv	t6,a7
    36a8:	031306b3          	mul	a3,t1,a7
    36ac:	01049a93          	slli	s5,s1,0x10
    36b0:	01576733          	or	a4,a4,s5
    36b4:	00d77e63          	bgeu	a4,a3,36d0 <__divdf3+0x2b0>
    36b8:	00a70733          	add	a4,a4,a0
    36bc:	fff88f93          	addi	t6,a7,-1
    36c0:	00a76863          	bltu	a4,a0,36d0 <__divdf3+0x2b0>
    36c4:	00d77663          	bgeu	a4,a3,36d0 <__divdf3+0x2b0>
    36c8:	ffe88f93          	addi	t6,a7,-2
    36cc:	00a70733          	add	a4,a4,a0
    36d0:	40d70733          	sub	a4,a4,a3
    36d4:	03c75eb3          	divu	t4,a4,t3
    36d8:	01041413          	slli	s0,s0,0x10
    36dc:	01045413          	srli	s0,s0,0x10
    36e0:	03c77733          	remu	a4,a4,t3
    36e4:	000e8693          	mv	a3,t4
    36e8:	03d308b3          	mul	a7,t1,t4
    36ec:	01071713          	slli	a4,a4,0x10
    36f0:	00e46733          	or	a4,s0,a4
    36f4:	01177e63          	bgeu	a4,a7,3710 <__divdf3+0x2f0>
    36f8:	00a70733          	add	a4,a4,a0
    36fc:	fffe8693          	addi	a3,t4,-1
    3700:	00a76863          	bltu	a4,a0,3710 <__divdf3+0x2f0>
    3704:	01177663          	bgeu	a4,a7,3710 <__divdf3+0x2f0>
    3708:	ffee8693          	addi	a3,t4,-2
    370c:	00a70733          	add	a4,a4,a0
    3710:	010f9f93          	slli	t6,t6,0x10
    3714:	00dfefb3          	or	t6,t6,a3
    3718:	000106b7          	lui	a3,0x10
    371c:	41170433          	sub	s0,a4,a7
    3720:	fff68893          	addi	a7,a3,-1 # ffff <__fdlib_version+0x9587>
    3724:	010fdf13          	srli	t5,t6,0x10
    3728:	011ff733          	and	a4,t6,a7
    372c:	0105de93          	srli	t4,a1,0x10
    3730:	0115f8b3          	and	a7,a1,a7
    3734:	031703b3          	mul	t2,a4,a7
    3738:	031f04b3          	mul	s1,t5,a7
    373c:	02ee8733          	mul	a4,t4,a4
    3740:	03df02b3          	mul	t0,t5,t4
    3744:	00970f33          	add	t5,a4,s1
    3748:	0103d713          	srli	a4,t2,0x10
    374c:	01e70733          	add	a4,a4,t5
    3750:	00977463          	bgeu	a4,s1,3758 <__divdf3+0x338>
    3754:	00d282b3          	add	t0,t0,a3
    3758:	01075f13          	srli	t5,a4,0x10
    375c:	005f0f33          	add	t5,t5,t0
    3760:	000102b7          	lui	t0,0x10
    3764:	fff28293          	addi	t0,t0,-1 # ffff <__fdlib_version+0x9587>
    3768:	005776b3          	and	a3,a4,t0
    376c:	01069693          	slli	a3,a3,0x10
    3770:	0053f3b3          	and	t2,t2,t0
    3774:	007686b3          	add	a3,a3,t2
    3778:	01e46863          	bltu	s0,t5,3788 <__divdf3+0x368>
    377c:	000f8493          	mv	s1,t6
    3780:	05e41463          	bne	s0,t5,37c8 <__divdf3+0x3a8>
    3784:	04d7f263          	bgeu	a5,a3,37c8 <__divdf3+0x3a8>
    3788:	00b787b3          	add	a5,a5,a1
    378c:	00b7b733          	sltu	a4,a5,a1
    3790:	00a70733          	add	a4,a4,a0
    3794:	00e40433          	add	s0,s0,a4
    3798:	ffff8493          	addi	s1,t6,-1
    379c:	00856663          	bltu	a0,s0,37a8 <__divdf3+0x388>
    37a0:	02851463          	bne	a0,s0,37c8 <__divdf3+0x3a8>
    37a4:	02b7e263          	bltu	a5,a1,37c8 <__divdf3+0x3a8>
    37a8:	01e46663          	bltu	s0,t5,37b4 <__divdf3+0x394>
    37ac:	008f1e63          	bne	t5,s0,37c8 <__divdf3+0x3a8>
    37b0:	00d7fc63          	bgeu	a5,a3,37c8 <__divdf3+0x3a8>
    37b4:	00b787b3          	add	a5,a5,a1
    37b8:	00b7b733          	sltu	a4,a5,a1
    37bc:	00a70733          	add	a4,a4,a0
    37c0:	ffef8493          	addi	s1,t6,-2
    37c4:	00e40433          	add	s0,s0,a4
    37c8:	40d786b3          	sub	a3,a5,a3
    37cc:	41e40433          	sub	s0,s0,t5
    37d0:	00d7b7b3          	sltu	a5,a5,a3
    37d4:	40f40433          	sub	s0,s0,a5
    37d8:	fff00f13          	li	t5,-1
    37dc:	12850463          	beq	a0,s0,3904 <__divdf3+0x4e4>
    37e0:	03c45f33          	divu	t5,s0,t3
    37e4:	0106d713          	srli	a4,a3,0x10
    37e8:	03c47433          	remu	s0,s0,t3
    37ec:	03e307b3          	mul	a5,t1,t5
    37f0:	01041413          	slli	s0,s0,0x10
    37f4:	00876433          	or	s0,a4,s0
    37f8:	000f0713          	mv	a4,t5
    37fc:	00f47e63          	bgeu	s0,a5,3818 <__divdf3+0x3f8>
    3800:	00a40433          	add	s0,s0,a0
    3804:	ffff0713          	addi	a4,t5,-1 # 7fffffff <IO_BASE+0x7fbfffff>
    3808:	00a46863          	bltu	s0,a0,3818 <__divdf3+0x3f8>
    380c:	00f47663          	bgeu	s0,a5,3818 <__divdf3+0x3f8>
    3810:	ffef0713          	addi	a4,t5,-2
    3814:	00a40433          	add	s0,s0,a0
    3818:	40f40433          	sub	s0,s0,a5
    381c:	03c45f33          	divu	t5,s0,t3
    3820:	01069693          	slli	a3,a3,0x10
    3824:	0106d693          	srli	a3,a3,0x10
    3828:	03c47433          	remu	s0,s0,t3
    382c:	000f0793          	mv	a5,t5
    3830:	03e30333          	mul	t1,t1,t5
    3834:	01041413          	slli	s0,s0,0x10
    3838:	0086e433          	or	s0,a3,s0
    383c:	00647e63          	bgeu	s0,t1,3858 <__divdf3+0x438>
    3840:	00a40433          	add	s0,s0,a0
    3844:	ffff0793          	addi	a5,t5,-1
    3848:	00a46863          	bltu	s0,a0,3858 <__divdf3+0x438>
    384c:	00647663          	bgeu	s0,t1,3858 <__divdf3+0x438>
    3850:	ffef0793          	addi	a5,t5,-2
    3854:	00a40433          	add	s0,s0,a0
    3858:	01071713          	slli	a4,a4,0x10
    385c:	00f76733          	or	a4,a4,a5
    3860:	01071793          	slli	a5,a4,0x10
    3864:	0107d793          	srli	a5,a5,0x10
    3868:	40640433          	sub	s0,s0,t1
    386c:	01075313          	srli	t1,a4,0x10
    3870:	03178e33          	mul	t3,a5,a7
    3874:	031308b3          	mul	a7,t1,a7
    3878:	026e8333          	mul	t1,t4,t1
    387c:	02fe8eb3          	mul	t4,t4,a5
    3880:	010e5793          	srli	a5,t3,0x10
    3884:	011e8eb3          	add	t4,t4,a7
    3888:	01d787b3          	add	a5,a5,t4
    388c:	0117f663          	bgeu	a5,a7,3898 <__divdf3+0x478>
    3890:	000106b7          	lui	a3,0x10
    3894:	00d30333          	add	t1,t1,a3
    3898:	0107d893          	srli	a7,a5,0x10
    389c:	006888b3          	add	a7,a7,t1
    38a0:	00010337          	lui	t1,0x10
    38a4:	fff30313          	addi	t1,t1,-1 # ffff <__fdlib_version+0x9587>
    38a8:	0067f6b3          	and	a3,a5,t1
    38ac:	01069693          	slli	a3,a3,0x10
    38b0:	006e7e33          	and	t3,t3,t1
    38b4:	01c686b3          	add	a3,a3,t3
    38b8:	01146863          	bltu	s0,a7,38c8 <__divdf3+0x4a8>
    38bc:	23141c63          	bne	s0,a7,3af4 <__divdf3+0x6d4>
    38c0:	00070f13          	mv	t5,a4
    38c4:	04068063          	beqz	a3,3904 <__divdf3+0x4e4>
    38c8:	00850433          	add	s0,a0,s0
    38cc:	fff70f13          	addi	t5,a4,-1
    38d0:	02a46463          	bltu	s0,a0,38f8 <__divdf3+0x4d8>
    38d4:	01146663          	bltu	s0,a7,38e0 <__divdf3+0x4c0>
    38d8:	21141c63          	bne	s0,a7,3af0 <__divdf3+0x6d0>
    38dc:	02d5f063          	bgeu	a1,a3,38fc <__divdf3+0x4dc>
    38e0:	00159793          	slli	a5,a1,0x1
    38e4:	00b7b5b3          	sltu	a1,a5,a1
    38e8:	00a58533          	add	a0,a1,a0
    38ec:	ffe70f13          	addi	t5,a4,-2
    38f0:	00a40433          	add	s0,s0,a0
    38f4:	00078593          	mv	a1,a5
    38f8:	01141463          	bne	s0,a7,3900 <__divdf3+0x4e0>
    38fc:	00b68463          	beq	a3,a1,3904 <__divdf3+0x4e4>
    3900:	001f6f13          	ori	t5,t5,1
    3904:	3ff80713          	addi	a4,a6,1023
    3908:	10e05263          	blez	a4,3a0c <__divdf3+0x5ec>
    390c:	007f7793          	andi	a5,t5,7
    3910:	02078063          	beqz	a5,3930 <__divdf3+0x510>
    3914:	00ff7793          	andi	a5,t5,15
    3918:	00400693          	li	a3,4
    391c:	00d78a63          	beq	a5,a3,3930 <__divdf3+0x510>
    3920:	004f0693          	addi	a3,t5,4
    3924:	01e6bf33          	sltu	t5,a3,t5
    3928:	01e484b3          	add	s1,s1,t5
    392c:	00068f13          	mv	t5,a3
    3930:	00749793          	slli	a5,s1,0x7
    3934:	0007da63          	bgez	a5,3948 <__divdf3+0x528>
    3938:	ff0007b7          	lui	a5,0xff000
    393c:	fff78793          	addi	a5,a5,-1 # feffffff <IO_BASE+0xfebfffff>
    3940:	00f4f4b3          	and	s1,s1,a5
    3944:	40080713          	addi	a4,a6,1024
    3948:	7fe00793          	li	a5,2046
    394c:	18e7c263          	blt	a5,a4,3ad0 <__divdf3+0x6b0>
    3950:	003f5f13          	srli	t5,t5,0x3
    3954:	01d49793          	slli	a5,s1,0x1d
    3958:	01e7e7b3          	or	a5,a5,t5
    395c:	0034d513          	srli	a0,s1,0x3
    3960:	00c51513          	slli	a0,a0,0xc
    3964:	7ff77713          	andi	a4,a4,2047
    3968:	01471713          	slli	a4,a4,0x14
    396c:	02c12083          	lw	ra,44(sp)
    3970:	02812403          	lw	s0,40(sp)
    3974:	00c55513          	srli	a0,a0,0xc
    3978:	00e56533          	or	a0,a0,a4
    397c:	01f61613          	slli	a2,a2,0x1f
    3980:	00c56733          	or	a4,a0,a2
    3984:	02412483          	lw	s1,36(sp)
    3988:	02012903          	lw	s2,32(sp)
    398c:	01c12983          	lw	s3,28(sp)
    3990:	01812a03          	lw	s4,24(sp)
    3994:	01412a83          	lw	s5,20(sp)
    3998:	01012b03          	lw	s6,16(sp)
    399c:	00c12b83          	lw	s7,12(sp)
    39a0:	00078513          	mv	a0,a5
    39a4:	00070593          	mv	a1,a4
    39a8:	03010113          	addi	sp,sp,48
    39ac:	00008067          	ret
    39b0:	fff80813          	addi	a6,a6,-1
    39b4:	00000793          	li	a5,0
    39b8:	cc5ff06f          	j	367c <__divdf3+0x25c>
    39bc:	00098613          	mv	a2,s3
    39c0:	000a8493          	mv	s1,s5
    39c4:	00040f13          	mv	t5,s0
    39c8:	000b0793          	mv	a5,s6
    39cc:	00200713          	li	a4,2
    39d0:	10e78063          	beq	a5,a4,3ad0 <__divdf3+0x6b0>
    39d4:	00300713          	li	a4,3
    39d8:	0ee78263          	beq	a5,a4,3abc <__divdf3+0x69c>
    39dc:	00100713          	li	a4,1
    39e0:	f2e792e3          	bne	a5,a4,3904 <__divdf3+0x4e4>
    39e4:	00000513          	li	a0,0
    39e8:	00000793          	li	a5,0
    39ec:	0940006f          	j	3a80 <__divdf3+0x660>
    39f0:	000a0613          	mv	a2,s4
    39f4:	fd9ff06f          	j	39cc <__divdf3+0x5ac>
    39f8:	000804b7          	lui	s1,0x80
    39fc:	00000f13          	li	t5,0
    3a00:	00000613          	li	a2,0
    3a04:	00300793          	li	a5,3
    3a08:	fc5ff06f          	j	39cc <__divdf3+0x5ac>
    3a0c:	00100513          	li	a0,1
    3a10:	40e50533          	sub	a0,a0,a4
    3a14:	03800793          	li	a5,56
    3a18:	fca7c6e3          	blt	a5,a0,39e4 <__divdf3+0x5c4>
    3a1c:	01f00793          	li	a5,31
    3a20:	06a7c463          	blt	a5,a0,3a88 <__divdf3+0x668>
    3a24:	41e80813          	addi	a6,a6,1054
    3a28:	010497b3          	sll	a5,s1,a6
    3a2c:	00af5733          	srl	a4,t5,a0
    3a30:	010f1833          	sll	a6,t5,a6
    3a34:	00e7e7b3          	or	a5,a5,a4
    3a38:	01003833          	snez	a6,a6
    3a3c:	0107e7b3          	or	a5,a5,a6
    3a40:	00a4d533          	srl	a0,s1,a0
    3a44:	0077f713          	andi	a4,a5,7
    3a48:	02070063          	beqz	a4,3a68 <__divdf3+0x648>
    3a4c:	00f7f713          	andi	a4,a5,15
    3a50:	00400693          	li	a3,4
    3a54:	00d70a63          	beq	a4,a3,3a68 <__divdf3+0x648>
    3a58:	00478713          	addi	a4,a5,4
    3a5c:	00f737b3          	sltu	a5,a4,a5
    3a60:	00f50533          	add	a0,a0,a5
    3a64:	00070793          	mv	a5,a4
    3a68:	00851713          	slli	a4,a0,0x8
    3a6c:	06074a63          	bltz	a4,3ae0 <__divdf3+0x6c0>
    3a70:	01d51713          	slli	a4,a0,0x1d
    3a74:	0037d793          	srli	a5,a5,0x3
    3a78:	00f767b3          	or	a5,a4,a5
    3a7c:	00355513          	srli	a0,a0,0x3
    3a80:	00000713          	li	a4,0
    3a84:	eddff06f          	j	3960 <__divdf3+0x540>
    3a88:	fe100793          	li	a5,-31
    3a8c:	40e787b3          	sub	a5,a5,a4
    3a90:	02000693          	li	a3,32
    3a94:	00f4d7b3          	srl	a5,s1,a5
    3a98:	00000713          	li	a4,0
    3a9c:	00d50663          	beq	a0,a3,3aa8 <__divdf3+0x688>
    3aa0:	43e80813          	addi	a6,a6,1086
    3aa4:	01049733          	sll	a4,s1,a6
    3aa8:	01e76f33          	or	t5,a4,t5
    3aac:	01e03f33          	snez	t5,t5
    3ab0:	01e7e7b3          	or	a5,a5,t5
    3ab4:	00000513          	li	a0,0
    3ab8:	f8dff06f          	j	3a44 <__divdf3+0x624>
    3abc:	00080537          	lui	a0,0x80
    3ac0:	00000793          	li	a5,0
    3ac4:	7ff00713          	li	a4,2047
    3ac8:	00000613          	li	a2,0
    3acc:	e95ff06f          	j	3960 <__divdf3+0x540>
    3ad0:	00000513          	li	a0,0
    3ad4:	00000793          	li	a5,0
    3ad8:	7ff00713          	li	a4,2047
    3adc:	e85ff06f          	j	3960 <__divdf3+0x540>
    3ae0:	00000513          	li	a0,0
    3ae4:	00000793          	li	a5,0
    3ae8:	00100713          	li	a4,1
    3aec:	e75ff06f          	j	3960 <__divdf3+0x540>
    3af0:	000f0713          	mv	a4,t5
    3af4:	00070f13          	mv	t5,a4
    3af8:	e09ff06f          	j	3900 <__divdf3+0x4e0>

00003afc <__eqdf2>:
    3afc:	0145d713          	srli	a4,a1,0x14
    3b00:	001007b7          	lui	a5,0x100
    3b04:	fff78793          	addi	a5,a5,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    3b08:	0146d813          	srli	a6,a3,0x14
    3b0c:	00050313          	mv	t1,a0
    3b10:	00050e93          	mv	t4,a0
    3b14:	7ff77713          	andi	a4,a4,2047
    3b18:	7ff00513          	li	a0,2047
    3b1c:	00b7f8b3          	and	a7,a5,a1
    3b20:	00060f13          	mv	t5,a2
    3b24:	00d7f7b3          	and	a5,a5,a3
    3b28:	01f5d593          	srli	a1,a1,0x1f
    3b2c:	7ff87813          	andi	a6,a6,2047
    3b30:	01f6d693          	srli	a3,a3,0x1f
    3b34:	00a71c63          	bne	a4,a0,3b4c <__eqdf2+0x50>
    3b38:	0068ee33          	or	t3,a7,t1
    3b3c:	00100513          	li	a0,1
    3b40:	000e1463          	bnez	t3,3b48 <__eqdf2+0x4c>
    3b44:	00e80663          	beq	a6,a4,3b50 <__eqdf2+0x54>
    3b48:	00008067          	ret
    3b4c:	00a81863          	bne	a6,a0,3b5c <__eqdf2+0x60>
    3b50:	00c7e633          	or	a2,a5,a2
    3b54:	00100513          	li	a0,1
    3b58:	fe0618e3          	bnez	a2,3b48 <__eqdf2+0x4c>
    3b5c:	00100513          	li	a0,1
    3b60:	ff0714e3          	bne	a4,a6,3b48 <__eqdf2+0x4c>
    3b64:	fef892e3          	bne	a7,a5,3b48 <__eqdf2+0x4c>
    3b68:	ffee90e3          	bne	t4,t5,3b48 <__eqdf2+0x4c>
    3b6c:	00d58a63          	beq	a1,a3,3b80 <__eqdf2+0x84>
    3b70:	fc071ce3          	bnez	a4,3b48 <__eqdf2+0x4c>
    3b74:	0068e533          	or	a0,a7,t1
    3b78:	00a03533          	snez	a0,a0
    3b7c:	00008067          	ret
    3b80:	00000513          	li	a0,0
    3b84:	00008067          	ret

00003b88 <__gedf2>:
    3b88:	0145d813          	srli	a6,a1,0x14
    3b8c:	001007b7          	lui	a5,0x100
    3b90:	fff78793          	addi	a5,a5,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    3b94:	0146d713          	srli	a4,a3,0x14
    3b98:	7ff87813          	andi	a6,a6,2047
    3b9c:	7ff00e93          	li	t4,2047
    3ba0:	00b7f8b3          	and	a7,a5,a1
    3ba4:	00050313          	mv	t1,a0
    3ba8:	00d7f7b3          	and	a5,a5,a3
    3bac:	01f5d593          	srli	a1,a1,0x1f
    3bb0:	00060e13          	mv	t3,a2
    3bb4:	7ff77713          	andi	a4,a4,2047
    3bb8:	01f6d693          	srli	a3,a3,0x1f
    3bbc:	01d81a63          	bne	a6,t4,3bd0 <__gedf2+0x48>
    3bc0:	00a8eeb3          	or	t4,a7,a0
    3bc4:	080e8c63          	beqz	t4,3c5c <__gedf2+0xd4>
    3bc8:	ffe00593          	li	a1,-2
    3bcc:	0480006f          	j	3c14 <__gedf2+0x8c>
    3bd0:	01d71663          	bne	a4,t4,3bdc <__gedf2+0x54>
    3bd4:	00c7eeb3          	or	t4,a5,a2
    3bd8:	fe0e98e3          	bnez	t4,3bc8 <__gedf2+0x40>
    3bdc:	08081263          	bnez	a6,3c60 <__gedf2+0xd8>
    3be0:	00a8e533          	or	a0,a7,a0
    3be4:	00153513          	seqz	a0,a0
    3be8:	00071663          	bnez	a4,3bf4 <__gedf2+0x6c>
    3bec:	00c7e633          	or	a2,a5,a2
    3bf0:	04060e63          	beqz	a2,3c4c <__gedf2+0xc4>
    3bf4:	00051a63          	bnez	a0,3c08 <__gedf2+0x80>
    3bf8:	02d58263          	beq	a1,a3,3c1c <__gedf2+0x94>
    3bfc:	04058463          	beqz	a1,3c44 <__gedf2+0xbc>
    3c00:	fff00593          	li	a1,-1
    3c04:	0100006f          	j	3c14 <__gedf2+0x8c>
    3c08:	fff00593          	li	a1,-1
    3c0c:	00068463          	beqz	a3,3c14 <__gedf2+0x8c>
    3c10:	00068593          	mv	a1,a3
    3c14:	00058513          	mv	a0,a1
    3c18:	00008067          	ret
    3c1c:	ff0740e3          	blt	a4,a6,3bfc <__gedf2+0x74>
    3c20:	00e85663          	bge	a6,a4,3c2c <__gedf2+0xa4>
    3c24:	fe0598e3          	bnez	a1,3c14 <__gedf2+0x8c>
    3c28:	fd9ff06f          	j	3c00 <__gedf2+0x78>
    3c2c:	fd17e8e3          	bltu	a5,a7,3bfc <__gedf2+0x74>
    3c30:	02f89263          	bne	a7,a5,3c54 <__gedf2+0xcc>
    3c34:	fc6e64e3          	bltu	t3,t1,3bfc <__gedf2+0x74>
    3c38:	ffc366e3          	bltu	t1,t3,3c24 <__gedf2+0x9c>
    3c3c:	00000593          	li	a1,0
    3c40:	fd5ff06f          	j	3c14 <__gedf2+0x8c>
    3c44:	00100593          	li	a1,1
    3c48:	fcdff06f          	j	3c14 <__gedf2+0x8c>
    3c4c:	fe0518e3          	bnez	a0,3c3c <__gedf2+0xb4>
    3c50:	fadff06f          	j	3bfc <__gedf2+0x74>
    3c54:	fcf8e8e3          	bltu	a7,a5,3c24 <__gedf2+0x9c>
    3c58:	fe5ff06f          	j	3c3c <__gedf2+0xb4>
    3c5c:	f7070ce3          	beq	a4,a6,3bd4 <__gedf2+0x4c>
    3c60:	f8071ce3          	bnez	a4,3bf8 <__gedf2+0x70>
    3c64:	00000513          	li	a0,0
    3c68:	f85ff06f          	j	3bec <__gedf2+0x64>

00003c6c <__ledf2>:
    3c6c:	0145d813          	srli	a6,a1,0x14
    3c70:	001007b7          	lui	a5,0x100
    3c74:	fff78793          	addi	a5,a5,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    3c78:	0146d713          	srli	a4,a3,0x14
    3c7c:	7ff87813          	andi	a6,a6,2047
    3c80:	7ff00e93          	li	t4,2047
    3c84:	00b7f8b3          	and	a7,a5,a1
    3c88:	00050313          	mv	t1,a0
    3c8c:	00d7f7b3          	and	a5,a5,a3
    3c90:	01f5d593          	srli	a1,a1,0x1f
    3c94:	00060e13          	mv	t3,a2
    3c98:	7ff77713          	andi	a4,a4,2047
    3c9c:	01f6d693          	srli	a3,a3,0x1f
    3ca0:	01d81a63          	bne	a6,t4,3cb4 <__ledf2+0x48>
    3ca4:	00a8eeb3          	or	t4,a7,a0
    3ca8:	080e8c63          	beqz	t4,3d40 <__ledf2+0xd4>
    3cac:	00200593          	li	a1,2
    3cb0:	0480006f          	j	3cf8 <__ledf2+0x8c>
    3cb4:	01d71663          	bne	a4,t4,3cc0 <__ledf2+0x54>
    3cb8:	00c7eeb3          	or	t4,a5,a2
    3cbc:	fe0e98e3          	bnez	t4,3cac <__ledf2+0x40>
    3cc0:	08081263          	bnez	a6,3d44 <__ledf2+0xd8>
    3cc4:	00a8e533          	or	a0,a7,a0
    3cc8:	00153513          	seqz	a0,a0
    3ccc:	00071663          	bnez	a4,3cd8 <__ledf2+0x6c>
    3cd0:	00c7e633          	or	a2,a5,a2
    3cd4:	04060e63          	beqz	a2,3d30 <__ledf2+0xc4>
    3cd8:	00051a63          	bnez	a0,3cec <__ledf2+0x80>
    3cdc:	02d58263          	beq	a1,a3,3d00 <__ledf2+0x94>
    3ce0:	04058463          	beqz	a1,3d28 <__ledf2+0xbc>
    3ce4:	fff00593          	li	a1,-1
    3ce8:	0100006f          	j	3cf8 <__ledf2+0x8c>
    3cec:	fff00593          	li	a1,-1
    3cf0:	00068463          	beqz	a3,3cf8 <__ledf2+0x8c>
    3cf4:	00068593          	mv	a1,a3
    3cf8:	00058513          	mv	a0,a1
    3cfc:	00008067          	ret
    3d00:	ff0740e3          	blt	a4,a6,3ce0 <__ledf2+0x74>
    3d04:	00e85663          	bge	a6,a4,3d10 <__ledf2+0xa4>
    3d08:	fe0598e3          	bnez	a1,3cf8 <__ledf2+0x8c>
    3d0c:	fd9ff06f          	j	3ce4 <__ledf2+0x78>
    3d10:	fd17e8e3          	bltu	a5,a7,3ce0 <__ledf2+0x74>
    3d14:	02f89263          	bne	a7,a5,3d38 <__ledf2+0xcc>
    3d18:	fc6e64e3          	bltu	t3,t1,3ce0 <__ledf2+0x74>
    3d1c:	ffc366e3          	bltu	t1,t3,3d08 <__ledf2+0x9c>
    3d20:	00000593          	li	a1,0
    3d24:	fd5ff06f          	j	3cf8 <__ledf2+0x8c>
    3d28:	00100593          	li	a1,1
    3d2c:	fcdff06f          	j	3cf8 <__ledf2+0x8c>
    3d30:	fe0518e3          	bnez	a0,3d20 <__ledf2+0xb4>
    3d34:	fadff06f          	j	3ce0 <__ledf2+0x74>
    3d38:	fcf8e8e3          	bltu	a7,a5,3d08 <__ledf2+0x9c>
    3d3c:	fe5ff06f          	j	3d20 <__ledf2+0xb4>
    3d40:	f7070ce3          	beq	a4,a6,3cb8 <__ledf2+0x4c>
    3d44:	f8071ce3          	bnez	a4,3cdc <__ledf2+0x70>
    3d48:	00000513          	li	a0,0
    3d4c:	f85ff06f          	j	3cd0 <__ledf2+0x64>

00003d50 <__muldf3>:
    3d50:	fd010113          	addi	sp,sp,-48
    3d54:	01312e23          	sw	s3,28(sp)
    3d58:	0145d993          	srli	s3,a1,0x14
    3d5c:	02812423          	sw	s0,40(sp)
    3d60:	02912223          	sw	s1,36(sp)
    3d64:	01412c23          	sw	s4,24(sp)
    3d68:	01512a23          	sw	s5,20(sp)
    3d6c:	01612823          	sw	s6,16(sp)
    3d70:	00c59493          	slli	s1,a1,0xc
    3d74:	02112623          	sw	ra,44(sp)
    3d78:	03212023          	sw	s2,32(sp)
    3d7c:	01712623          	sw	s7,12(sp)
    3d80:	7ff9f993          	andi	s3,s3,2047
    3d84:	00050413          	mv	s0,a0
    3d88:	00060b13          	mv	s6,a2
    3d8c:	00068a93          	mv	s5,a3
    3d90:	00c4d493          	srli	s1,s1,0xc
    3d94:	01f5da13          	srli	s4,a1,0x1f
    3d98:	0a098463          	beqz	s3,3e40 <__muldf3+0xf0>
    3d9c:	7ff00793          	li	a5,2047
    3da0:	10f98663          	beq	s3,a5,3eac <__muldf3+0x15c>
    3da4:	01d55793          	srli	a5,a0,0x1d
    3da8:	00349493          	slli	s1,s1,0x3
    3dac:	0097e4b3          	or	s1,a5,s1
    3db0:	008007b7          	lui	a5,0x800
    3db4:	00f4e4b3          	or	s1,s1,a5
    3db8:	00351913          	slli	s2,a0,0x3
    3dbc:	c0198993          	addi	s3,s3,-1023
    3dc0:	00000b93          	li	s7,0
    3dc4:	014ad513          	srli	a0,s5,0x14
    3dc8:	00ca9413          	slli	s0,s5,0xc
    3dcc:	7ff57513          	andi	a0,a0,2047
    3dd0:	00c45413          	srli	s0,s0,0xc
    3dd4:	01fada93          	srli	s5,s5,0x1f
    3dd8:	10050663          	beqz	a0,3ee4 <__muldf3+0x194>
    3ddc:	7ff00793          	li	a5,2047
    3de0:	16f50a63          	beq	a0,a5,3f54 <__muldf3+0x204>
    3de4:	01db5793          	srli	a5,s6,0x1d
    3de8:	00341413          	slli	s0,s0,0x3
    3dec:	0087e433          	or	s0,a5,s0
    3df0:	008007b7          	lui	a5,0x800
    3df4:	00f46433          	or	s0,s0,a5
    3df8:	c0150513          	addi	a0,a0,-1023 # 7fc01 <__fdlib_version+0x79189>
    3dfc:	003b1793          	slli	a5,s6,0x3
    3e00:	00000713          	li	a4,0
    3e04:	002b9693          	slli	a3,s7,0x2
    3e08:	00e6e6b3          	or	a3,a3,a4
    3e0c:	00a98533          	add	a0,s3,a0
    3e10:	fff68693          	addi	a3,a3,-1 # ffff <__fdlib_version+0x9587>
    3e14:	00e00593          	li	a1,14
    3e18:	015a4633          	xor	a2,s4,s5
    3e1c:	00150813          	addi	a6,a0,1
    3e20:	16d5e663          	bltu	a1,a3,3f8c <__muldf3+0x23c>
    3e24:	00003597          	auipc	a1,0x3
    3e28:	a7058593          	addi	a1,a1,-1424 # 6894 <Zero+0x4c>
    3e2c:	00269693          	slli	a3,a3,0x2
    3e30:	00b686b3          	add	a3,a3,a1
    3e34:	0006a683          	lw	a3,0(a3)
    3e38:	00b686b3          	add	a3,a3,a1
    3e3c:	00068067          	jr	a3
    3e40:	00a4e933          	or	s2,s1,a0
    3e44:	08090063          	beqz	s2,3ec4 <__muldf3+0x174>
    3e48:	04048263          	beqz	s1,3e8c <__muldf3+0x13c>
    3e4c:	00048513          	mv	a0,s1
    3e50:	00001097          	auipc	ra,0x1
    3e54:	e14080e7          	jalr	-492(ra) # 4c64 <__clzsi2>
    3e58:	ff550713          	addi	a4,a0,-11
    3e5c:	01c00793          	li	a5,28
    3e60:	02e7ce63          	blt	a5,a4,3e9c <__muldf3+0x14c>
    3e64:	01d00793          	li	a5,29
    3e68:	ff850913          	addi	s2,a0,-8
    3e6c:	40e787b3          	sub	a5,a5,a4
    3e70:	012494b3          	sll	s1,s1,s2
    3e74:	00f457b3          	srl	a5,s0,a5
    3e78:	0097e4b3          	or	s1,a5,s1
    3e7c:	01241933          	sll	s2,s0,s2
    3e80:	c0d00993          	li	s3,-1011
    3e84:	40a989b3          	sub	s3,s3,a0
    3e88:	f39ff06f          	j	3dc0 <__muldf3+0x70>
    3e8c:	00001097          	auipc	ra,0x1
    3e90:	dd8080e7          	jalr	-552(ra) # 4c64 <__clzsi2>
    3e94:	02050513          	addi	a0,a0,32
    3e98:	fc1ff06f          	j	3e58 <__muldf3+0x108>
    3e9c:	fd850493          	addi	s1,a0,-40
    3ea0:	009414b3          	sll	s1,s0,s1
    3ea4:	00000913          	li	s2,0
    3ea8:	fd9ff06f          	j	3e80 <__muldf3+0x130>
    3eac:	00a4e933          	or	s2,s1,a0
    3eb0:	02090263          	beqz	s2,3ed4 <__muldf3+0x184>
    3eb4:	00050913          	mv	s2,a0
    3eb8:	7ff00993          	li	s3,2047
    3ebc:	00300b93          	li	s7,3
    3ec0:	f05ff06f          	j	3dc4 <__muldf3+0x74>
    3ec4:	00000493          	li	s1,0
    3ec8:	00000993          	li	s3,0
    3ecc:	00100b93          	li	s7,1
    3ed0:	ef5ff06f          	j	3dc4 <__muldf3+0x74>
    3ed4:	00000493          	li	s1,0
    3ed8:	7ff00993          	li	s3,2047
    3edc:	00200b93          	li	s7,2
    3ee0:	ee5ff06f          	j	3dc4 <__muldf3+0x74>
    3ee4:	016467b3          	or	a5,s0,s6
    3ee8:	08078263          	beqz	a5,3f6c <__muldf3+0x21c>
    3eec:	04040263          	beqz	s0,3f30 <__muldf3+0x1e0>
    3ef0:	00040513          	mv	a0,s0
    3ef4:	00001097          	auipc	ra,0x1
    3ef8:	d70080e7          	jalr	-656(ra) # 4c64 <__clzsi2>
    3efc:	ff550693          	addi	a3,a0,-11
    3f00:	01c00793          	li	a5,28
    3f04:	04d7c063          	blt	a5,a3,3f44 <__muldf3+0x1f4>
    3f08:	01d00713          	li	a4,29
    3f0c:	ff850793          	addi	a5,a0,-8
    3f10:	40d70733          	sub	a4,a4,a3
    3f14:	00f41433          	sll	s0,s0,a5
    3f18:	00eb5733          	srl	a4,s6,a4
    3f1c:	00876433          	or	s0,a4,s0
    3f20:	00fb17b3          	sll	a5,s6,a5
    3f24:	c0d00713          	li	a4,-1011
    3f28:	40a70533          	sub	a0,a4,a0
    3f2c:	ed5ff06f          	j	3e00 <__muldf3+0xb0>
    3f30:	000b0513          	mv	a0,s6
    3f34:	00001097          	auipc	ra,0x1
    3f38:	d30080e7          	jalr	-720(ra) # 4c64 <__clzsi2>
    3f3c:	02050513          	addi	a0,a0,32
    3f40:	fbdff06f          	j	3efc <__muldf3+0x1ac>
    3f44:	fd850413          	addi	s0,a0,-40
    3f48:	008b1433          	sll	s0,s6,s0
    3f4c:	00000793          	li	a5,0
    3f50:	fd5ff06f          	j	3f24 <__muldf3+0x1d4>
    3f54:	016467b3          	or	a5,s0,s6
    3f58:	02078263          	beqz	a5,3f7c <__muldf3+0x22c>
    3f5c:	000b0793          	mv	a5,s6
    3f60:	7ff00513          	li	a0,2047
    3f64:	00300713          	li	a4,3
    3f68:	e9dff06f          	j	3e04 <__muldf3+0xb4>
    3f6c:	00000413          	li	s0,0
    3f70:	00000513          	li	a0,0
    3f74:	00100713          	li	a4,1
    3f78:	e8dff06f          	j	3e04 <__muldf3+0xb4>
    3f7c:	00000413          	li	s0,0
    3f80:	7ff00513          	li	a0,2047
    3f84:	00200713          	li	a4,2
    3f88:	e7dff06f          	j	3e04 <__muldf3+0xb4>
    3f8c:	00010f37          	lui	t5,0x10
    3f90:	ffff0e93          	addi	t4,t5,-1 # ffff <__fdlib_version+0x9587>
    3f94:	01095713          	srli	a4,s2,0x10
    3f98:	0107d893          	srli	a7,a5,0x10
    3f9c:	01d97933          	and	s2,s2,t4
    3fa0:	01d7f7b3          	and	a5,a5,t4
    3fa4:	032885b3          	mul	a1,a7,s2
    3fa8:	032786b3          	mul	a3,a5,s2
    3fac:	02f70fb3          	mul	t6,a4,a5
    3fb0:	01f58333          	add	t1,a1,t6
    3fb4:	0106d593          	srli	a1,a3,0x10
    3fb8:	006585b3          	add	a1,a1,t1
    3fbc:	03170e33          	mul	t3,a4,a7
    3fc0:	01f5f463          	bgeu	a1,t6,3fc8 <__muldf3+0x278>
    3fc4:	01ee0e33          	add	t3,t3,t5
    3fc8:	0105d393          	srli	t2,a1,0x10
    3fcc:	01d5f5b3          	and	a1,a1,t4
    3fd0:	01d6f6b3          	and	a3,a3,t4
    3fd4:	01045f13          	srli	t5,s0,0x10
    3fd8:	01d472b3          	and	t0,s0,t4
    3fdc:	01059593          	slli	a1,a1,0x10
    3fe0:	00d585b3          	add	a1,a1,a3
    3fe4:	02570eb3          	mul	t4,a4,t0
    3fe8:	032286b3          	mul	a3,t0,s2
    3fec:	032f0933          	mul	s2,t5,s2
    3ff0:	01d90333          	add	t1,s2,t4
    3ff4:	0106d913          	srli	s2,a3,0x10
    3ff8:	00690933          	add	s2,s2,t1
    3ffc:	03e70733          	mul	a4,a4,t5
    4000:	01d97663          	bgeu	s2,t4,400c <__muldf3+0x2bc>
    4004:	00010337          	lui	t1,0x10
    4008:	00670733          	add	a4,a4,t1
    400c:	01095e93          	srli	t4,s2,0x10
    4010:	000109b7          	lui	s3,0x10
    4014:	00ee8eb3          	add	t4,t4,a4
    4018:	fff98713          	addi	a4,s3,-1 # ffff <__fdlib_version+0x9587>
    401c:	00e97933          	and	s2,s2,a4
    4020:	00e6f6b3          	and	a3,a3,a4
    4024:	0104d413          	srli	s0,s1,0x10
    4028:	01091913          	slli	s2,s2,0x10
    402c:	00e4f4b3          	and	s1,s1,a4
    4030:	00d90933          	add	s2,s2,a3
    4034:	02978733          	mul	a4,a5,s1
    4038:	012383b3          	add	t2,t2,s2
    403c:	02f40333          	mul	t1,s0,a5
    4040:	029886b3          	mul	a3,a7,s1
    4044:	028887b3          	mul	a5,a7,s0
    4048:	006688b3          	add	a7,a3,t1
    404c:	01075693          	srli	a3,a4,0x10
    4050:	011686b3          	add	a3,a3,a7
    4054:	0066f463          	bgeu	a3,t1,405c <__muldf3+0x30c>
    4058:	013787b3          	add	a5,a5,s3
    405c:	0106d893          	srli	a7,a3,0x10
    4060:	000109b7          	lui	s3,0x10
    4064:	00f88fb3          	add	t6,a7,a5
    4068:	fff98793          	addi	a5,s3,-1 # ffff <__fdlib_version+0x9587>
    406c:	00f6f6b3          	and	a3,a3,a5
    4070:	00f77733          	and	a4,a4,a5
    4074:	029288b3          	mul	a7,t0,s1
    4078:	01069693          	slli	a3,a3,0x10
    407c:	00e686b3          	add	a3,a3,a4
    4080:	025407b3          	mul	a5,s0,t0
    4084:	029f04b3          	mul	s1,t5,s1
    4088:	028f0333          	mul	t1,t5,s0
    408c:	00f484b3          	add	s1,s1,a5
    4090:	0108d413          	srli	s0,a7,0x10
    4094:	009404b3          	add	s1,s0,s1
    4098:	00f4f463          	bgeu	s1,a5,40a0 <__muldf3+0x350>
    409c:	01330333          	add	t1,t1,s3
    40a0:	000107b7          	lui	a5,0x10
    40a4:	fff78793          	addi	a5,a5,-1 # ffff <__fdlib_version+0x9587>
    40a8:	00f4f733          	and	a4,s1,a5
    40ac:	00f8f8b3          	and	a7,a7,a5
    40b0:	01071713          	slli	a4,a4,0x10
    40b4:	007e0e33          	add	t3,t3,t2
    40b8:	01170733          	add	a4,a4,a7
    40bc:	012e3933          	sltu	s2,t3,s2
    40c0:	01d70733          	add	a4,a4,t4
    40c4:	01270433          	add	s0,a4,s2
    40c8:	00de0e33          	add	t3,t3,a3
    40cc:	00de36b3          	sltu	a3,t3,a3
    40d0:	01f408b3          	add	a7,s0,t6
    40d4:	00d88f33          	add	t5,a7,a3
    40d8:	01d73733          	sltu	a4,a4,t4
    40dc:	01243433          	sltu	s0,s0,s2
    40e0:	00876433          	or	s0,a4,s0
    40e4:	0104d493          	srli	s1,s1,0x10
    40e8:	01f8b8b3          	sltu	a7,a7,t6
    40ec:	00df36b3          	sltu	a3,t5,a3
    40f0:	00940433          	add	s0,s0,s1
    40f4:	00d8e6b3          	or	a3,a7,a3
    40f8:	00d40433          	add	s0,s0,a3
    40fc:	00640433          	add	s0,s0,t1
    4100:	017f5793          	srli	a5,t5,0x17
    4104:	00941413          	slli	s0,s0,0x9
    4108:	00f46433          	or	s0,s0,a5
    410c:	009e1793          	slli	a5,t3,0x9
    4110:	00b7e7b3          	or	a5,a5,a1
    4114:	00f037b3          	snez	a5,a5
    4118:	017e5e13          	srli	t3,t3,0x17
    411c:	009f1713          	slli	a4,t5,0x9
    4120:	01c7e7b3          	or	a5,a5,t3
    4124:	00e7e7b3          	or	a5,a5,a4
    4128:	00741713          	slli	a4,s0,0x7
    412c:	10075263          	bgez	a4,4230 <__muldf3+0x4e0>
    4130:	0017d713          	srli	a4,a5,0x1
    4134:	0017f793          	andi	a5,a5,1
    4138:	00f767b3          	or	a5,a4,a5
    413c:	01f41713          	slli	a4,s0,0x1f
    4140:	00e7e7b3          	or	a5,a5,a4
    4144:	00145413          	srli	s0,s0,0x1
    4148:	3ff80693          	addi	a3,a6,1023
    414c:	0ed05663          	blez	a3,4238 <__muldf3+0x4e8>
    4150:	0077f713          	andi	a4,a5,7
    4154:	02070063          	beqz	a4,4174 <__muldf3+0x424>
    4158:	00f7f713          	andi	a4,a5,15
    415c:	00400593          	li	a1,4
    4160:	00b70a63          	beq	a4,a1,4174 <__muldf3+0x424>
    4164:	00478713          	addi	a4,a5,4
    4168:	00f737b3          	sltu	a5,a4,a5
    416c:	00f40433          	add	s0,s0,a5
    4170:	00070793          	mv	a5,a4
    4174:	00741713          	slli	a4,s0,0x7
    4178:	00075a63          	bgez	a4,418c <__muldf3+0x43c>
    417c:	ff000737          	lui	a4,0xff000
    4180:	fff70713          	addi	a4,a4,-1 # feffffff <IO_BASE+0xfebfffff>
    4184:	00e47433          	and	s0,s0,a4
    4188:	40080693          	addi	a3,a6,1024
    418c:	7fe00713          	li	a4,2046
    4190:	16d74663          	blt	a4,a3,42fc <__muldf3+0x5ac>
    4194:	0037d713          	srli	a4,a5,0x3
    4198:	01d41793          	slli	a5,s0,0x1d
    419c:	00e7e7b3          	or	a5,a5,a4
    41a0:	00345413          	srli	s0,s0,0x3
    41a4:	00c41413          	slli	s0,s0,0xc
    41a8:	7ff6f713          	andi	a4,a3,2047
    41ac:	01471713          	slli	a4,a4,0x14
    41b0:	00c45413          	srli	s0,s0,0xc
    41b4:	00e46433          	or	s0,s0,a4
    41b8:	01f61613          	slli	a2,a2,0x1f
    41bc:	00c46733          	or	a4,s0,a2
    41c0:	02c12083          	lw	ra,44(sp)
    41c4:	02812403          	lw	s0,40(sp)
    41c8:	02412483          	lw	s1,36(sp)
    41cc:	02012903          	lw	s2,32(sp)
    41d0:	01c12983          	lw	s3,28(sp)
    41d4:	01812a03          	lw	s4,24(sp)
    41d8:	01412a83          	lw	s5,20(sp)
    41dc:	01012b03          	lw	s6,16(sp)
    41e0:	00c12b83          	lw	s7,12(sp)
    41e4:	00078513          	mv	a0,a5
    41e8:	00070593          	mv	a1,a4
    41ec:	03010113          	addi	sp,sp,48
    41f0:	00008067          	ret
    41f4:	000a0613          	mv	a2,s4
    41f8:	00048413          	mv	s0,s1
    41fc:	00090793          	mv	a5,s2
    4200:	000b8713          	mv	a4,s7
    4204:	00200693          	li	a3,2
    4208:	0ed70a63          	beq	a4,a3,42fc <__muldf3+0x5ac>
    420c:	00300693          	li	a3,3
    4210:	0cd70c63          	beq	a4,a3,42e8 <__muldf3+0x598>
    4214:	00100693          	li	a3,1
    4218:	f2d718e3          	bne	a4,a3,4148 <__muldf3+0x3f8>
    421c:	00000413          	li	s0,0
    4220:	00000793          	li	a5,0
    4224:	0880006f          	j	42ac <__muldf3+0x55c>
    4228:	000a8613          	mv	a2,s5
    422c:	fd9ff06f          	j	4204 <__muldf3+0x4b4>
    4230:	00050813          	mv	a6,a0
    4234:	f15ff06f          	j	4148 <__muldf3+0x3f8>
    4238:	00100593          	li	a1,1
    423c:	40d585b3          	sub	a1,a1,a3
    4240:	03800713          	li	a4,56
    4244:	fcb74ce3          	blt	a4,a1,421c <__muldf3+0x4cc>
    4248:	01f00713          	li	a4,31
    424c:	06b74463          	blt	a4,a1,42b4 <__muldf3+0x564>
    4250:	41e80813          	addi	a6,a6,1054
    4254:	01041733          	sll	a4,s0,a6
    4258:	00b7d6b3          	srl	a3,a5,a1
    425c:	010797b3          	sll	a5,a5,a6
    4260:	00d76733          	or	a4,a4,a3
    4264:	00f037b3          	snez	a5,a5
    4268:	00f767b3          	or	a5,a4,a5
    426c:	00b45433          	srl	s0,s0,a1
    4270:	0077f713          	andi	a4,a5,7
    4274:	02070063          	beqz	a4,4294 <__muldf3+0x544>
    4278:	00f7f713          	andi	a4,a5,15
    427c:	00400693          	li	a3,4
    4280:	00d70a63          	beq	a4,a3,4294 <__muldf3+0x544>
    4284:	00478713          	addi	a4,a5,4
    4288:	00f737b3          	sltu	a5,a4,a5
    428c:	00f40433          	add	s0,s0,a5
    4290:	00070793          	mv	a5,a4
    4294:	00841713          	slli	a4,s0,0x8
    4298:	06074a63          	bltz	a4,430c <__muldf3+0x5bc>
    429c:	01d41713          	slli	a4,s0,0x1d
    42a0:	0037d793          	srli	a5,a5,0x3
    42a4:	00f767b3          	or	a5,a4,a5
    42a8:	00345413          	srli	s0,s0,0x3
    42ac:	00000693          	li	a3,0
    42b0:	ef5ff06f          	j	41a4 <__muldf3+0x454>
    42b4:	fe100713          	li	a4,-31
    42b8:	40d70733          	sub	a4,a4,a3
    42bc:	02000513          	li	a0,32
    42c0:	00e45733          	srl	a4,s0,a4
    42c4:	00000693          	li	a3,0
    42c8:	00a58663          	beq	a1,a0,42d4 <__muldf3+0x584>
    42cc:	43e80813          	addi	a6,a6,1086
    42d0:	010416b3          	sll	a3,s0,a6
    42d4:	00f6e7b3          	or	a5,a3,a5
    42d8:	00f037b3          	snez	a5,a5
    42dc:	00f767b3          	or	a5,a4,a5
    42e0:	00000413          	li	s0,0
    42e4:	f8dff06f          	j	4270 <__muldf3+0x520>
    42e8:	00080437          	lui	s0,0x80
    42ec:	00000793          	li	a5,0
    42f0:	7ff00693          	li	a3,2047
    42f4:	00000613          	li	a2,0
    42f8:	eadff06f          	j	41a4 <__muldf3+0x454>
    42fc:	00000413          	li	s0,0
    4300:	00000793          	li	a5,0
    4304:	7ff00693          	li	a3,2047
    4308:	e9dff06f          	j	41a4 <__muldf3+0x454>
    430c:	00000413          	li	s0,0
    4310:	00000793          	li	a5,0
    4314:	00100693          	li	a3,1
    4318:	e8dff06f          	j	41a4 <__muldf3+0x454>

0000431c <__subdf3>:
    431c:	00100837          	lui	a6,0x100
    4320:	fff80813          	addi	a6,a6,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    4324:	00b878b3          	and	a7,a6,a1
    4328:	00389893          	slli	a7,a7,0x3
    432c:	01d55793          	srli	a5,a0,0x1d
    4330:	fe010113          	addi	sp,sp,-32
    4334:	0145d713          	srli	a4,a1,0x14
    4338:	00d87833          	and	a6,a6,a3
    433c:	0117e7b3          	or	a5,a5,a7
    4340:	0146d893          	srli	a7,a3,0x14
    4344:	00912a23          	sw	s1,20(sp)
    4348:	01212823          	sw	s2,16(sp)
    434c:	7ff77493          	andi	s1,a4,2047
    4350:	01f5d913          	srli	s2,a1,0x1f
    4354:	01d65713          	srli	a4,a2,0x1d
    4358:	00381813          	slli	a6,a6,0x3
    435c:	00112e23          	sw	ra,28(sp)
    4360:	00812c23          	sw	s0,24(sp)
    4364:	01312623          	sw	s3,12(sp)
    4368:	7ff8f893          	andi	a7,a7,2047
    436c:	7ff00593          	li	a1,2047
    4370:	00351513          	slli	a0,a0,0x3
    4374:	01f6d693          	srli	a3,a3,0x1f
    4378:	01076733          	or	a4,a4,a6
    437c:	00361613          	slli	a2,a2,0x3
    4380:	00b89663          	bne	a7,a1,438c <__subdf3+0x70>
    4384:	00c765b3          	or	a1,a4,a2
    4388:	00059463          	bnez	a1,4390 <__subdf3+0x74>
    438c:	0016c693          	xori	a3,a3,1
    4390:	41148833          	sub	a6,s1,a7
    4394:	2d269063          	bne	a3,s2,4654 <__subdf3+0x338>
    4398:	13005c63          	blez	a6,44d0 <__subdf3+0x1b4>
    439c:	06089063          	bnez	a7,43fc <__subdf3+0xe0>
    43a0:	00c766b3          	or	a3,a4,a2
    43a4:	02068863          	beqz	a3,43d4 <__subdf3+0xb8>
    43a8:	fff48813          	addi	a6,s1,-1 # 7ffff <__fdlib_version+0x79587>
    43ac:	02081063          	bnez	a6,43cc <__subdf3+0xb0>
    43b0:	00c50633          	add	a2,a0,a2
    43b4:	00a63533          	sltu	a0,a2,a0
    43b8:	00e787b3          	add	a5,a5,a4
    43bc:	00a787b3          	add	a5,a5,a0
    43c0:	00060513          	mv	a0,a2
    43c4:	00100493          	li	s1,1
    43c8:	08c0006f          	j	4454 <__subdf3+0x138>
    43cc:	7ff00693          	li	a3,2047
    43d0:	02d49e63          	bne	s1,a3,440c <__subdf3+0xf0>
    43d4:	00757713          	andi	a4,a0,7
    43d8:	64070063          	beqz	a4,4a18 <__subdf3+0x6fc>
    43dc:	00f57713          	andi	a4,a0,15
    43e0:	00400693          	li	a3,4
    43e4:	62d70a63          	beq	a4,a3,4a18 <__subdf3+0x6fc>
    43e8:	00450693          	addi	a3,a0,4
    43ec:	00a6b533          	sltu	a0,a3,a0
    43f0:	00a787b3          	add	a5,a5,a0
    43f4:	00068513          	mv	a0,a3
    43f8:	6200006f          	j	4a18 <__subdf3+0x6fc>
    43fc:	7ff00693          	li	a3,2047
    4400:	fcd48ae3          	beq	s1,a3,43d4 <__subdf3+0xb8>
    4404:	008006b7          	lui	a3,0x800
    4408:	00d76733          	or	a4,a4,a3
    440c:	03800693          	li	a3,56
    4410:	0b06ca63          	blt	a3,a6,44c4 <__subdf3+0x1a8>
    4414:	01f00693          	li	a3,31
    4418:	0706cc63          	blt	a3,a6,4490 <__subdf3+0x174>
    441c:	02000593          	li	a1,32
    4420:	410585b3          	sub	a1,a1,a6
    4424:	00b716b3          	sll	a3,a4,a1
    4428:	010658b3          	srl	a7,a2,a6
    442c:	00b61633          	sll	a2,a2,a1
    4430:	0116e6b3          	or	a3,a3,a7
    4434:	00c03633          	snez	a2,a2
    4438:	00c6e633          	or	a2,a3,a2
    443c:	01075733          	srl	a4,a4,a6
    4440:	00a60633          	add	a2,a2,a0
    4444:	00f70733          	add	a4,a4,a5
    4448:	00a637b3          	sltu	a5,a2,a0
    444c:	00f707b3          	add	a5,a4,a5
    4450:	00060513          	mv	a0,a2
    4454:	00879713          	slli	a4,a5,0x8
    4458:	f6075ee3          	bgez	a4,43d4 <__subdf3+0xb8>
    445c:	00148493          	addi	s1,s1,1
    4460:	7ff00713          	li	a4,2047
    4464:	5ae48663          	beq	s1,a4,4a10 <__subdf3+0x6f4>
    4468:	ff8006b7          	lui	a3,0xff800
    446c:	fff68693          	addi	a3,a3,-1 # ff7fffff <IO_BASE+0xff3fffff>
    4470:	00d7f6b3          	and	a3,a5,a3
    4474:	00155593          	srli	a1,a0,0x1
    4478:	00157513          	andi	a0,a0,1
    447c:	01f69793          	slli	a5,a3,0x1f
    4480:	00a5e533          	or	a0,a1,a0
    4484:	00a7e533          	or	a0,a5,a0
    4488:	0016d793          	srli	a5,a3,0x1
    448c:	f49ff06f          	j	43d4 <__subdf3+0xb8>
    4490:	fe080693          	addi	a3,a6,-32
    4494:	02000893          	li	a7,32
    4498:	00d756b3          	srl	a3,a4,a3
    449c:	00000593          	li	a1,0
    44a0:	01180863          	beq	a6,a7,44b0 <__subdf3+0x194>
    44a4:	04000593          	li	a1,64
    44a8:	41058833          	sub	a6,a1,a6
    44ac:	010715b3          	sll	a1,a4,a6
    44b0:	00c5e633          	or	a2,a1,a2
    44b4:	00c03633          	snez	a2,a2
    44b8:	00c6e633          	or	a2,a3,a2
    44bc:	00000713          	li	a4,0
    44c0:	f81ff06f          	j	4440 <__subdf3+0x124>
    44c4:	00c76633          	or	a2,a4,a2
    44c8:	00c03633          	snez	a2,a2
    44cc:	ff1ff06f          	j	44bc <__subdf3+0x1a0>
    44d0:	0e080263          	beqz	a6,45b4 <__subdf3+0x298>
    44d4:	409885b3          	sub	a1,a7,s1
    44d8:	02049e63          	bnez	s1,4514 <__subdf3+0x1f8>
    44dc:	00a7e6b3          	or	a3,a5,a0
    44e0:	50068863          	beqz	a3,49f0 <__subdf3+0x6d4>
    44e4:	fff58693          	addi	a3,a1,-1
    44e8:	00069c63          	bnez	a3,4500 <__subdf3+0x1e4>
    44ec:	00c50533          	add	a0,a0,a2
    44f0:	00e787b3          	add	a5,a5,a4
    44f4:	00c53633          	sltu	a2,a0,a2
    44f8:	00c787b3          	add	a5,a5,a2
    44fc:	ec9ff06f          	j	43c4 <__subdf3+0xa8>
    4500:	7ff00813          	li	a6,2047
    4504:	03059263          	bne	a1,a6,4528 <__subdf3+0x20c>
    4508:	00070793          	mv	a5,a4
    450c:	00060513          	mv	a0,a2
    4510:	3b00006f          	j	48c0 <__subdf3+0x5a4>
    4514:	7ff00693          	li	a3,2047
    4518:	fed888e3          	beq	a7,a3,4508 <__subdf3+0x1ec>
    451c:	008006b7          	lui	a3,0x800
    4520:	00d7e7b3          	or	a5,a5,a3
    4524:	00058693          	mv	a3,a1
    4528:	03800593          	li	a1,56
    452c:	06d5ce63          	blt	a1,a3,45a8 <__subdf3+0x28c>
    4530:	01f00593          	li	a1,31
    4534:	04d5c063          	blt	a1,a3,4574 <__subdf3+0x258>
    4538:	02000813          	li	a6,32
    453c:	40d80833          	sub	a6,a6,a3
    4540:	00d55333          	srl	t1,a0,a3
    4544:	010795b3          	sll	a1,a5,a6
    4548:	01051533          	sll	a0,a0,a6
    454c:	0065e5b3          	or	a1,a1,t1
    4550:	00a03533          	snez	a0,a0
    4554:	00a5e533          	or	a0,a1,a0
    4558:	00d7d6b3          	srl	a3,a5,a3
    455c:	00c50533          	add	a0,a0,a2
    4560:	00e687b3          	add	a5,a3,a4
    4564:	00c53633          	sltu	a2,a0,a2
    4568:	00c787b3          	add	a5,a5,a2
    456c:	00088493          	mv	s1,a7
    4570:	ee5ff06f          	j	4454 <__subdf3+0x138>
    4574:	fe068593          	addi	a1,a3,-32 # 7fffe0 <IO_BASE+0x3fffe0>
    4578:	02000313          	li	t1,32
    457c:	00b7d5b3          	srl	a1,a5,a1
    4580:	00000813          	li	a6,0
    4584:	00668863          	beq	a3,t1,4594 <__subdf3+0x278>
    4588:	04000813          	li	a6,64
    458c:	40d806b3          	sub	a3,a6,a3
    4590:	00d79833          	sll	a6,a5,a3
    4594:	00a86533          	or	a0,a6,a0
    4598:	00a03533          	snez	a0,a0
    459c:	00a5e533          	or	a0,a1,a0
    45a0:	00000693          	li	a3,0
    45a4:	fb9ff06f          	j	455c <__subdf3+0x240>
    45a8:	00a7e533          	or	a0,a5,a0
    45ac:	00a03533          	snez	a0,a0
    45b0:	ff1ff06f          	j	45a0 <__subdf3+0x284>
    45b4:	00148693          	addi	a3,s1,1
    45b8:	7fe6f593          	andi	a1,a3,2046
    45bc:	06059463          	bnez	a1,4624 <__subdf3+0x308>
    45c0:	00a7e6b3          	or	a3,a5,a0
    45c4:	04049063          	bnez	s1,4604 <__subdf3+0x2e8>
    45c8:	42068c63          	beqz	a3,4a00 <__subdf3+0x6e4>
    45cc:	00c766b3          	or	a3,a4,a2
    45d0:	e00682e3          	beqz	a3,43d4 <__subdf3+0xb8>
    45d4:	00c50633          	add	a2,a0,a2
    45d8:	00e787b3          	add	a5,a5,a4
    45dc:	00a63533          	sltu	a0,a2,a0
    45e0:	00a787b3          	add	a5,a5,a0
    45e4:	00879713          	slli	a4,a5,0x8
    45e8:	00060513          	mv	a0,a2
    45ec:	de0754e3          	bgez	a4,43d4 <__subdf3+0xb8>
    45f0:	ff800737          	lui	a4,0xff800
    45f4:	fff70713          	addi	a4,a4,-1 # ff7fffff <IO_BASE+0xff3fffff>
    45f8:	00e7f7b3          	and	a5,a5,a4
    45fc:	00100493          	li	s1,1
    4600:	dd5ff06f          	j	43d4 <__subdf3+0xb8>
    4604:	f00682e3          	beqz	a3,4508 <__subdf3+0x1ec>
    4608:	00c76633          	or	a2,a4,a2
    460c:	2a060a63          	beqz	a2,48c0 <__subdf3+0x5a4>
    4610:	00000913          	li	s2,0
    4614:	004007b7          	lui	a5,0x400
    4618:	00000513          	li	a0,0
    461c:	7ff00493          	li	s1,2047
    4620:	3f80006f          	j	4a18 <__subdf3+0x6fc>
    4624:	7ff00593          	li	a1,2047
    4628:	3eb68263          	beq	a3,a1,4a0c <__subdf3+0x6f0>
    462c:	00c50633          	add	a2,a0,a2
    4630:	00e78733          	add	a4,a5,a4
    4634:	00a637b3          	sltu	a5,a2,a0
    4638:	00f70733          	add	a4,a4,a5
    463c:	01f71513          	slli	a0,a4,0x1f
    4640:	00165613          	srli	a2,a2,0x1
    4644:	00c56533          	or	a0,a0,a2
    4648:	00175793          	srli	a5,a4,0x1
    464c:	00068493          	mv	s1,a3
    4650:	d85ff06f          	j	43d4 <__subdf3+0xb8>
    4654:	0f005a63          	blez	a6,4748 <__subdf3+0x42c>
    4658:	08089e63          	bnez	a7,46f4 <__subdf3+0x3d8>
    465c:	00c766b3          	or	a3,a4,a2
    4660:	d6068ae3          	beqz	a3,43d4 <__subdf3+0xb8>
    4664:	fff48813          	addi	a6,s1,-1
    4668:	02081063          	bnez	a6,4688 <__subdf3+0x36c>
    466c:	40c50633          	sub	a2,a0,a2
    4670:	00c53533          	sltu	a0,a0,a2
    4674:	40e787b3          	sub	a5,a5,a4
    4678:	40a787b3          	sub	a5,a5,a0
    467c:	00060513          	mv	a0,a2
    4680:	00100493          	li	s1,1
    4684:	0540006f          	j	46d8 <__subdf3+0x3bc>
    4688:	7ff00693          	li	a3,2047
    468c:	d4d484e3          	beq	s1,a3,43d4 <__subdf3+0xb8>
    4690:	03800693          	li	a3,56
    4694:	0b06c463          	blt	a3,a6,473c <__subdf3+0x420>
    4698:	01f00693          	li	a3,31
    469c:	0706c663          	blt	a3,a6,4708 <__subdf3+0x3ec>
    46a0:	02000593          	li	a1,32
    46a4:	410585b3          	sub	a1,a1,a6
    46a8:	00b716b3          	sll	a3,a4,a1
    46ac:	010658b3          	srl	a7,a2,a6
    46b0:	00b61633          	sll	a2,a2,a1
    46b4:	0116e6b3          	or	a3,a3,a7
    46b8:	00c03633          	snez	a2,a2
    46bc:	00c6e633          	or	a2,a3,a2
    46c0:	01075733          	srl	a4,a4,a6
    46c4:	40c50633          	sub	a2,a0,a2
    46c8:	40e78733          	sub	a4,a5,a4
    46cc:	00c537b3          	sltu	a5,a0,a2
    46d0:	40f707b3          	sub	a5,a4,a5
    46d4:	00060513          	mv	a0,a2
    46d8:	00879713          	slli	a4,a5,0x8
    46dc:	ce075ce3          	bgez	a4,43d4 <__subdf3+0xb8>
    46e0:	00800437          	lui	s0,0x800
    46e4:	fff40413          	addi	s0,s0,-1 # 7fffff <IO_BASE+0x3fffff>
    46e8:	0087f433          	and	s0,a5,s0
    46ec:	00050993          	mv	s3,a0
    46f0:	20c0006f          	j	48fc <__subdf3+0x5e0>
    46f4:	7ff00693          	li	a3,2047
    46f8:	ccd48ee3          	beq	s1,a3,43d4 <__subdf3+0xb8>
    46fc:	008006b7          	lui	a3,0x800
    4700:	00d76733          	or	a4,a4,a3
    4704:	f8dff06f          	j	4690 <__subdf3+0x374>
    4708:	fe080693          	addi	a3,a6,-32
    470c:	02000893          	li	a7,32
    4710:	00d756b3          	srl	a3,a4,a3
    4714:	00000593          	li	a1,0
    4718:	01180863          	beq	a6,a7,4728 <__subdf3+0x40c>
    471c:	04000593          	li	a1,64
    4720:	41058833          	sub	a6,a1,a6
    4724:	010715b3          	sll	a1,a4,a6
    4728:	00c5e633          	or	a2,a1,a2
    472c:	00c03633          	snez	a2,a2
    4730:	00c6e633          	or	a2,a3,a2
    4734:	00000713          	li	a4,0
    4738:	f8dff06f          	j	46c4 <__subdf3+0x3a8>
    473c:	00c76633          	or	a2,a4,a2
    4740:	00c03633          	snez	a2,a2
    4744:	ff1ff06f          	j	4734 <__subdf3+0x418>
    4748:	0e080863          	beqz	a6,4838 <__subdf3+0x51c>
    474c:	40988833          	sub	a6,a7,s1
    4750:	04049263          	bnez	s1,4794 <__subdf3+0x478>
    4754:	00a7e5b3          	or	a1,a5,a0
    4758:	34058663          	beqz	a1,4aa4 <__subdf3+0x788>
    475c:	fff80593          	addi	a1,a6,-1
    4760:	00059e63          	bnez	a1,477c <__subdf3+0x460>
    4764:	40a60533          	sub	a0,a2,a0
    4768:	40f707b3          	sub	a5,a4,a5
    476c:	00a63633          	sltu	a2,a2,a0
    4770:	40c787b3          	sub	a5,a5,a2
    4774:	00068913          	mv	s2,a3
    4778:	f09ff06f          	j	4680 <__subdf3+0x364>
    477c:	7ff00313          	li	t1,2047
    4780:	02681463          	bne	a6,t1,47a8 <__subdf3+0x48c>
    4784:	00070793          	mv	a5,a4
    4788:	00060513          	mv	a0,a2
    478c:	7ff00493          	li	s1,2047
    4790:	0d00006f          	j	4860 <__subdf3+0x544>
    4794:	7ff00593          	li	a1,2047
    4798:	feb886e3          	beq	a7,a1,4784 <__subdf3+0x468>
    479c:	008005b7          	lui	a1,0x800
    47a0:	00b7e7b3          	or	a5,a5,a1
    47a4:	00080593          	mv	a1,a6
    47a8:	03800813          	li	a6,56
    47ac:	08b84063          	blt	a6,a1,482c <__subdf3+0x510>
    47b0:	01f00813          	li	a6,31
    47b4:	04b84263          	blt	a6,a1,47f8 <__subdf3+0x4dc>
    47b8:	02000313          	li	t1,32
    47bc:	40b30333          	sub	t1,t1,a1
    47c0:	00b55e33          	srl	t3,a0,a1
    47c4:	00679833          	sll	a6,a5,t1
    47c8:	00651533          	sll	a0,a0,t1
    47cc:	01c86833          	or	a6,a6,t3
    47d0:	00a03533          	snez	a0,a0
    47d4:	00a86533          	or	a0,a6,a0
    47d8:	00b7d5b3          	srl	a1,a5,a1
    47dc:	40a60533          	sub	a0,a2,a0
    47e0:	40b707b3          	sub	a5,a4,a1
    47e4:	00a63633          	sltu	a2,a2,a0
    47e8:	40c787b3          	sub	a5,a5,a2
    47ec:	00088493          	mv	s1,a7
    47f0:	00068913          	mv	s2,a3
    47f4:	ee5ff06f          	j	46d8 <__subdf3+0x3bc>
    47f8:	fe058813          	addi	a6,a1,-32 # 7fffe0 <IO_BASE+0x3fffe0>
    47fc:	02000e13          	li	t3,32
    4800:	0107d833          	srl	a6,a5,a6
    4804:	00000313          	li	t1,0
    4808:	01c58863          	beq	a1,t3,4818 <__subdf3+0x4fc>
    480c:	04000313          	li	t1,64
    4810:	40b305b3          	sub	a1,t1,a1
    4814:	00b79333          	sll	t1,a5,a1
    4818:	00a36533          	or	a0,t1,a0
    481c:	00a03533          	snez	a0,a0
    4820:	00a86533          	or	a0,a6,a0
    4824:	00000593          	li	a1,0
    4828:	fb5ff06f          	j	47dc <__subdf3+0x4c0>
    482c:	00a7e533          	or	a0,a5,a0
    4830:	00a03533          	snez	a0,a0
    4834:	ff1ff06f          	j	4824 <__subdf3+0x508>
    4838:	00148593          	addi	a1,s1,1
    483c:	7fe5f593          	andi	a1,a1,2046
    4840:	08059863          	bnez	a1,48d0 <__subdf3+0x5b4>
    4844:	00a7e833          	or	a6,a5,a0
    4848:	00c765b3          	or	a1,a4,a2
    484c:	06049063          	bnez	s1,48ac <__subdf3+0x590>
    4850:	00081c63          	bnez	a6,4868 <__subdf3+0x54c>
    4854:	26058063          	beqz	a1,4ab4 <__subdf3+0x798>
    4858:	00070793          	mv	a5,a4
    485c:	00060513          	mv	a0,a2
    4860:	00068913          	mv	s2,a3
    4864:	b71ff06f          	j	43d4 <__subdf3+0xb8>
    4868:	b60586e3          	beqz	a1,43d4 <__subdf3+0xb8>
    486c:	40c50833          	sub	a6,a0,a2
    4870:	010538b3          	sltu	a7,a0,a6
    4874:	40e785b3          	sub	a1,a5,a4
    4878:	411585b3          	sub	a1,a1,a7
    487c:	00859893          	slli	a7,a1,0x8
    4880:	0008dc63          	bgez	a7,4898 <__subdf3+0x57c>
    4884:	40a60533          	sub	a0,a2,a0
    4888:	40f707b3          	sub	a5,a4,a5
    488c:	00a63633          	sltu	a2,a2,a0
    4890:	40c787b3          	sub	a5,a5,a2
    4894:	fcdff06f          	j	4860 <__subdf3+0x544>
    4898:	00b86533          	or	a0,a6,a1
    489c:	22050463          	beqz	a0,4ac4 <__subdf3+0x7a8>
    48a0:	00058793          	mv	a5,a1
    48a4:	00080513          	mv	a0,a6
    48a8:	b2dff06f          	j	43d4 <__subdf3+0xb8>
    48ac:	00081e63          	bnez	a6,48c8 <__subdf3+0x5ac>
    48b0:	20058e63          	beqz	a1,4acc <__subdf3+0x7b0>
    48b4:	00070793          	mv	a5,a4
    48b8:	00060513          	mv	a0,a2
    48bc:	00068913          	mv	s2,a3
    48c0:	7ff00493          	li	s1,2047
    48c4:	b11ff06f          	j	43d4 <__subdf3+0xb8>
    48c8:	fe058ce3          	beqz	a1,48c0 <__subdf3+0x5a4>
    48cc:	d45ff06f          	j	4610 <__subdf3+0x2f4>
    48d0:	40c509b3          	sub	s3,a0,a2
    48d4:	013535b3          	sltu	a1,a0,s3
    48d8:	40e78433          	sub	s0,a5,a4
    48dc:	40b40433          	sub	s0,s0,a1
    48e0:	00841593          	slli	a1,s0,0x8
    48e4:	0805d663          	bgez	a1,4970 <__subdf3+0x654>
    48e8:	40a609b3          	sub	s3,a2,a0
    48ec:	40f707b3          	sub	a5,a4,a5
    48f0:	01363633          	sltu	a2,a2,s3
    48f4:	40c78433          	sub	s0,a5,a2
    48f8:	00068913          	mv	s2,a3
    48fc:	08040463          	beqz	s0,4984 <__subdf3+0x668>
    4900:	00040513          	mv	a0,s0
    4904:	00000097          	auipc	ra,0x0
    4908:	360080e7          	jalr	864(ra) # 4c64 <__clzsi2>
    490c:	ff850713          	addi	a4,a0,-8
    4910:	01f00793          	li	a5,31
    4914:	08e7c263          	blt	a5,a4,4998 <__subdf3+0x67c>
    4918:	02000793          	li	a5,32
    491c:	40e787b3          	sub	a5,a5,a4
    4920:	00e41433          	sll	s0,s0,a4
    4924:	00f9d7b3          	srl	a5,s3,a5
    4928:	0087e433          	or	s0,a5,s0
    492c:	00e99533          	sll	a0,s3,a4
    4930:	0a974663          	blt	a4,s1,49dc <__subdf3+0x6c0>
    4934:	40970733          	sub	a4,a4,s1
    4938:	00170793          	addi	a5,a4,1
    493c:	01f00693          	li	a3,31
    4940:	06f6c463          	blt	a3,a5,49a8 <__subdf3+0x68c>
    4944:	02000713          	li	a4,32
    4948:	40f70733          	sub	a4,a4,a5
    494c:	00f55633          	srl	a2,a0,a5
    4950:	00e416b3          	sll	a3,s0,a4
    4954:	00e51533          	sll	a0,a0,a4
    4958:	00c6e6b3          	or	a3,a3,a2
    495c:	00a03533          	snez	a0,a0
    4960:	00a6e533          	or	a0,a3,a0
    4964:	00f457b3          	srl	a5,s0,a5
    4968:	00000493          	li	s1,0
    496c:	a69ff06f          	j	43d4 <__subdf3+0xb8>
    4970:	0089e533          	or	a0,s3,s0
    4974:	f80514e3          	bnez	a0,48fc <__subdf3+0x5e0>
    4978:	00000793          	li	a5,0
    497c:	00000493          	li	s1,0
    4980:	13c0006f          	j	4abc <__subdf3+0x7a0>
    4984:	00098513          	mv	a0,s3
    4988:	00000097          	auipc	ra,0x0
    498c:	2dc080e7          	jalr	732(ra) # 4c64 <__clzsi2>
    4990:	02050513          	addi	a0,a0,32
    4994:	f79ff06f          	j	490c <__subdf3+0x5f0>
    4998:	fd850413          	addi	s0,a0,-40
    499c:	00899433          	sll	s0,s3,s0
    49a0:	00000513          	li	a0,0
    49a4:	f8dff06f          	j	4930 <__subdf3+0x614>
    49a8:	fe170713          	addi	a4,a4,-31
    49ac:	02000613          	li	a2,32
    49b0:	00e45733          	srl	a4,s0,a4
    49b4:	00000693          	li	a3,0
    49b8:	00c78863          	beq	a5,a2,49c8 <__subdf3+0x6ac>
    49bc:	04000693          	li	a3,64
    49c0:	40f686b3          	sub	a3,a3,a5
    49c4:	00d416b3          	sll	a3,s0,a3
    49c8:	00d56533          	or	a0,a0,a3
    49cc:	00a03533          	snez	a0,a0
    49d0:	00a76533          	or	a0,a4,a0
    49d4:	00000793          	li	a5,0
    49d8:	f91ff06f          	j	4968 <__subdf3+0x64c>
    49dc:	ff8007b7          	lui	a5,0xff800
    49e0:	fff78793          	addi	a5,a5,-1 # ff7fffff <IO_BASE+0xff3fffff>
    49e4:	40e484b3          	sub	s1,s1,a4
    49e8:	00f477b3          	and	a5,s0,a5
    49ec:	9e9ff06f          	j	43d4 <__subdf3+0xb8>
    49f0:	00070793          	mv	a5,a4
    49f4:	00060513          	mv	a0,a2
    49f8:	00058493          	mv	s1,a1
    49fc:	9d9ff06f          	j	43d4 <__subdf3+0xb8>
    4a00:	00070793          	mv	a5,a4
    4a04:	00060513          	mv	a0,a2
    4a08:	9cdff06f          	j	43d4 <__subdf3+0xb8>
    4a0c:	7ff00493          	li	s1,2047
    4a10:	00000793          	li	a5,0
    4a14:	00000513          	li	a0,0
    4a18:	00879713          	slli	a4,a5,0x8
    4a1c:	00075e63          	bgez	a4,4a38 <__subdf3+0x71c>
    4a20:	00148493          	addi	s1,s1,1
    4a24:	7ff00713          	li	a4,2047
    4a28:	0ae48a63          	beq	s1,a4,4adc <__subdf3+0x7c0>
    4a2c:	ff800737          	lui	a4,0xff800
    4a30:	fff70713          	addi	a4,a4,-1 # ff7fffff <IO_BASE+0xff3fffff>
    4a34:	00e7f7b3          	and	a5,a5,a4
    4a38:	01d79713          	slli	a4,a5,0x1d
    4a3c:	00355513          	srli	a0,a0,0x3
    4a40:	00a76533          	or	a0,a4,a0
    4a44:	7ff00713          	li	a4,2047
    4a48:	0037d793          	srli	a5,a5,0x3
    4a4c:	00e49e63          	bne	s1,a4,4a68 <__subdf3+0x74c>
    4a50:	00f56533          	or	a0,a0,a5
    4a54:	00000793          	li	a5,0
    4a58:	00050863          	beqz	a0,4a68 <__subdf3+0x74c>
    4a5c:	000807b7          	lui	a5,0x80
    4a60:	00000513          	li	a0,0
    4a64:	00000913          	li	s2,0
    4a68:	7ff4f713          	andi	a4,s1,2047
    4a6c:	00c79793          	slli	a5,a5,0xc
    4a70:	01471713          	slli	a4,a4,0x14
    4a74:	01c12083          	lw	ra,28(sp)
    4a78:	01812403          	lw	s0,24(sp)
    4a7c:	00c7d793          	srli	a5,a5,0xc
    4a80:	01f91593          	slli	a1,s2,0x1f
    4a84:	00e7e7b3          	or	a5,a5,a4
    4a88:	00b7e733          	or	a4,a5,a1
    4a8c:	01412483          	lw	s1,20(sp)
    4a90:	01012903          	lw	s2,16(sp)
    4a94:	00c12983          	lw	s3,12(sp)
    4a98:	00070593          	mv	a1,a4
    4a9c:	02010113          	addi	sp,sp,32
    4aa0:	00008067          	ret
    4aa4:	00070793          	mv	a5,a4
    4aa8:	00060513          	mv	a0,a2
    4aac:	00080493          	mv	s1,a6
    4ab0:	db1ff06f          	j	4860 <__subdf3+0x544>
    4ab4:	00000793          	li	a5,0
    4ab8:	00000513          	li	a0,0
    4abc:	00000913          	li	s2,0
    4ac0:	f59ff06f          	j	4a18 <__subdf3+0x6fc>
    4ac4:	00000793          	li	a5,0
    4ac8:	ff5ff06f          	j	4abc <__subdf3+0x7a0>
    4acc:	00000513          	li	a0,0
    4ad0:	00000913          	li	s2,0
    4ad4:	004007b7          	lui	a5,0x400
    4ad8:	b45ff06f          	j	461c <__subdf3+0x300>
    4adc:	00000793          	li	a5,0
    4ae0:	00000513          	li	a0,0
    4ae4:	f55ff06f          	j	4a38 <__subdf3+0x71c>

00004ae8 <__unorddf2>:
    4ae8:	001007b7          	lui	a5,0x100
    4aec:	fff78793          	addi	a5,a5,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    4af0:	00b7f733          	and	a4,a5,a1
    4af4:	0145d593          	srli	a1,a1,0x14
    4af8:	fff5c593          	not	a1,a1
    4afc:	00d7f7b3          	and	a5,a5,a3
    4b00:	01559813          	slli	a6,a1,0x15
    4b04:	0146d693          	srli	a3,a3,0x14
    4b08:	7ff6f693          	andi	a3,a3,2047
    4b0c:	00081863          	bnez	a6,4b1c <__unorddf2+0x34>
    4b10:	00a76733          	or	a4,a4,a0
    4b14:	00100513          	li	a0,1
    4b18:	00071c63          	bnez	a4,4b30 <__unorddf2+0x48>
    4b1c:	7ff00713          	li	a4,2047
    4b20:	00000513          	li	a0,0
    4b24:	00e69663          	bne	a3,a4,4b30 <__unorddf2+0x48>
    4b28:	00c7e7b3          	or	a5,a5,a2
    4b2c:	00f03533          	snez	a0,a5
    4b30:	00008067          	ret

00004b34 <__fixdfsi>:
    4b34:	0145d713          	srli	a4,a1,0x14
    4b38:	001006b7          	lui	a3,0x100
    4b3c:	fff68793          	addi	a5,a3,-1 # fffff <IO_HW_CONFIG_RAM+0x7ffff>
    4b40:	7ff77713          	andi	a4,a4,2047
    4b44:	3fe00613          	li	a2,1022
    4b48:	00b7f7b3          	and	a5,a5,a1
    4b4c:	01f5d593          	srli	a1,a1,0x1f
    4b50:	04e65e63          	bge	a2,a4,4bac <__fixdfsi+0x78>
    4b54:	41d00613          	li	a2,1053
    4b58:	00e65a63          	bge	a2,a4,4b6c <__fixdfsi+0x38>
    4b5c:	80000537          	lui	a0,0x80000
    4b60:	fff54513          	not	a0,a0
    4b64:	00a58533          	add	a0,a1,a0
    4b68:	00008067          	ret
    4b6c:	00d7e7b3          	or	a5,a5,a3
    4b70:	43300693          	li	a3,1075
    4b74:	40e686b3          	sub	a3,a3,a4
    4b78:	01f00613          	li	a2,31
    4b7c:	02d64063          	blt	a2,a3,4b9c <__fixdfsi+0x68>
    4b80:	bed70713          	addi	a4,a4,-1043
    4b84:	00e797b3          	sll	a5,a5,a4
    4b88:	00d55533          	srl	a0,a0,a3
    4b8c:	00a7e533          	or	a0,a5,a0
    4b90:	02058063          	beqz	a1,4bb0 <__fixdfsi+0x7c>
    4b94:	40a00533          	neg	a0,a0
    4b98:	00008067          	ret
    4b9c:	41300513          	li	a0,1043
    4ba0:	40e50533          	sub	a0,a0,a4
    4ba4:	00a7d533          	srl	a0,a5,a0
    4ba8:	fe9ff06f          	j	4b90 <__fixdfsi+0x5c>
    4bac:	00000513          	li	a0,0
    4bb0:	00008067          	ret

00004bb4 <__floatsidf>:
    4bb4:	ff010113          	addi	sp,sp,-16
    4bb8:	00112623          	sw	ra,12(sp)
    4bbc:	00812423          	sw	s0,8(sp)
    4bc0:	00912223          	sw	s1,4(sp)
    4bc4:	08050a63          	beqz	a0,4c58 <__floatsidf+0xa4>
    4bc8:	41f55793          	srai	a5,a0,0x1f
    4bcc:	00a7c433          	xor	s0,a5,a0
    4bd0:	40f40433          	sub	s0,s0,a5
    4bd4:	01f55493          	srli	s1,a0,0x1f
    4bd8:	00040513          	mv	a0,s0
    4bdc:	00000097          	auipc	ra,0x0
    4be0:	088080e7          	jalr	136(ra) # 4c64 <__clzsi2>
    4be4:	41e00713          	li	a4,1054
    4be8:	00a00793          	li	a5,10
    4bec:	40a70733          	sub	a4,a4,a0
    4bf0:	04a7ca63          	blt	a5,a0,4c44 <__floatsidf+0x90>
    4bf4:	00b00793          	li	a5,11
    4bf8:	40a787b3          	sub	a5,a5,a0
    4bfc:	01550513          	addi	a0,a0,21 # 80000015 <IO_BASE+0x7fc00015>
    4c00:	00f457b3          	srl	a5,s0,a5
    4c04:	00a41433          	sll	s0,s0,a0
    4c08:	00048513          	mv	a0,s1
    4c0c:	00c79793          	slli	a5,a5,0xc
    4c10:	7ff77713          	andi	a4,a4,2047
    4c14:	01471713          	slli	a4,a4,0x14
    4c18:	00c7d793          	srli	a5,a5,0xc
    4c1c:	01f51513          	slli	a0,a0,0x1f
    4c20:	00e7e7b3          	or	a5,a5,a4
    4c24:	00a7e733          	or	a4,a5,a0
    4c28:	00c12083          	lw	ra,12(sp)
    4c2c:	00040513          	mv	a0,s0
    4c30:	00812403          	lw	s0,8(sp)
    4c34:	00412483          	lw	s1,4(sp)
    4c38:	00070593          	mv	a1,a4
    4c3c:	01010113          	addi	sp,sp,16
    4c40:	00008067          	ret
    4c44:	ff550513          	addi	a0,a0,-11
    4c48:	00a417b3          	sll	a5,s0,a0
    4c4c:	00048513          	mv	a0,s1
    4c50:	00000413          	li	s0,0
    4c54:	fb9ff06f          	j	4c0c <__floatsidf+0x58>
    4c58:	00000713          	li	a4,0
    4c5c:	00000793          	li	a5,0
    4c60:	ff1ff06f          	j	4c50 <__floatsidf+0x9c>

00004c64 <__clzsi2>:
    4c64:	000107b7          	lui	a5,0x10
    4c68:	02f57a63          	bgeu	a0,a5,4c9c <__clzsi2+0x38>
    4c6c:	0ff00793          	li	a5,255
    4c70:	00a7b7b3          	sltu	a5,a5,a0
    4c74:	00379793          	slli	a5,a5,0x3
    4c78:	02000713          	li	a4,32
    4c7c:	40f70733          	sub	a4,a4,a5
    4c80:	00f557b3          	srl	a5,a0,a5
    4c84:	00002517          	auipc	a0,0x2
    4c88:	c4c50513          	addi	a0,a0,-948 # 68d0 <__clz_tab>
    4c8c:	00f507b3          	add	a5,a0,a5
    4c90:	0007c503          	lbu	a0,0(a5) # 10000 <__fdlib_version+0x9588>
    4c94:	40a70533          	sub	a0,a4,a0
    4c98:	00008067          	ret
    4c9c:	01000737          	lui	a4,0x1000
    4ca0:	01000793          	li	a5,16
    4ca4:	fce56ae3          	bltu	a0,a4,4c78 <__clzsi2+0x14>
    4ca8:	01800793          	li	a5,24
    4cac:	fcdff06f          	j	4c78 <__clzsi2+0x14>

Disassembly of section .text.startup:

00004cb0 <main>:
    4cb0:	ff010113          	addi	sp,sp,-16
    4cb4:	00112623          	sw	ra,12(sp)
    4cb8:	00812423          	sw	s0,8(sp)
    4cbc:	00912223          	sw	s1,4(sp)
    4cc0:	ffffc097          	auipc	ra,0xffffc
    4cc4:	898080e7          	jalr	-1896(ra) # 558 <femtosoc_tty_init>
    4cc8:	00005537          	lui	a0,0x5
    4ccc:	d0450513          	addi	a0,a0,-764 # 4d04 <main+0x54>
    4cd0:	ffffd097          	auipc	ra,0xffffd
    4cd4:	824080e7          	jalr	-2012(ra) # 14f4 <printf>
    4cd8:	00100413          	li	s0,1
    4cdc:	000054b7          	lui	s1,0x5
    4ce0:	00040513          	mv	a0,s0
    4ce4:	ffffb097          	auipc	ra,0xffffb
    4ce8:	4d4080e7          	jalr	1236(ra) # 1b8 <digits>
    4cec:	00050593          	mv	a1,a0
    4cf0:	d0c48513          	addi	a0,s1,-756 # 4d0c <main+0x5c>
    4cf4:	ffffd097          	auipc	ra,0xffffd
    4cf8:	800080e7          	jalr	-2048(ra) # 14f4 <printf>
    4cfc:	00940413          	addi	s0,s0,9
    4d00:	fe1ff06f          	j	4ce0 <main+0x30>
