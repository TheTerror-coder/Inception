# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: TheTerror <jfaye@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/20 15:35:44 by TheTerror         #+#    #+#              #
#    Updated: 2024/03/27 17:55:31 by TheTerror        ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

IMAGE = mariadb_i
CONTAINER = mariadb_c
PORTS = #-p 8080:443
ENV = #--env-file ".env"

all : build run

build :
	sudo docker build . -t  $(IMAGE)
run :
	sudo docker run $(ENV) -it --rm --name $(CONTAINER) $(PORTS) $(IMAGE) 
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