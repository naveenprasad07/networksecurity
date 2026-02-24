FROM python:3.10-slim

WORKDIR /app
COPY . /app/

RUN apt update -y && apt install awscli -y

RUN apt-get update && \
    apt-get install -y awscli && \
    rm -rf /var/lib/apt/lists/*

    
CMD ["python3","app.py"]