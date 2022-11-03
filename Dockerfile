# Dockerfile
FROM python:3.7-stretch
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip freeze > requirements.txt
#RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
