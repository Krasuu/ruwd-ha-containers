FROM python:3.10.7-slim

RUN apt-get update && \
    apt-get install -y gcc make && \
    useradd -u 1000 -s /bin/bash appuser

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER appuser

COPY . .
EXPOSE 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]