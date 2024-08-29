FROM python:3.6

WORKDIR /app

COPY Djago_Application /app/

RUN ls

COPY requirements.txt /app/

RUN apt-get update && pip install -r requirements.txt && cd reddy

ENTRYPOINT [ "python" ]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]




