FROM microsoft/dotnet:2.1-sdk:latest as renderbuild
WORKDIR /root
COPY ./render/ .

RUN dotnet build
RUN dotnet ef database update 

RUN dotnet publish -o renderer



FROM microsoft/dotnet:2.1-runtime
COPY --from=renderbuild /root/render/renderer.dll /root

EXPOSE 5523

ENTRYPOINT [ "dotnet" "renderer.dll" ]