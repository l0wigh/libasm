/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thomathi <thomathi@student.42mulhouse.fr>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/12 09:24:38 by thomathi          #+#    #+#             */
/*   Updated: 2023/12/01 23:32:59 by thomathi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

ssize_t ft_strlen(char *);
ssize_t ft_write(int, char *, size_t);
ssize_t ft_read(int, char *, size_t);
int		ft_strcmp(char *, char *);
char	*ft_strcpy(char *, char *);
char	*ft_strdup(char *);

#endif
