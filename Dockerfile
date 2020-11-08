# sudo docker build --tag stijanic .
# sudo docker run -p 8080:80 --name stijanic -d stijanic
# sudo docker ps -a
# sudo docker stop stijanic
# sudo docker rm stijanic
# sudo docker images
# sudo docker rmi $(sudo docker images | grep stijanic | awk '{ print $3 }')

FROM node:12.16.3

WORKDIR /code

ENV PORT 80

COPY . /code

RUN npm install

CMD ["node", "node.js/4.2.4/_Node.js/learnyounode/time-server.js", "80"]
