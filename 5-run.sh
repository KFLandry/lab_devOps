docker build --no-cache -t optimized-go-app -f 5-optimized.dockerfile ./2025-devops-docker

docker run -it --rm --name optimized-go-app -p 8080:8080 optimized-go-app