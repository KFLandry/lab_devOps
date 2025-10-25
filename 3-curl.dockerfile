FROM alpine/curl:8.14.1

RUN adduser -D appuser

USER appuser

ENTRYPOINT ["curl"]

CMD ["--help"]
