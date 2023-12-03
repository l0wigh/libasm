global ft_write

section .text
ft_write:
	mov rax, 1		; 1 = write in syscall
	syscall			; call write
	jc	_error		; check for errors
	ret				; return
_error:
	mov rax, -1		; error code
	ret				; return
