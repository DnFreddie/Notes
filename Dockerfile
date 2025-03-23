FROM python:3.11-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["python", "-m", "mkdocs"]

