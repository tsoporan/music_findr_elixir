# Dockerfile for music_findr

FROM elixir:1.8.1

WORKDIR /app

COPY . /app

RUN mix local.hex --force  # Force confirm

RUN mix do compile
