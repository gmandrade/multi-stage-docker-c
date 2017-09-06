FROM ubuntu:16.04 as ubuntu
WORKDIR /root/
COPY teste.c /root/teste.c
RUN apt-get update && \
    apt-get install -y gcc && \
    gcc -o /root/teste /root/teste.c

FROM ubuntu:16.04
WORKDIR /root/
COPY --from=ubuntu /root/teste /root/teste
CMD ["./teste"]
