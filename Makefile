# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: TheTerror <jfaye@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/20 15:35:44 by TheTerror         #+#    #+#              #
#    Updated: 2024/04/01 19:02:12 by TheTerror        ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

COMPOSE_FILE= ./srcs/docker-compose.yml 

all : make_dirs build up

make_dirs :
	mkdir -p ./srcs/volumes/wordpress/ ./srcs/volumes/mariadb/

build b : # Build or rebuild services
	-sudo docker compose -f $(COMPOSE_FILE) build
create cr : # Creates containers for a service
	-sudo docker compose -f $(COMPOSE_FILE) create --remove-orphans
start : # Start services
	-sudo docker compose -f $(COMPOSE_FILE) start
up : # Create and start containers
	-sudo docker compose -f $(COMPOSE_FILE) up -d
exec : # Execute a command in a running container.
	-sudo docker compose -f $(COMPOSE_FILE) exec
restart res : # Restart service containers
	-sudo docker compose -f $(COMPOSE_FILE) restart


images im : # List images used by the created containers
	-sudo docker images
	-sudo docker compose -f $(COMPOSE_FILE) images
ls : # List running compose projects
	sudo docker compose -f $(COMPOSE_FILE) ls
ps : # List containers
	sudo docker ps -a
	sudo docker compose -f $(COMPOSE_FILE) ps -a
logs l : # View output from containers
	sudo docker compose -f $(COMPOSE_FILE) logs -f
top : # Display the running processes
	sudo docker compose -f $(COMPOSE_FILE) top


down : # Stop and remove containers, networks
	-sudo docker compose -f $(COMPOSE_FILE) down --remove-orphans
stop : # Stop services
	-sudo docker compose -f $(COMPOSE_FILE) stop
rm remove : # Removes stopped service containers
	-sudo docker compose -f $(COMPOSE_FILE) rm -f
rmi : # Removes images
	-sudo docker rmi $$(sudo docker images | awk 'NR>1 {print $3}' | tr '\n' ' ')
rmv : # clean volumes
	-sudo rm -rf srcs/volumes/wordpress/*
	-sudo rm -rf srcs/volumes/mariadb/*
kill k : # Force stop service containers.
	-sudo docker-compose -f $(COMPOSE_FILE) kill --remove-orphans


clean c : down rm rmi rmv
fclean fc : clean
	-yes | sudo docker system prune
re : clean all
