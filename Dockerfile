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
  apt update && \
  apt install -y tzdata && \
  apt install -y ruby && \
  apt install -y ruby-dev && \
  apt install -y php && \
  apt install -y composer && \
  apt install -y python3 && \
  apt install -y python-is-python3 && \
  apt install -y python3-pip && \
  apt install -y nodejs && \
  apt install -y npm && \
  apt install -y clojure && \
  apt install -y leiningen && \
  apt install -y vim && \
  apt install -y libmariadbclient-dev && \
  apt install -y libpq-dev && \
  apt install -y libgnustep-base-dev && \
  apt install -y gnustep-make && \
  apt install -y libzmq3-dev && \
  apt install -y swig && \
  apt install -y gdbserver

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
