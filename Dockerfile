FROM nginx
EXPOSE 80
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

#copy the ssl certificate and key to the ssl folder
COPY certificate/. /etc/nginx/ssl/
COPY conf /etc/nginx