FROM nginx:stable-alpine

COPY ./compose/nginx/conf /etc/nginx/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories &&\
apk update &&\
apk add tzdata &&\
rm /etc/nginx/conf.d/default.conf &&\
cp /etc/nginx/blog-yzp.conf /etc/nginx/conf.d/ &&\
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
echo 'Asia/Shanghai' >/etc/timezone