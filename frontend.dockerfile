FROM bitwalker/alpine-elixir-phoenix:latest

COPY frontend/ /usr/src/app/

WORKDIR /usr/src/app

ENV MIX_ENV prod

RUN mix do deps.get, compile

ENV SERVICE_PORT=4000

CMD ["mix", "phx.server"]
