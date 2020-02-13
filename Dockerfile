FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
ADD ./code/requirements.txt /app/
RUN pip install -r requirements.txt
ADD ./code/ /app/
