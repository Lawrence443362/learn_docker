FROM elixir:1.18.3

WORKDIR /app

RUN mix local.hex --force && mix local.rebar --force

COPY ./lib ./lib
COPY mix.exs ./

RUN mix deps.get
RUN mix compile

CMD ["iex", "-S", "mix"]

