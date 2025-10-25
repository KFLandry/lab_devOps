## Build stage
FROM golang:1.21-alpine as builder

WORKDIR /app

COPY ./go-app/go.mod ./go-app/go.sum ./
RUN go mod download

# Copy the source code and build the binary
COPY ./go-app .
RUN CGO_ENABLED=0 GOOS=linux go build -o server .

## Runtime stage
FROM scratch

COPY --from=builder /app/server .

EXPOSE 8080

CMD ["./server"]
