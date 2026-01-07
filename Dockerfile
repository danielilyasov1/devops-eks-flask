FROM python:3.12-slim

WORKDIR /app

# Install dependencies first (better layer caching)
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app/ .

# Security: run as non-root user
RUN useradd -m appuser
USER appuser

ENV PYTHONUNBUFFERED=1
ENV PORT=5000
EXPOSE 5000

CMD ["python", "app.py"]
