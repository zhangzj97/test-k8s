FROM nginx:stable as nginx
LABEL maintainer "Dylan Zhang <987883389@qq.com>"

WORKDIR /app

COPY . /usr/share/nginx/html

RUN sed -i 's|__TEST__|这是test3|g' /usr/share/nginx/html/index.html

EXPOSE 80

CMD [ "nginx", "-g","daemon off;" ]
