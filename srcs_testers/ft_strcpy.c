#include "libasm.h"

int main(void)
{
	char str1[20] = "ASM is fun";
	char str2[20];

	ft_strcpy(str2, str1);
	printf("Copied string : %s\n", str2);
	return 0;
}
