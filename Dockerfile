FROM kdelfour/cloud9-docker

RUN apt-get update

RUN gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 || gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

RUN curl -sSL https://get.rvm.io | bash -s stable --rails

RUN /bin/bash -l -c "rvm install ruby 1.9"
RUN /bin/bash -l -c "rvm install ruby 2.2.5"

EXPOSE 8080


