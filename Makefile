# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chervy <chervy@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/03 14:36:26 by chervy            #+#    #+#              #
#    Updated: 2024/02/03 14:43:25 by chervy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= ft_ping

SRCS_PATH	= ./srcs
SRCS		= ${SRCS_PATH}/main.c
OBJS		= ${SRCS:.c=.o}

INC_PATH	= ./inc
INC			= ${INC_PATH}/ft_ping.h

GCC			= gcc
CFLAGS		= -Wall -Wextra -Werror

%.o: %.c	${INC}
	${GCC} ${CFLAGS} -I ${INC_PATH} -c $< -o ${<:.c=.o}

all: ${NAME}
.PHONY: all

${NAME}: ${OBJS}
	${GCC} ${CFLAGS} -I ${INC_PATH} -o ${NAME} ${OBJS}

clean:
	rm -rfv ${OBJS}
.PHONY: clean

fclean: clean
	rm -rfv ${NAME}
.PHONY: fclean

re: fclean all
.PHONY: re
