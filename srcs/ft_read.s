global ft_read

section .text
ft_read:
	mov rax, 0		; 0 = read in syscall
	syscall			; call read
	jc _error		; jump if error
	ret				; return
_error:
	mov rax, -1		; if error, set rax to -1
	ret				; return
