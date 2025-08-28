format:
	black .

lint:
	flake8 .

build:
	docker build -t ssdraw-image .