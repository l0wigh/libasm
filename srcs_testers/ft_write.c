/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_write.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thomathi <thomathi@student.42mulhouse.fr>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 13:29:35 by thomathi          #+#    #+#             */
/*   Updated: 2023/11/14 13:30:10 by thomathi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char padding[255] = "--------------------------\n";

	printf("ft_write tests\n");
	printf("%s", padding);
	int result = ft_write(1, "Written with ft_write\n", ft_strlen("Written with ft_write\n"));
	printf("Return value of ft_write : %d\n", result);
	printf("Failed ft_write\n");
	result = ft_write(-1, "Written with ft_write\n", ft_strlen("Written with ft_write\n"));
	printf("Return value of ft_write : %d\n", result);
	printf("%s\n", padding);
}
