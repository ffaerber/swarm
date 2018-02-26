

ssh root@51.15.137.54 -i ~/.ssh/scaleway

https://get.docker.com/

curl -fsSL edge.docker.com -o edge-docker.sh && sh edge-docker.sh




ssh -nNT -L 9999:/var/run/docker.sock root@51.15.198.245 -i ~/.ssh/scaleway -v
export DOCKER_HOST=localhost:9999


docker stack deploy -c ./production-stack.yml cumulocity_production




curl -X POST -H 'Content-Type: application/json' -d '{"_id": "1", "title":"My Articles", "msg":"this is the Content of the article"}' http://ed43bb24-15d5-4651-b3d9-536e20b3410c.pub.cloud.scaleway.com/appsample/api/v1/articles

curl http://4ac95ec0-0b28-4be0-8a7b-298fbbcb5998.pub.cloud.scaleway.com/appsample/api/v1/articles/1


curl 4ac95ec0-0b28-4be0-8a7b-298fbbcb5998.pub.cloud.scaleway.com
