# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: twight <twight@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/04 15:43:02 by twight            #+#    #+#              #
#    Updated: 2019/08/19 19:09:34 by twight           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

PART1 = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
		ft_memchr.c ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c \
		ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c \
		ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c \
		ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_toupper.c ft_tolower.c

PART2 = ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c \
		ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c \
		ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c \
		ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS = ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c \
		ft_lstmap.c ft_itoa_base.c ft_strndup.c get_next_line.c ft_atof.c \
		ft_isblank.c ft_isnum.c ft_isspace.c ft_isprefix.c ft_isdigit_base.c \
		ft_isint.c ft_strsplit_free.c ft_arrclr.c ft_arrlen.c ft_char_count.c

GNL =	get_next_line.c

OBJ_1 = ft_memset.o ft_bzero.o ft_memcpy.o ft_memccpy.o ft_memmove.o \
		ft_memchr.o ft_memcmp.o ft_strlen.o ft_strdup.o ft_strcpy.o \
		ft_strncpy.o ft_strcat.o ft_strncat.o ft_strlcat.o ft_strchr.o \
		ft_strrchr.o ft_strstr.o ft_strnstr.o ft_strcmp.o ft_strncmp.o \
		ft_atoi.o ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o \
		ft_isprint.o ft_toupper.o ft_tolower.o

OBJ_2 = ft_memalloc.o ft_memdel.o ft_strnew.o ft_strdel.o ft_strclr.o \
		ft_striter.o ft_striteri.o ft_strmap.o ft_strmapi.o ft_strequ.o \
		ft_strnequ.o ft_strsub.o ft_strjoin.o ft_strtrim.o ft_strsplit.o \
		ft_itoa.o ft_putchar.o ft_putstr.o ft_putendl.o ft_putnbr.o \
		ft_putchar_fd.o ft_putstr_fd.o ft_putendl_fd.o ft_putnbr_fd.o

OBJ_B = ft_lstnew.o ft_lstdelone.o ft_lstdel.o ft_lstadd.o ft_lstiter.o \
		ft_lstmap.o ft_itoa_base.o ft_strndup.o get_next_line.o ft_atof.o \
		ft_isblank.o ft_isnum.o ft_isspace.o ft_isprefix.o ft_isdigit_base.o \
		ft_isint.o ft_strsplit_free.o ft_arrclr.o ft_arrlen.o ft_char_count.o

GNL_O = get_next_line.o

GREEN = \033[0;32m
RED = \033[0;31m
RESET = \033[0m

all: $(NAME)

$(NAME):
		@gcc $(FLAGS) -I./ -c $(PART1) $(PART2) $(BONUS) $(GNL)
		@echo "$(NAME): $(GREEN)compiling *.o files$(RESET)"
		@ar rc $(NAME) $(OBJ_1) $(OBJ_2) $(OBJ_B) $(GNL_O)
		@echo "$(NAME): $(GREEN)compiling $(NAME) has been completed$(RESET)"

clean:
		@rm -f $(OBJ_1) $(OBJ_2) $(OBJ_B) $(GNL_O)
		@echo "$(NAME): $(RED)*.o files have been deleted$(RESET)"

fclean: clean
		@rm -f $(NAME)
		@echo "$(NAME): $(RED)$(NAME) has been deleted$(RESET)"

re: fclean all

.PHONY: all clean fclean re