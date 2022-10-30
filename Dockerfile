FROM nginx:stable

LABEL maintainer="Rafal Klimczak <rafal.klimczak.1989@gmail.com>"

COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
