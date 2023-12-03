#include "libasm.h"

int main(void)
{
	char str1[13] = "ASM is Fun !";
	char *str2;

	str2 = ft_strdup(str1);
	printf("%s\n", str2);
}
