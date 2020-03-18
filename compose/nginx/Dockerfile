FROM nginx:stable-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories &&\
apk update &&\
rm /etc/nginx/conf.d/default.conf &&\
cp ./compose/nginx/blog-yzp.conf /etc/nginx/conf.d/blog-yzp.conf
