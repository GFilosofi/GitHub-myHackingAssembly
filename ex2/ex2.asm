global start
section .text
start:
	mov rax, 0x2000004 			; write syscall number
	mov rdi, 1 					; write to stdout = 1
	mov rsi, msg 				; the address of hello world string
	mov rdx, msg.len 			; the size to write
	syscall 					; invoke the kernel
	mov rax, 0x2000001 			; exit syscall number
	mov rdi, 0 					; exit success
	syscall 					; invoke the kernel
section .data
msg:	db	"Hello, world!", 10 ; the string
.len:	equ	$ - msg 			; the size of the string

