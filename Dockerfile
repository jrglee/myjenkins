FROM jenkins:latest

USER root
RUN apt-get update && apt-get install -y build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev wget
RUN cd /tmp && curl -OL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 && tar xvjf phantomjs-1.9.8-linux-x86_64.tar.bz2 && mv phantomjs-1.9.8-linux-x86_64 /usr/local/share && ln -s /usr/local/share/phantomjs-1.9.8-linux-x86_64 /usr/local/bin

USER jenkins
ADD plugins.txt /tmp/
RUN /usr/local/bin/plugins.sh /tmp/plugins.txt
