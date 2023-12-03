/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thomathi <thomathi@student.42mulhouse.fr>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 10:13:36 by thomathi          #+#    #+#             */
/*   Updated: 2023/11/18 13:53:38 by thomathi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char padding[255] = "--------------------------\n";
	char *s1;
	char *s2;

	printf("ft_strcmp tests\n");
	printf("%s", padding);
	s1 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s2 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s1 = "thomathi";
	s2 = "thomathi";
	printf("ft_strcmp with %s and %s : %d\n", s1, s2, ft_strcmp(s1, s2));
	printf("%s", padding);
	s1 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s2 = (char *) malloc(sizeof(char) * ft_strlen("thomathilong") + 1);
	s1 = "thomathi";
	s2 = "thomathilong";
	printf("ft_strcmp with %s and %s : %d\n", s1, s2, ft_strcmp(s1, s2));
	printf("%s", padding);
	s1 = (char *) malloc(sizeof(char) * ft_strlen("thomathilong") + 1);
	s2 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s1 = "thomathilong";
	s2 = "thomathi";
	printf("ft_strcmp with %s and %s : %d\n", s1, s2, ft_strcmp(s1, s2));
	printf("%s", padding);
	s1 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s2 = (char *) malloc(sizeof(char) * ft_strlen("shomathi") + 1);
	s1 = "thomathi";
	s2 = "shomathi";
	printf("ft_strcmp with %s and %s : %d\n", s1, s2, ft_strcmp(s1, s2));
	printf("%s", padding);
	s1 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s2 = (char *) malloc(sizeof(char) * ft_strlen("zhomathi") + 1);
	s1 = "thomathi";
	s2 = "zhomathi";
	printf("ft_strcmp with %s and %s : %d\n", s1, s2, ft_strcmp(s1, s2));
	printf("%s", padding);
	s1 = (char *) malloc(sizeof(char) * ft_strlen("thomathi") + 1);
	s2 = (char *) malloc(sizeof(char) * ft_strlen("zhomathilong") + 1);
	s1 = "thomathi";
	s2 = "uhomathilong";
	printf("ft_strcmp with %s and %s : %d\n", s1, s2, ft_strcmp(s1, s2));
	printf("%s", padding);
	return 0;
}
