FROM continuumio/miniconda3

WORKDIR /app

COPY src/ ./src
COPY requirements.txt ./
COPY Makefile ./

RUN pip3 install -r requirements.txt

RUN apt-get update && apt-get install -y \
    dssp \
    make

RUN make format

ENTRYPOINT ["python", "src/SSDraw.py"]