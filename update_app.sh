git pull https://github.com/xtineP-efrei/devops.git
docker build . -t christine
docker run --rm -d -p 3999:3999 christine  nodejs app.js