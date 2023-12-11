global ft_strcpy

section .text
ft_strcpy:
	xor		rax, rax		; reset rax
	mov		rbx, rdi		; preserve default pointer
_loop:
	mov		al, [rsi]		; move the current char to rax
	mov		[rdi], al		; move rax value to current rdi pointer position
	inc		rdi				; rdi pointer ++
	inc		rsi				; rsi pointer ++
	cmp		rax, 0			; compare the last char taken with null char
	jne		_loop			; if not the same, continue
	mov		rax, rbx		; just to be sure to have a return value
	ret						; return
