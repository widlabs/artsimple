FROM widlabs/phpspace:latest

COPY . /app
RUN chmod -R 777 /app/storage
RUN chmod -R 777 /app/bootstrap/cache

COPY ./docker/config/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
