FROM alpine:3.14
EXPOSE 8000
ARG HOST
ARG PORT
ARG USER
ARG PASSWRORD
ARG DB
WORKDIR /www
RUN apk update
RUN apk add openjdk11
RUN apk add git && git clone https://github.com/ATer-Oganisyan/otus-user-crud.git && cd otus-user-crud && jar xf mysql.jar && javac OtusHttpCrudServer.java && apk del git && rm OtusHttpCrudServer.java
ENTRYPOINT java -classpath /www/otus-user-crud OtusHttpCrudServer $HOST $PORT $USER $PASSWRORD $DB v11