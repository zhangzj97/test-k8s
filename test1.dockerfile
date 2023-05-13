FROM nginx:stable as nginx
LABEL maintainer "Dylan Zhang <987883389@qq.com>"

WORKDIR /app

COPY . /usr/share/nginx/html

EXPOSE 80

CMD [ "nginx", "-g","daemon off;" ]