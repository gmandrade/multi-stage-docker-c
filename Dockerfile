FROM ubuntu:16.04 as ubuntu
COPY main.c /root/main.c
RUN apt-get update && \
    apt-get install -y gcc && \
    gcc -o /root/main /root/main.c

FROM ubuntu:16.04
COPY --from=ubuntu /root/main /root/main
CMD ["/root/main"]
