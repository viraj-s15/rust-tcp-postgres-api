# build

FROM rust:1.69-buster as builder

WORKDIR /app

# build args
ARG DB_URL

ENV DB_URL=$DB_URL

COPY . .

RUN cargo build --release

# prod

WORKDIR /usr/local/bin

COPY --from=builder /app/target/relase/rust-docker-crud-api .

CMD ["./rust-docker-crud-api"]
