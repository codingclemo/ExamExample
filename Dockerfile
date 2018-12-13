FROM nginx:latest as nginxbuild

RUN head -n -2 etc/nginx/conf.d/default.conf > tmp.conf

COPY ./nginxDefaultConf.txt .
RUN cat nginxDefaultConf.txt >> tmp.conf
RUN cp tmp.conf /etc/nginx/conf.d/default.conf
RUN rm tmp.conf
RUN rm nginxDefaultConf.txt