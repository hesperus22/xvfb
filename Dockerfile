FROM ubuntu:16.04

RUN apt-get update && apt-get install -y xvfb x11vnc 

EXPOSE 5900

ENV DISPLAY=:0

VOLUME /tmp/.X11-unix

ADD start.sh /start.sh

RUN chmod +x start.sh

ENTRYPOINT ["/start.sh"]

CMD ["1024x768x24+32"]