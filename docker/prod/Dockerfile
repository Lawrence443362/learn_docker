FROM elixir:1.18.3  AS build

WORKDIR /app

RUN mix local.hex --force && mix local.rebar --force

COPY ./../../lib ./lib
COPY ./../../mix.exs ./

RUN mix deps.get
RUN mix compile

FROM elixir:1.18.3

WORKDIR /app

COPY --from=build /app/_build /app/_build
COPY --from=build /app/lib /app/lib
COPY --from=build /app/mix.exs /app

CMD ["iex", "-S", "mix"]