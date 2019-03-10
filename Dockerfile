# Dockerfile for music_findr

FROM elixir:1.8.1

RUN apt-get update \
    && apt-get install -y postgresql-client inotify-tools

# Install node & npm
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get -y install nodejs

WORKDIR /app

COPY . /app

RUN mix local.rebar --force \
    && mix local.hex --force \
    && mix archive.install hex phx_new 1.4.1

EXPOSE 4000

ENTRYPOINT ["/app/entrypoint.sh"]
