start:
	iex -S mix
build:
	docker build -t my_elixir_app .
run:
	docker run -it --rm my_elixir_app
