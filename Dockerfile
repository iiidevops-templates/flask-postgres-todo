FROM dockerhub/library/python:3.8

RUN apt update && apt-get install -y libpq-dev
RUN pip install Flask==1.1.2 Flask-SQLAlchemy==2.4.4 psycopg2==2.8.6

COPY app /app
WORKDIR /app

EXPOSE 5000
CMD python3 -u app.py
