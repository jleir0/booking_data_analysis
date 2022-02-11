FROM python:3.9
 
COPY requirements.txt .
RUN pip install uwsgi && pip install -r requirements.txt
 
# Puerto HTTP por defecto para uWSGI
ARG UWSGI_HTTP_PORT=8000
ENV UWSGI_HTTP_PORT=$UWSGI_HTTP_PORT
 
# Aplicacion por defecto para uWSGI
ARG UWSGI_APP=main
ENV UWSGI_APP=$UWSGI_APP
 
# Se crea un usuario para arrancar uWSGI
RUN useradd -ms /bin/bash admin
USER admin
 
# Se copia el contenido de la aplicacion
COPY app /app
 
# Se copia el fichero con la configuración de uWSGI
COPY uwsgi.ini uwsgi.ini
 
# Se establece el directorio de trabajo
WORKDIR /app
 
# Se crea un volume con el contenido de la aplicacion
VOLUME /app
 
# Se inicia uWSGI
ENTRYPOINT ["uwsgi", "--ini", "/uwsgi.ini"]