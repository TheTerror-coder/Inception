# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: TheTerror <jfaye@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/20 15:35:44 by TheTerror         #+#    #+#              #
#    Updated: 2024/04/02 15:59:42 by TheTerror        ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

IMAGE = nginx_i
CONTAINER = nginx
PORTS = -p 8080:443

all : build run

build :
	sudo docker build ../ -t  $(IMAGE)
run :
	sudo docker run -itd --rm --name $(CONTAINER) $(PORTS) $(IMAGE)
exec :
	sudo docker exec -it  $(CONTAINER) bash
clean :
	sudo docker image rm $(IMAGE)
fclean : stop
	sudo docker image rm $(IMAGE)
stop :
	sudo docker stop  $(CONTAINER)
ps :
	sudo docker ps -a
ls :
	sudo docker image ls
	sudo docker container ls

re : fclean all