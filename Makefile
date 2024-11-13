# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 10:20:02 by cade-oli          #+#    #+#              #
#    Updated: 2024/11/13 10:32:35 by cade-oli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC_FILES = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c \
	ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
	ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c \
	ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
	ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	ft_putnbr_fd.c
OBJ_FILES = $(SRC_FILES:.c=.o)

BONUS_FILES = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
	ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
BONUS_OBJ = $(BONUS_FILES:.c=.o)

H_FILE = libft.h
INCLUDES = -I.

all: $(NAME)

$(NAME): $(OBJ_FILES)
	@ar rcs $(NAME) $(OBJ_FILES)
	@echo "$(BLUE)📦 Creating library archive: $(NAME)$(RESET)"

%.o: %.c $(H_FILES)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

bonus: $(OBJ_FILES) $(BONUS_OBJ)
	@ar rcs $(NAME) $(OBJ_FILES) $(BONUS_OBJ)
	@echo "$(GREEN)✔ Bonus functions added to $(NAME)$(RESET)"

clean:
	@rm -f $(OBJ_FILES) $(BONUS_OBJ)
	@echo "🧹$(MAGENTA) Object files cleaned.$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@echo "🧹$(MAGENTA) Library file cleaned.$(RESET)"

re:
	@echo "$(CYAN)🔄 Rebuilding project...$(RESET)"
	@$(MAKE) --no-print-directory fclean all

.PHONY: all clean fclean re test bonus

#==============================================================================#
#                                  UTILS                                       #
#==============================================================================#

# Colors
GREEN = \033[0;32m
BLUE   = \033[0;34m
MAGENTA = \033[0;35m
CYAN   = \033[0;36m
RESET  = \033[0m
