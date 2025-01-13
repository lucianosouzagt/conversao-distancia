FROM python:3.9.21-alpine3.21

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app/

EXPOSE 5000

CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]


