/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/23 10:19:24 by cade-oli          #+#    #+#             */
/*   Updated: 2024/10/26 14:06:08 by cade-oli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdlib.h>

int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
size_t	ft_strlen(const char *str);
void	*ft_memset(void *b, int c, size_t len);
void	ft_bzero(void *s, size_t n);
// ft_memcpy
// ft_memmove
// ft_strlcpy
// ft_strlcat
// ft_toupper
// ft_tolower
// ft_strchr
// ft_strrchr
// ft_strncmp
// ft_memchr
// ft_memcmp
// ft_strnstr
// ft_atoi

// - With malloc():
// calloc
// strdup

// - Aditional:
// ft_substr
// ft_strjoin
// ft_strtrim
// ft_split
// ft_itoa
// ft_strmapi
// ft_striteri
// ft_putchar_fd
// ft_putstr_fd
// ft_putendl_fd
// ft_putnbr_fd

// - Bonus:
// typedef struct s_list
// {
// void *content;
// struct s_list *next;
// }

// ft_lstnew
// ft_lstadd_front
// ft_lstsize
// ft_lstlast
// ft_lstadd_back
// ft_lstdelone
// ft_lstclear
// ft_lstiter
// ft_lstmap

#endif
