# cp -pr Docker ~/tmp/docker
# cd ~/tmp/docker

# sudo docker build --tag stijanic .
# sudo docker run -p 8080:8080 --name web -d stijanic
# sudo docker logs web
# sudo docker exec -it web bash
# sudo docker start web
# sudo docker stop web
# sudo docker rm web
# sudo docker ps -a
# sudo docker images
# sudo docker rmi stijanic

# sudo docker login
# sudo docker push stijanic/docker
# sudo docker pull stijanic/docker
# sudo docker tag web stijanic/docker
# sudo docker logout

# sudo heroku login
# sudo heroku apps:destroy -a stijanic-docker --confirm stijanic-docker
# sudo heroku apps:create --region eu stijanic-docker
# sudo heroku container:login
# sudo heroku container:push web -a stijanic-docker
# sudo heroku container:release web -a stijanic-docker
# sudo heroku logs --tail -a stijanic-docker
# sudo heroku run bash
# sudo heroku logout

FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Belgrade

RUN \
  apt-get update && \
  apt-get install -y tzdata && \
  apt-get install -y ruby && \
  apt-get install -y ruby-dev && \
  apt-get install -y php && \
  apt-get install -y composer && \
  apt-get install -y python3 && \
  apt-get install -y python-is-python3 && \
  apt-get install -y python3-pip && \
  apt-get install -y nodejs && \
  apt-get install -y npm && \
  apt-get install -y clojure && \
  apt-get install -y leiningen && \
  apt-get install -y vim && \
  apt-get install -y libmysqlclient-dev && \
  apt-get install -y libpq-dev && \
  apt-get install -y libzmq3-dev

RUN groupadd -g 1001 stijanic

RUN useradd -rm -d /home/stijanic -s /bin/bash -g stijanic -u 1001 -p wyc60ExwcvnTA stijanic

USER stijanic

WORKDIR /home/stijanic

ENV PORT 8080

EXPOSE 8080

COPY --chown=stijanic:stijanic . /home/stijanic

RUN echo "export GEM_HOME=$HOME/.gems" >> ~/.bashrc
RUN echo "export PATH=$PATH:$GEM_HOME/bin" >> ~/.bashrc
RUN GEM_HOME=$HOME/.gems gem install bundler
RUN GEM_HOME=$HOME/.gems $HOME/.gems/bin/bundler install

RUN composer install
RUN composer update

RUN pip3 install -r requirements.txt

RUN echo "export NODE_PATH=$HOME/node_modules" >> ~/.bashrc
RUN echo "export PATH=$PATH:$NODE_PATH/.bin" >> ~/.bashrc
RUN npm install

CMD ["node", "node.js/4.2.4/_Node.js/learnyounode/http-json-api-server.js", "8080"]
