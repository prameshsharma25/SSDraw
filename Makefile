format:
	black --line-length 79 .

lint:
	flake8 .

build:
	docker build -t ssdraw-image .