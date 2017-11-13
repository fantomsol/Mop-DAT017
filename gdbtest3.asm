@
@	gdbtest3.asm
@

start:
	LDR	R0, =0x00000018
	LDR	R1, =0x40023830
	STR	R0, [R1]

	LDR	R0, =0x55555555
	LDR	R1, =0x40020C00
	STR	R0, [R1]
	
	LDR	R1, =0x40020C14
	LDR	R2, =0x40021010
	
main:
	LDR	R0, [R2]
	STR	R0, [R1]
	B	main
