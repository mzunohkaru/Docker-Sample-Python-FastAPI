FROM python:alpine3.19

WORKDIR /app

# RUN pip install fastapi uvicorn

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt


COPY ./app/ .