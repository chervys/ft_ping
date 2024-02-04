/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ping.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chervy <chervy@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/03 14:36:50 by chervy            #+#    #+#             */
/*   Updated: 2024/02/04 08:47:35 by chervy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PING_H
#define FT_PING_H

/*
malloc / free
*/
#include <stdlib.h>

/*
exit
printf
strerror
*/
#include <stdio.h>

/*
gettimeofday
*/
#include <sys/time.h>

/*
inet_ntop / inet_pton
ntohs / htons
*/
#include <arpa/inet.h>

/*
signal
*/
#include <signal.h>

/*
close
alarm / usleep
getpid / getuid
*/
#include <unistd.h>

/*
socket / setsockopt
sendto / recvmsg
*/
#include <sys/socket.h>

/*
getaddrinfo / getnameinfo / freeaddrinfo
gai_strerror
*/
#include <netdb.h>
#include <sys/socket.h>
#include <sys/types.h>

#endif
