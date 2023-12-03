%include "srcs/ft_strlen.s"
%include "srcs/ft_strcpy.s"
global ft_strdup

section .text
ft_malloc:
	mov rdi, 0			; 0 so OS choose memory section
	mov rsi, rax		; strlen return value
	mov rdx, 0x3		; read + write
	mov r10, 0x22		; anonymous + private
	mov r8, -1			; no fd
	mov r9, 0			; no offset
	mov rax, 9			; mmap syscall
	syscall
	ret

ft_strdup:
	call ft_strlen		; get string len
	inc rax				; rax+1 for null char

	push rdi			; preserve the string that needs to be copied
	call ft_malloc		; go to mmap (because why I should use a C function ?)

	;mov rdx, rax		; preserve the pointer
	mov rdi, rax		; used as copy pointer, will be "destroyed"
	pop rsi				; get the input back as the source
	call ft_strcpy		; copy into newly allocated memory
	;mov rax, rdx		; restore back the default pointer
	ret
