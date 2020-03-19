FROM nginx:stable-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories &&\
apk update &&\
apk add tzdata &&\
rm /etc/nginx/conf.d/default.conf &&\
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
echo 'Asia/Shanghai' >/etc/timezone &&\
cp ./compose/nginx/blog-yzp.conf /etc/nginx/conf.d/blog-yzp.conf
