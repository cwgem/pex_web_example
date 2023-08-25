FROM python:3.11.4-bullseye

USER root
RUN useradd -d /home/gunicorn -m -s /bin/bash gunicorn

USER gunicorn
RUN mkdir /home/gunicorn/app
COPY config/gunicorn.config.py /home/gunicorn/app
COPY web_pex.pex /home/gunicorn/app

ENTRYPOINT /home/gunicorn/app/web_pex.pex
EXPOSE 8000