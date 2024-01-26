FROM mcr.microsoft.com/dotnet/sdk:7.0 AS builder
WORKDIR /build
COPY . /build

COPY ./my-ssl.conf /usr/local/apache2/conf/my-ssl.conf
COPY ./certificate.crt /path/to/certificate.crt
COPY ./private.key /path/to/private.key

RUN dotnet tool install retypeapp --tool-path /bin
RUN retype build --output .docker-build/

FROM httpd:latest
COPY --from=builder /build/.docker-build/ /usr/local/apache2/htdocs/