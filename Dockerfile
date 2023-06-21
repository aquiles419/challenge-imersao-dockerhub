# Imagem base que será usada para executar o programa
FROM golang:1.17

# Define o diretório de trabalho dentro do contêiner
WORKDIR /go/src/app

# Copia o código-fonte para o diretório de trabalho
COPY . .

# Compila o programa em Go
RUN go build -o app

# Define o comando padrão que será executado quando o contêiner for iniciado
CMD ["./app"]
