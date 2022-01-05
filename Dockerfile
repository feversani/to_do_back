FROM python:3.9-alpine

WORKDIR /api

#RUN pip install flask

#RUN pip freeze > requirements.txt

ENV FLASK_APP app.py

ENV FLASK_RUN_HOST 0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

CMD ["flask", "run"]