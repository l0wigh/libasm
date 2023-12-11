global ft_strcmp

section .text
ft_strcmp:
	xor		rax, rax					; reset rax
	xor		rbx, rbx					; reset rbx

_loop:
	mov		bl, BYTE [rdi + rax]		; move first char of s1 in bl
	cmp		bl, 0						; check if it's a null char
	je		_check_len					; if yes, check s2
	cmp		bl, BYTE [rsi + rax]		; compare with s2[rax]
	jl		_error_less					; if it's not the same and "lighter" jump
	jg		_error_more					; if it's not the same and "heavier" jump
	inc		rax							; rax++
	jmp		_loop						; back to the beginning
	
_check_len:
	cmp		BYTE [rsi + rax], 0			; check if it's s2[rax] is a null char
	jne		_error_less					; if not, error....
	xor		rax, rax					; if it's null, rax needs to be 0
	ret									; return

_error_less:
	mov		rax, -1						; rax = -1 because it's lighter
	ret									; return

_error_more:
	mov		rax, 1						; rax = 1 because it's heavier
	ret									; return
