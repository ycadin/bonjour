FROM python:alpine

# pour faire apparaître une section Packages dans les détails (colonne à droite) de la page GitHub du repo (attention, il peut être nécessaire de se déconnecter / reconnecter)
LABEL org.opencontainers.image.source="https://github.com/ycadin/bonjour"

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY le_script.py .

CMD [ "python", "le_script.py" ]
