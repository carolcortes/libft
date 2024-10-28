# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/23 10:20:02 by cade-oli          #+#    #+#              #
#    Updated: 2024/10/28 12:08:00 by cade-oli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC_FILES = $(wildcard *.c)
OBJ_FILES = $(SRC_FILES:.c=.o)
H_FILES = $(wildcard *.h)
INCLUDES = -I.

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
	@echo "🧹$(MAGENTA) Library file cleaned.$(RESET)"

re:
	@echo "$(CYAN)🔄 Rebuilding project...$(RESET)"
	@$(MAKE) --no-print-directory fclean all

.PHONY: all clean fclean re test

#==============================================================================#
#                                  UTILS                                       #
#==============================================================================#

# Colors
GREEN = \033[0;32m
BLUE   = \033[0;34m
MAGENTA = \033[0;35m
CYAN   = \033[0;36m
RESET  = \033[0m
