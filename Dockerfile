FROM nginx:latest

# Remove a configuração padrão do NGINX
RUN rm /etc/nginx/conf.d/default.conf

# Copia configurações customizadas
COPY prod/nginx.conf /etc/nginx/nginx.conf
COPY prod/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80