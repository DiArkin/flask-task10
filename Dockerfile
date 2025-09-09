FROM python:3.9-slim

WORKDIR /app
COPY req.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY hello /app/app.py

CMD ["python", "app.py"]
