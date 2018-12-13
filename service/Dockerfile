FROM gradle:latest as gradlebuild
WORKDIR /root
COPY ./service/ .
RUN gradle build service.java



FROM java:latest
WORKDIR /root
COPY --from=gradlebuild /root/service/service.jar /root/service

EXPOSE 2351

RUN cd service
ENTRYPOINT [ "java" "-jar" "service.jar" ]

# docker volume create modelsVol