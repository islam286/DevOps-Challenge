FROM python:3.7-alpine
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
CMD $(cat .env | xargs) && python hello.py
EXPOSE 8000

