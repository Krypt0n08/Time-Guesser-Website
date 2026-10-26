FROM python:3.11-slim

# Arbeitsverzeichnis im Container
WORKDIR /app

# Umgebungsvariablen für Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# System-Abhängigkeiten für PostgreSQL installieren
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Python-Pakete installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Projektdateien kopieren
COPY . .