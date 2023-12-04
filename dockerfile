FROM sapmachine:lts-jre-ubuntu
RUN apt-get update && apt-get install unzip

ADD https://github.com/mwittrock/cpilint/releases/download/v1.0.4/cpilint-1.0.4.zip /usr/cpilint.zip
RUN cd /usr && unzip cpilint.zip -d /usr

RUN chmod u+x /usr/cpilint-1.0.4/bin/cpilint

RUN export PATH=$PATH:/usr/cpilint-1.0.4/bin

RUN mkdir -p /app/cpi
RUN mkdir -p /app/cpi/flows

WORKDIR /app/cpi

COPY rules.xml rules.xml

CMD /usr/cpilint-1.0.4/bin/cpilint -rules /app/cpi/rules.xml -directory /app/cpi/flows

