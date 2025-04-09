start:
	iex -S mix
build_test:
	docker build -f docker/dev/Dockerfile -t my_elixir_app_test .
run_test:
	docker run -it --rm -v C:\Users\user\Desktop\learn_docker\lib:/app/lib my_elixir_app
build_prod:
	docker build -f docker/prod/Dockerfile -t my_elixir_app_test .
run_prod:
	docker run -it --rm my_elixir_app
