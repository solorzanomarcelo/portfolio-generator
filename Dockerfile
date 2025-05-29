FROM python:3.10-slim

RUN apt-get update && apt-get install -y git

RUN pip install Jinja2

COPY build_portfolio.py /usr/bin/build_portfolio.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
