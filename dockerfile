FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

WORKDIR /git

COPY Pipfile Pipfile.lock /git/
RUN pip install pipenv && pipenv install --system
RUN pip install django-crispy-forms

COPY . /git/