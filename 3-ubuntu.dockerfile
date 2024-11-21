FROM ubuntu:20.04

COPY scripts/am-i-ubuntu.sh /test/am-i-ubuntu.sh

RUN apt-get update && apt-get install -y dos2unix && dos2unix /test/am-i-ubuntu.sh && chmod +x /test/am-i-ubuntu.sh

ENTRYPOINT ["bash", "/test/am-i-ubuntu.sh"]