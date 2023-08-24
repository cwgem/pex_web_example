FROM python:3.11.4-bullseye
RUN mkdir /app
COPY web_pex.pex /app
EXPOSE 8000
ENTRYPOINT /app/web_pex.pex