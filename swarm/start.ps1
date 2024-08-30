[CmdletBinding()]
Param(

)

# start registry
docker run --rm -d -p 8000:5000 --name registry registry:2

# build and push images
docker build -t localhost:8000/frontend ./frontend
docker push localhost:8000/frontend

docker build -t localhost:8000/api ./api
docker push localhost:8000/api

# start service
docker stack deploy -c docker-stack.yaml demo
