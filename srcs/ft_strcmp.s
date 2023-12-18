global ft_strcmp

section .text
ft_strcmp:
	xor		rax, rax				; rax = 0
	xor		rbx, rbx				; rbx = 0
_loop:
	mov		bl, BYTE [rdi + rax]	; bl = rdi[rax]
	cmp		bl, BYTE [rsi + rax]	; bl == rsi[rax] ?
	jg		_error_more				; rdi[rax] > rsi[rax] -> _error_more
	jl		_error_less				; rdi[rax] < rsi[rax] -> _error_less
	inc		rax						; rax++
	cmp		bl, 0					; rdi[rax] == '\0' ?
	jne		_loop					; rdi[rax] != '\0' -> _loop
	xor		rax, rax				; rax = 0
	ret								; return 0
_error_more:
	sub		bl, BYTE [rsi + rax]	; rdi[rax] - rsi[rax]
	mov		rax, rbx				; rax = sub result
	ret								; return rax
_error_less:
	mov		bl, BYTE [rsi + rax]	; bl = rsi[rax]
	sub		bl, BYTE [rdi + rax]	; rsi[rax] - rdi[rax]
	xor		rax, rax				; rax = 0
	sub		rax, rbx				; rax = rax - (sub result)
	ret								; return rax
