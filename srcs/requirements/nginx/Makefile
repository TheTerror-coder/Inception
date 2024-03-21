# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: TheTerror <jfaye@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/20 15:35:44 by TheTerror         #+#    #+#              #
#    Updated: 2024/03/21 16:18:57 by TheTerror        ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

IMAGE = nginx
CONTAINER = nginx_container
PORTS = -p 8080:80

all : build run

build :
	sudo docker build . -t  $(IMAGE)
run :
	sudo docker run -it -d --rm --name $(CONTAINER) $(PORTS) $(IMAGE)
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