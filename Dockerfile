FROM python:3.9-alpine
MAINTAINER eliezer
RUN apk update
COPY . ~
WORKDIR ~
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
