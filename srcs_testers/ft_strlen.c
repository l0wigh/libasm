/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thomathi <thomathi@student.42mulhouse.fr>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 13:31:36 by thomathi          #+#    #+#             */
/*   Updated: 2023/11/14 13:37:58 by thomathi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char padding[255] = "--------------------------\n";

	printf("ft_strlen tests\n");
	printf("%s", padding);
	printf("Size of intra login [thomathi] : %ld\n", ft_strlen("thomathi"));
	printf("Size of \"Hello World !\\n\" : %ld\n", ft_strlen("Hello World !\n"));
	printf("%s\n", padding);
}
