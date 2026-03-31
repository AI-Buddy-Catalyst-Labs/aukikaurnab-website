FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf
COPY . /tmp/site/
RUN cp /tmp/site/nginx.conf /etc/nginx/conf.d/default.conf && \
    cp /tmp/site/index.html /app/ && \
    cp -r /tmp/site/icons/ /app/icons/ && \
    rm -rf /tmp/site
EXPOSE 80
