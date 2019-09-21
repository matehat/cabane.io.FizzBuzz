FROM bitwalker/alpine-elixir-phoenix:latest

COPY frontend/ /usr/src/app/

WORKDIR /usr/src/app

RUN mix do deps.get, compile

ENV SERVICE_PORT=4000
ENV MIX_ENV prod

CMD ["mix", "phx.server"]
