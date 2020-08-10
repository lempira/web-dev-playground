FROM python:3

RUN apt update && apt install -y netcat
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

