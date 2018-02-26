start_proxy:
	/scripts/start_proxy.sh

deploy_production:
	docker stack deploy -c ./production/stack.yml myorg_production --with-registry-auth
