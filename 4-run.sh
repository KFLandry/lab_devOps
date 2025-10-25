docker build --no-cache -f 4-dev-app.dockerfile -t broken-app 2025-devops-docker/

docker run -it --rm --name broken-app -p 3000:3000 broken-app