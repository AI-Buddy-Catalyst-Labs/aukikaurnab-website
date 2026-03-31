FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
COPY icons/ /usr/share/nginx/html/icons/
EXPOSE 80
