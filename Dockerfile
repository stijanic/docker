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

WORKDIR /code

ENV PORT 80

EXPOSE 80

COPY . /code

RUN npm install

CMD ["node", "node.js/4.2.4/_Node.js/learnyounode/http-json-api-server.js", "80"]
