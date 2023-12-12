//first program!
.global main

.section .rodata
message: .asciz "Hello world!\n"

.text
main:

	//Output our prompt here
	ldr r0, =message
	bl printf
	b exit

exit:
	mov R7, #1
	swi 0
	