global ft_read
extern	__errno_location

section .text
ft_read:
	mov		rax, 0				; 0 = read in syscall
	syscall						; call read
	jc		_error				; jump if error
	ret							; return
_error:
	neg		rax					; rax = !rax
	mov		rbx, rax			; keep errno value
	call	__errno_location	; get errno address
	mov		[rax], rbx			; errno value = rbx
	mov		rax, -1				; error, set rax to -1
	ret							; return
