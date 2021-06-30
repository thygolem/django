FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /django
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .