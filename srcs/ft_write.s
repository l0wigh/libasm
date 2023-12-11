global ft_write
extern	___errno_location

section .text
ft_write:
	mov		rax, 1				; 1 = write in syscall
	syscall						; call write
	jc		_error				; check for errors
	ret							; return
_error:
	mov		rbx, rax			; keep errno value
	call	___errno_location	; get errno address
	mov		[rax], rbx			; errno value = rbx
	mov		rax, -1				; error, set rax to -1
	ret							; return
