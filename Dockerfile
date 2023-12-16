FROM golang:alpine as compilar
WORKDIR /go/src/app
COPY main.go .

RUN CGO_ENABLED=0 go build -o /app main.go

FROM scratch
COPY --from=compilar /app /app
ENTRYPOINT ["/app"]