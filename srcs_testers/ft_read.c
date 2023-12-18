#include "libasm.h"

int main(void)
{
	int result;
	char *username;

	username = (char *)malloc(sizeof(char) * 8);
	ft_write(1, "Enter your intra username : ", ft_strlen("Enter your intra username : "));
	result = ft_read(0, username, 9);
	printf("You are now logged as %s", username);
	return result;
}
