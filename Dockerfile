FROM nginx:stable-alpine

VOLUME /roms

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ppsspp-server.sh /usr/bin/ppsspp-server.sh

RUN apk add bash
RUN apk add inotify-tools

EXPOSE 80

CMD ["bash", "-c", "/usr/bin/ppsspp-server.sh"]
