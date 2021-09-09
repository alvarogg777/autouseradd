FROM bats/bats:v1.4.1

RUN apk update; apk add gcc make linux-headers musl-dev;
COPY ./ /build
WORKDIR /build
RUN make all

