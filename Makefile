add_key:
	echo "${DEPLOY_KEY}" | sed 's/\\n/\n/g' > "/${DEPLOY_USER}.key"
	chmod 600 "/${DEPLOY_USER}.key"

start_proxy:
	/scripts/start_proxy.sh

deploy_production:
	docker stack deploy -c ./production/stack.yml myorg_production --with-registry-auth
