docker compose -f 'docker-compose.yml' up -d --build
docker exec -it postgres psql -U postgres -d postgres -c "\dt"
