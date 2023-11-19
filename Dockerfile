FROM rust:1.74.0 as builder
WORKDIR /usr/src/my-project
COPY ./my-project/ .
RUN cargo install --path .
FROM debian:bookworm-slim
RUN apt-get update & apt-get install -y extra-runtime-dependencies & rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/my-project /usr/local/bin/my-project
CMD ["my-project"]