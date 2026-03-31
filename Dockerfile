FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
ARG CACHEBUST=1
COPY index.html /app/
COPY icons/ /app/icons/
EXPOSE 80
