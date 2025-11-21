FROM python:3.12-slim

WORKDIR /app

# system deps
RUN apt-get update && apt-get install -y gcc libsndfile1 --no-install-recommends && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

COPY . /app

ENV PYTHONPATH=/app

EXPOSE 8000

CMD ["uvicorn", "product_image_quality_scoring.modeling.predict:app", "--host", "0.0.0.0", "--port", "8000"]
