# stage de build
FROM golang:1.4-alpine AS build

WORKDIR /app

COPY . /app

EXPOSE 8000

RUN CGO_ENABLED=0  go build -o api hello.go

# stage imagem final
FROM scratch

WORKDIR /app

COPY --from=build /app/api ./

EXPOSE 8000

CMD [ "./api" ]
