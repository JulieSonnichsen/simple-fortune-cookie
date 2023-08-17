FROM golang
WORKDIR /app
COPY . .
RUN go build -o backend
EXPOSE 6379
CMD ["./backend"]
