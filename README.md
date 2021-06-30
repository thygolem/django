# django
Stack de Django y PostgreSQL con docker Redis ReactJS

https://www.youtube.com/watch?v=aMqs_y6dZw4&t=801s


$ docker-compose build
(va a construir la imagen en función de la configuración de Dockerfile)

$ docker-compose run --rm app django-admin startproject core .

(--rm se borrará el contenedor)
(app=imagen configurada en los archivos)
(django-admin startproject core . = comando de django-admin para levantar el servicio de django)
Coniene instalar la extensión Live Serverritwickdey.liveserver de VSCODE para observar los cambios de manera sicronizada en el navegador

$ docker-compose up


$ docker exec -it djangoapp /bin/bash
(Entrar en el contendor; "djangoapp" es el nombre del contenedor)
