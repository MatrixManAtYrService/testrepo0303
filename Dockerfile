FROM debian:10
RUN apt update
RUN apt -y install git

# get code
COPY . /app
WORKDIR /app
ARG GIT_REV="HEAD"
RUN git checkout $GIT_REV

# install app
RUN ln -s /app/myapp /usr/local/bin/myapp

CMD myapp
