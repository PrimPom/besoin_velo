# besoin_velo
## Description
Ce repo contient les expérimentations faites sur le dataset  dans le but 
d'
## Objectifs
Les objectifs à couvrir sont :
- [ ] Faire une exploration avec un notebook
- [ ] Proposer une approche ML permettant de répondre aux besoins de la tâche
- [x] Mettre en place un projet capable d'être déployé et d'être automatiser au fil du temps 
- [x] S'assurer que le projet est reproductible (Docker)
- [ ] Mise d'un processus de tracking des données, des modèles et des expérientations (Pas encore complet)
- [x] Fournir des commentaires dans le code
- [ ] Ajouter les références utiliser et le lien vers le repo Dagshub


## Contenu du repo
Pour mettre en place ce repo, j'ai fait usage du package `Kedro` qui génère des composants pour un projet de data science
afin de ce concentrer sur l'exploration et l'expérimatation.
Le répertoire est organisé comme suit :
- *.dvc* : dossier généré par l'outil de version de données pour permettre de tracker les données et les modèles.\
A été versionné dans ce cas les données du dossier `bixi/data`
- *.github* : contient les différents workflows pour github action. Celui ajouté sert à vérifier la qualité du code avec pylint\flake8
- *kickstarter* : dossier créé en utilisant la commande de départ de kedro `kedro new --starter=spaceflights` 
Il contient des sous dossiers dont conf, data (qui a été tracké par dvc), notebooks (qui contient le notebook d'exploration), 
src (dans lequel j'ai mis en place les différents pipelines), docs(pour le rapport).
  (Voir référence Kedro pour plus de détails)
- *.dockerignore* : fichier pour gérer les dossiers ou fichiers que l'on ne souhaite pas avoir dans notre image docker
- *.dvcignore* : fichier pour gérer les dossiers ou fichiers que l'on ne souhaite pas tracker par DVC
voir référence Dagshub pour voir les données trackées par DVC sur Dagshub
- *.gitignore* : fichier pour gérer les dossiers ou fichiers que l'on ne souhaite pas tracker par GIT
- *Dockerfile* : pour s'assurer de la reproductivité de notre expérimentation
- *README.md* : le fichier actuel

## Procédure d'exécution
Pour exécuter cette expérimentation:
- cloner le répertoire en local\
Ensuite 3 possibilités s'offrent :
- Pour le notebook : ouvrir le notebook `bixi_experimentation.ipynb` situé dans bixi/notebooks à partir 
d'un éditeur comme jupyter notebook d'anaconda et exécuter les différentes cellules
- Pour le code conçu dans une perspective de déploiement : il faut avoir docker d'installer sur son ordinateur et le lancer,
ensuite ouvrir le répertoire actuel dans un éditeur comme vscode ou pycharm par exemple, construire son image et par la 
suite le run. Ces éditeurs offrent ces possibilités au travers de boutons et de simples cliques sur ces derniers (en ajoutant 
l'extension de docker) . Une fois ces étapes faites vous pouvez taper `kedro run` pour lancer les différents pipelines mises en place.
Pour ceux qui préfèrent les invites de commandes, voir référence docker. \
PS : Il faudra peut être dezipper data.zip dans le dossier  kickstarter. Habituellement dans une équipe, elle serait accessible directement 
par Dagshub (DVC, MLflow)
- Créer un environnement virtuel venv, faire `cd bixi`, `pip install -r src/requirements.txt` pour installer
les dépendances, et `kedro run` pour exécuter les pipelines (de données et de modélisation).
## TODO
- Mettre en place un moyen de consommer le modèle ML (api ou plateforme web)
- Faire plus d'explorations de données mais aussi de modèles afin d'en comparer plusieurs (avec pycaret, auto-ml)
- Faire du "hyperparamètres tunning "en fonction des résultats obtenus
- Mettre en place les différents tests sur le modèle (test unitaire, d'intégration, de performance, A/B, de résistance,
d'acceptation des utilisateurs, de sécurité et de confidentialité)
- Monitorer les performances du modèle pour capter le data drift et mettre en place une stratégie CT(continous training)
---
## Réferences
- [Kedro](https://kedro.org/#get-started)
- [Docker](https://docs.docker.com/get-started/02_our_app/)
- [Dagshub](https://dagshub.com/PrimPom/campagne_prediction)
- [Sckit-learn](https://scikit-learn.org/stable/)
- [Bixi Data]()
- [Geeksforgeeks](https://www.geeksforgeeks.org/)