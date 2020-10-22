FROM nginx
RUN mkdir -p /configuration/ssl
RUN mkdir /etc/nginx/logs
RUN touch /etc/nginx/logs/error.log
RUN chmod 777 /etc/nginx/logs/error.log
RUN touch /etc/nginx/logs/access.log
RUN chmod 777 /etc/nginx/logs/error.log
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl /configuration/ssl
RUN chmod -R 777 /configuration
COPY static-html-directory /usr/share/nginx/html
