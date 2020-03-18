FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1
WORKDIR /django_app
COPY . /django_app

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories &&\
apk update &&\
pip install pipenv -i https://mirrors.aliyun.com/pypi/simple/ &&\
apk add libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc openssl-dev curl \
jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev python3-dev mariadb-dev &&\
pipenv install --system --deploy --ignore-pipfile &&\
rm /usr/local/lib/python3.7/site-packages/haystack/inputs.py &&\
cp ./apps/blog/six.py /usr/local/lib/python3.7/site-packages/django/utils &&\
cp ./apps/blog/encoding.py /usr/local/lib/python3.7/site-packages/django/utils &&\
cp ./apps/blog/inputs.py /usr/local/lib/python3.7/site-packages/haystack &&\
cp ./compose/django/start.sh /start.sh

#COPY Pipfile /django_app/Pipfile && Pipfile.lock /django_app/Pipfile.lock
#RUN sed -i 's/\r//' /start.sh
#RUN chmod +x /start.sh