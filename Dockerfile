FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y git ffmpegthumbnailer
COPY entrypoint.sh /app/0din
WORKDIR /app/0din
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["/app/0din/entrypoint.sh"]
