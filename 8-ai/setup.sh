docker compose -f ./LibreChat-main/docker-compose.yml -f ./LibreChat-main/docker-compose-override.yaml up -d --build

docker exec -it  ollama /bin/bash -c "ollama pull qwen2.5:0.5b"