FROM mhart/alpine-node:slim-13

WORKDIR /app

ADD . /app

COPY --from=gcr.io/berglas/berglas:latest /bin/berglas /bin/berglas

CMD /bin/berglas exec -- node server.js
