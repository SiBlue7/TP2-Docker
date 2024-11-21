FROM alpine:3.20

RUN apk add --no-cache curl

ENTRYPOINT ["curl"]

CMD ["https://exemple.com"]