#!/bin/sh
python manage.py makemigrations
python manage.py migrate
gunicorn izone.wsgi:application -w 4 -k gthread -b 0.0.0.0:8000  -preload --chdir=/django_app

