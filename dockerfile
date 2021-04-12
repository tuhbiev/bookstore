FROM python

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

WORKDIR /git

COPY Pipfile Pipfile.lock /git/
RUN pip install pipenv && pipenv install --system

COPY . /git/