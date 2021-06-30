# django
Stack de Django y PostgreSQL con docker
DJANGO DOCKER POSTGRESQL REDIS REACTJS
https://www.youtube.com/watch?v=aMqs_y6dZw4&t=801s

docker-compose.yml
version: '3.8'
services:
 app:
   container_name: djangoapp
   image: app:django
   build: .
   volumes:
     - .:/django
   ports:
     - 8000:8000
   command: python manage.py runserver 0.0.0.0:8000
Dockerfile
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /django
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
 
 

requirements.txt
asgiref==3.4.0
Django==3.2.4
pytz==2021.1
sqlparse==0.4.1

$ docker-compose build
$ docker-compose run --rm app django-admin startproject core .
(--rm se borrará el contenedor)
(app=imagen configurada en los archivos)
(django-admin startproject core . = comando de django-admin)
$ docker-compose up
