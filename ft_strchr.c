/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/28 14:31:47 by cade-oli          #+#    #+#             */
/*   Updated: 2024/10/28 14:55:36 by cade-oli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(char *s, int c)
{
	int		i;
	char	cc;

	cc = (char) c;
	i = -1;
	while (s[++i])
		if (s[i] == cc)
			return ((char *) &s[i]);
	if (s[i] == cc)
		return ((char *) &s[i]);
	return (NULL);
}