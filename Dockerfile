FROM rust:1.59 as builder

RUN USER=root cargo new --bin izroll-server
WORKDIR ./izroll-server
COPY ./izroll-server/Cargo.toml ./Cargo.toml
RUN cargo build --release
RUN rm src/*.rs

ADD ./izroll-server/ ./

RUN rm ./target/release/deps/izroll_server*
RUN cargo build --release


FROM debian:buster-slim
EXPOSE 8000

COPY --from=builder /izroll-server/target/release/izroll-server ./izroll-server-binary
ADD ./izroll-server/static ./izroll-server/static

RUN chmod +x izroll-server-binary
ENTRYPOINT [ "./izroll-server-binary" ]