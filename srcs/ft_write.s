global ft_write
extern	__errno_location

section .text
ft_write:
	mov		rax, 1				; 1 = write in syscall
	syscall						; call write
	jc		_error				; check for errors
	ret							; return
_error:
	neg		rax					; rax = !rax
	mov		rbx, rax			; keep errno value
	call	__errno_location	; get errno address
	mov		[rax], rbx			; errno value = rbx
	mov		rax, -1				; error, set rax to -1
	ret							; return
