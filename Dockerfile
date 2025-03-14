FROM python:3.11-buster

WORKDIR /app

# Copy and install the pip requirements
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy your application files (including mkdocs.yml, docs, etc.)

# Use mkdocs as the entrypoint
ENTRYPOINT ["python", "-m", "mkdocs"]

