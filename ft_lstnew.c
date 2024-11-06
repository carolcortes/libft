/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/06 22:05:36 by cade-oli          #+#    #+#             */
/*   Updated: 2024/11/06 22:54:20 by cade-oli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*el;

	el = malloc(sizeof(t_list));
	if (!el)
		return (NULL);
	el->content = content;
	el->next = NULL;
	return (el);
}
