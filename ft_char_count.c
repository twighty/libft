/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_char_count.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: twight <twight@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/08/19 19:03:39 by twight            #+#    #+#             */
/*   Updated: 2019/08/19 19:25:41 by twight           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_char_count(char c, char *line)
{
	int i;
	int res;

	res = 0;
	i = -1;
	if (!line)
		return (-1);
	while (line[++i])
	{
		if (line[i] == c)
			res++;
	}
	return (res);
}
