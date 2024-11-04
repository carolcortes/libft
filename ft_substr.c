/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/04 10:48:06 by cade-oli          #+#    #+#             */
/*   Updated: 2024/11/04 11:30:42 by cade-oli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	size_t	i;
	char	*sub;

	if (!s)
		return (NULL);
	if (start > ft_strlen(s))
		return (ft_strdup(""));
	if (len > ft_strlen(s + start))
		len = ft_strlen(s + start);
	sub = (char *)malloc(len + 1 * sizeof(char));
	if (!sub)
		return (NULL);
	i = -1;
	while (++i < len)
	{
		sub[i] = s[start + i];
	}
	return (sub);
}

/* #include <stdio.h>

int	main(void)
{
	printf("%s", ft_substr("Hello World!", 6, 12));
	return (0);
} */
