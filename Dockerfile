FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir fastapi uvicorn[standard]
ENV PORT=8000
EXPOSE 8000
CMD ["sh", "-c", "uvicorn API_Test:app --host 0.0.0.0 --port ${PORT:-8000}"]
