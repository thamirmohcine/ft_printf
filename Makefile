# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mthamir <mthamir@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/06 16:06:51 by mthamir           #+#    #+#              #
#    Updated: 2023/12/07 13:10:13 by mthamir          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

CC = cc

FLAGS = -Wall -Wextra -Werror

SOURCE = ft_printf.c ft_putchar.c ft_putint.c ft_putstr.c ft_putunsigned.c ft_putadress.c ft_put_hexa.c

OBJECTS = ft_printf.o ft_putchar.o ft_putint.o ft_putstr.o ft_putunsigned.o ft_putadress.o ft_put_hexa.o

all : $(NAME)

$(NAME) : $(OBJECTS) ft_printf.h
	ar rcs $(NAME) $^

%.o : %.c ft_printf.h
	$(CC) $(FLAGS) -c $< -o $@

clean :
	rm -f $(OBJECTS)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : clean