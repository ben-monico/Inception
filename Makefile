name = simple_nginx_html
all:
	docker-compose -f ./docker-compose.yml up -d

build:
	docker-compose -f ./docker-compose.yml up -d --build

down:
	docker-compose -f ./docker-compose.yml down

re:	down
	docker-compose -f ./docker-compose.yml up -d --build

clean: down
	docker system prune -a

fclean:
	docker stop $$(docker ps -qa)
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force

reset:
	docker ps -a -q | xargs -r -n1 -I % docker rm %
	docker images -q | xargs -r -n1 -I % docker rmi %

.PHONY	: all build down re clean fclean reset