# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 11:57:05 by cade-oli          #+#    #+#              #
#    Updated: 2024/10/23 14:16:31 by cade-oli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft_test

CC = cc
CFLAGS = -Wall -Wextra -Werror

LIBFT_PATH = ../libft.a
INCLUDES = -I ..
TEST_SRC = $(wildcard *_test.c)
TEST_OBJ = $(TEST_SRC:.c=.o)

MAGENTA = \033[0;35m
CYAN   = \033[0;36m
RESET  = \033[0m

all: $(NAME)

$(NAME): $(TEST_OBJ) $(LIBFT_PATH)
	@$(CC) $(CFLAGS) -o $(NAME) $(TEST_OBJ) $(LIBFT_PATH) $(INCLUDES)
	@./$(NAME)
	@$(MAKE) fclean -C ..

$(LIBFT_PATH):
	@$(MAKE) -C ..

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f $(TEST_OBJ)
	@echo "🧹$(MAGENTA) Test object files cleaned.$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@echo "🧹$(MAGENTA) All test files cleaned.$(RESET)"
re:
	@echo "$(CYAN)🔄🚀 Rebuilding Tests...$(RESET)"
	@$(MAKE) --no-print-directory fclean all

.PHONY: all clean fclean re
