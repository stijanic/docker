# docker build --tag stijanic .
# docker run -p 8080:8080 --name web -d stijanic
# docker logs web
# docker exec -it web bash
# docker start web
# docker stop web
# docker rm web
# docker ps -a
# docker images
# docker rmi stijanic

# docker login
# docker push stijanic/docker
# docker pull stijanic/docker
# docker tag web stijanic/docker
# docker logout

# heroku login
# heroku apps:destroy -a stijanic-docker --confirm stijanic-docker
# heroku apps:create --region eu stijanic-docker
# heroku container:login
# heroku container:push web -a stijanic-docker
# heroku container:release web -a stijanic-docker
# heroku logs --tail -a stijanic-docker
# heroku run bash
# heroku logout

FROM debian:bullseye

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
  apt-get install -y libmariadbclient-dev && \
  apt-get install -y libpq-dev && \
  apt-get install -y libgnustep-base-dev && \
  apt-get install -y gnustep-make && \
  apt-get install -y libzmq3-dev

RUN groupadd -g 1001 stijanic

RUN useradd -rm -d /home/stijanic -s /bin/bash -g stijanic -u 1001 -p wyc60ExwcvnTA stijanic

USER stijanic

WORKDIR /home/stijanic

ENV PORT 8080

EXPOSE 8080

COPY --chown=stijanic:stijanic . /home/stijanic

RUN echo 'export GEM_HOME=$HOME/.gems' >> ~/.bashrc
RUN echo 'export PATH=$PATH:$GEM_HOME/bin' >> ~/.bashrc
RUN GEM_HOME=$HOME/.gems gem install bundler
RUN GEM_HOME=$HOME/.gems $HOME/.gems/bin/bundler install

RUN php composer.phar install
RUN php composer.phar update

RUN pip3 install -r requirements.txt

RUN echo 'export NODE_PATH=$HOME/node_modules' >> ~/.bashrc
RUN echo 'export PATH=$PATH:$NODE_PATH/.bin' >> ~/.bashrc
RUN npm install

RUN echo 'export GNUSTEP_MAKEFILES=/usr/lib/GNUstep/Makefiles' >> ~/.bashrc

CMD ["node", "node.js/4.2.4/_Node.js/learnyounode/http-json-api-server.js", "8080"]
