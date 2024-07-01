.global _start
.section .text

.data
    var1: .word 10
    var2: .word 5
    msg: .asciz "Sum: %d\n"

_start:
    ldr r0, =var1
    ldr r0, [r0]

    ldr r1, =var2
    ldr r1, [r1]

    add r2, r0, r1

    mov r0, r2
    ldr r1, =msg
    bl printf

    mov r7, #0x1
    mov r0, #65
    swi 0

.section .rodata
    .align 2
printf: .word 0xAAC 