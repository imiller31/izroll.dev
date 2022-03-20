FROM node:slim AS webpage

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
COPY svelte.config.js ./
COPY src ./src/

RUN npm ci

COPY . ./

RUN ls -l ./src/lib/components/
RUN npm run build

FROM rust:1.59 as builder

RUN USER=root cargo new --bin izroll-server
WORKDIR ./izroll-server
COPY --from=webpage /app/izroll-server/Cargo.toml /app/izroll-server/Cargo.toml
RUN cargo build --release
RUN rm src/*.rs

COPY --from=webpage /app/izroll-server/ ./

RUN rm ./target/release/deps/izroll_server*
RUN cargo build --release


FROM debian:buster-slim
EXPOSE 8000

COPY --from=builder /izroll-server/target/release/izroll-server ./izroll-server-binary
COPY --from=webpage /app/izroll-server/static ./izroll-server/static

RUN chmod +x izroll-server-binary
ENTRYPOINT [ "./izroll-server-binary" ]