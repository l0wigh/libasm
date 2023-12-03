global ft_strlen

section .text
ft_strlen:
	xor rax, rax			; rax = 0
_count:
	cmp BYTE [rdi + rax], 0 ; compare rsi[rax] with 0 (end of string)
	je _return				; if true, return
	inc rax					; inc rax
	jmp _count				; jump back to the beginning of the loop
_return:
	ret						; return
