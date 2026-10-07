FROM python:alpine

LABEL org.opencontainers.image.source="https://github.com/ycadin/bonjour"

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY le_script.py .

CMD [ "python", "le_script.py" ]
