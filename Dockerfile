FROM python:3.9-slim

WORKDIR /app

# RUN pip install fastapi uvicorn

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt


COPY ./app/ .