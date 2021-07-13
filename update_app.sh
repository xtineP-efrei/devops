git pull origin main
docker build . -t christine
docker stop $(docker ps -q --filter ancestor=christine )
docker run --rm -d -p 3999:3999 christine  nodejs app.js