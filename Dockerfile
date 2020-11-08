# cp -pr stijanic ~/tmp
# cd ~/tmp/stijanic

# sudo docker build --tag stijanic .
# sudo docker run -p 8080:80 --name stijanic -d stijanic
# sudo docker logs stijanic
# sudo docker exec -it web bash
# sudo docker start stijanic
# sudo docker stop stijanic
# sudo docker rm stijanic
# sudo docker ps -a
# sudo docker images
# sudo docker rmi stijanic

# sudo docker login
# sudo docker push stijanic/stijanic
# sudo docker pull stijanic/stijanic
# sudo docker tag stijanic/stijanic stijanic_web
# sudo docker logout

# sudo heroku login
# sudo heroku apps:destroy -a stijanic-stijanic-docker --confirm stijanic-stijanic-docker
# sudo heroku apps:create stijanic-stijanic-docker
# sudo heroku container:login
# sudo heroku container:push web -a stijanic-stijanic-docker
# sudo heroku container:release web -a stijanic-stijanic-docker
# sudo heroku logs --tail -a stijanic-stijanic-docker
# sudo heroku logout

FROM node:12.16.3

RUN \
  apt-get update && \
  apt-get install -y ruby && \
  apt-get install -y php && \
  apt-get install -y vim

RUN groupadd -g 1001 stijanic

RUN useradd -rm -d /home/stijanic -s /bin/bash -g stijanic -G root,sudo -u 1001 stijanic

USER stijanic

WORKDIR /home/stijanic

ENV PORT 8080

EXPOSE 8080

COPY --chown=stijanic:stijanic . /home/stijanic

RUN npm install

CMD ["node", "node.js/4.2.4/_Node.js/learnyounode/http-json-api-server.js", "8080"]
