FROM python:3.11-slim
WORKDIR /app
COPY . /app/
RUN apt-get update && apt-get install -y git ffmpeg \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
CMD ["python", "bot.py"]
