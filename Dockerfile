# sudo docker build --tag stijanic .
# sudo docker run -p 8080:80 --name stijanic -d stijanic
# sudo docker ps -a
# sudo docker logs stijanic
# sudo docker stop stijanic # sudo docker start stijanic
# sudo docker rm stijanic
# sudo docker images
# sudo docker rmi stijanic

# sudo docker login
# sudo docker tag stijanic stijanic/stijanic
# sudo docker push stijanic/stijanic
# sudo docker rmi stijanic/stijanic
# sudo docker pull stijanic/stijanic
# sudo docker tag stijanic/stijanic stijanic_web
# sudo docker logout

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
