FROM python:3.14-slim-trixie
LABEL org.opencontainers.image.authors="sofie.vorren@gmail.com"
COPY pyproject.toml /usr/src/greeter/
COPY src/ /usr/src/greeter/src/
WORKDIR /usr/src/greeter
RUN pip install --no-cache-dir .
CMD ["greeter"]
