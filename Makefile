# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 10:20:02 by cade-oli          #+#    #+#              #
#    Updated: 2024/10/23 14:19:49 by cade-oli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC_FILES = $(wildcard src/*.c)
OBJ_FILES = $(SRC_FILES:.c=.o)
H_FILES = $(wildcard *.h)
INCLUDES = -I .

GREEN  = \033[0;32m
BLUE   = \033[0;34m
MAGENTA = \033[0;35m
CYAN   = \033[0;36m
RESET  = \033[0m

all: $(NAME)
	@echo "$(GREEN)✔ Build complete: $(NAME)$(RESET)"

$(NAME): $(OBJ_FILES)
	@ar rcs $(NAME) $(OBJ_FILES)
	@echo "$(BLUE)📦 Creating library archive: $(NAME)$(RESET)"

%.o: %.c $(H_FILES)
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -f $(OBJ_FILES)
	@echo "🧹$(MAGENTA) Object files cleaned.$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@$(MAKE) fclean --no-print-directory -C tests > /dev/null 2>&1
	@echo "🧹$(MAGENTA) Library and tests files cleaned.$(RESET)"

re:
	@echo "$(CYAN)🔄 Rebuilding project...$(RESET)"
	@$(MAKE) --no-print-directory fclean all

test:
	@echo "$(MAGENTA)🚀 Running tests...$(RESET)"
	@$(MAKE) --no-print-directory -C tests
	@echo "$(MAGENTA)🚀 All tests completed!$(RESET)"

.PHONY: all clean fclean re test
