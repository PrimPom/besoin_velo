#Se baser une image python
FROM python:3.9

#Céer le répertoire de travail kickstarter
WORKDIR /kickstarter

# Copier kickstarter
COPY  kickstarter /kickstarter

#Installer les dépendances pour le projet
RUN pip install -r src/requirements.txt

