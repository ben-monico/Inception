reset:
	docker ps -a -q | xargs -n1 -I % docker rm %
	docker images -q | xargs -n1 -I % docker rmi %