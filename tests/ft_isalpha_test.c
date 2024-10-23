/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha_test.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cade-oli <cade-oli@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/23 12:07:05 by cade-oli          #+#    #+#             */
/*   Updated: 2024/10/23 15:21:21 by cade-oli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"
#include "ansi_colors.h"
#include <ctype.h>
#include <stdio.h>

int	main(void)
{
	int	chars[] = {'A', 'z', 'b', 'G', '!', '0', '9', -1, 128};
	int	i;
	int	c;
	int	original;

	printf("\n*************************************");
	printf("\n*     Running ft_isalpha() Tests    *\n");
	printf("*************************************\n");
	i = -1;
	while (++i < sizeof(chars) / sizeof(chars[0]))
	{
		c = chars[i];
		original = isalpha(c);
		if (original > 0)
			original = 1;
		if (original == ft_isalpha(c))
			printf("%s[✔] Test passed for input '%c' (ASCII: %d)%s\n",
				GREEN, c, c, RESET);
		else
			printf("%s[✖] Test failed for input '%c' (ASCII: %d). Expected: %d, Got: %d%s\n",
				RED, c, c, original, ft_isalpha(c), RESET);
	}
	printf("\n");
	return (0);
}
