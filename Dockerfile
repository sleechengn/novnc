FROM rockylinux:9.1.20221221
RUN dnf install -y epel-release
RUN dnf install -y novnc which procps net-tools
ENV vnc=
COPY ./start.sh /
RUN chmod 777 /start.sh
EXPOSE 80/tcp
ENTRYPOINT /start.sh

