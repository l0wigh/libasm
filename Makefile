# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thomathi <thomathi@student.42mulhouse.fr>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/09 16:48:45 by thomathi          #+#    #+#              #
#    Updated: 2023/12/02 00:26:15 by thomathi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm

NAME_LIB = libasm.a

SRCS = srcs/ft_strlen.s \
	   srcs/ft_write.s \
	   srcs/ft_read.s \
	   srcs/ft_strcpy.s \
	   srcs/ft_strdup.s \
	   srcs/ft_strcmp.s

# SRCS = srcs/ft_strdup.s

CC = gcc

CFLAGS = -Wall -Wextra -Werror

NASM = nasm

NASMFLAGS = -f elf64

OBJ = $(SRCS:.s=.o)

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME_LIB) $(OBJ)

test :
	mkdir testers
	$(CC) $(CFLAGS) srcs_testers/ft_write.c $(NAME_LIB) -o testers/ft_write
	$(CC) $(CFLAGS) srcs_testers/ft_read.c $(NAME_LIB) -o testers/ft_read
	$(CC) $(CFLAGS) srcs_testers/ft_strlen.c $(NAME_LIB) -o testers/ft_strlen
	$(CC) $(CFLAGS) srcs_testers/ft_strcmp.c $(NAME_LIB) -o testers/ft_strcmp
	$(CC) $(CFLAGS) srcs_testers/ft_strcpy.c $(NAME_LIB) -o testers/ft_strcpy
	$(CC) $(CFLAGS) srcs_testers/ft_strdup.c $(NAME_LIB) -o testers/ft_strdup
	
clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME_LIB)
	rm -rf testers

re : fclean all
