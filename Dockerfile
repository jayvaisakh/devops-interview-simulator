FROM nginx:alpine
 
LABEL maintainer="Vaisakh Jayan"
LABEL description="AI-powered DevOps Interview Simulator served via Nginx"
LABEL version="v1"
 
WORKDIR /usr/share/nginx/html
 
COPY . /usr/share/nginx/html/
 
RUN chmod -R 755 /usr/share/nginx/html/
 
EXPOSE 80
 
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
