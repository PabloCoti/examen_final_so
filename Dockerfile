FROM python:latest

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV FLASK_APP=app
ENV FLASK_ENV=development

WORKDIR /code
COPY . .

RUN pip install --upgrade pip
RUN pip install flask

EXPOSE 5000

CMD ["flask", "run", "-h", "0.0.0.0", "-p", "5000"]
