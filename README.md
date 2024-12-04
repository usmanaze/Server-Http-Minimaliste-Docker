# Basic Docker HTTP Server

## Description
Ce projet met en place un serveur HTTP minimaliste en Python, déployé dans un conteneur Docker. Il s'agit d'une application simple qui sert une page HTML sur le port `8000`. Ce projet a pour objectif de démontrer les bases de Docker sans utiliser de frameworks Python externes.

## Prérequis
Avant de commencer, assurez-vous que les outils suivants sont installés sur votre machine :
- [Docker](https://www.docker.com/) : version 20.10 ou supérieure.
- [Docker Compose](https://docs.docker.com/compose/) : version 1.29 ou supérieure.

## Structure du Projet
Voici la structure du projet :


### Contenu des Fichiers
- **`server.py`** : Code source du serveur HTTP en Python.
- **`Dockerfile`** : Définit l'image Docker utilisée pour exécuter l'application.
- **`docker-compose.yml`** : Simplifie le déploiement en utilisant Docker Compose.
- **`README.md`** : Fichier de documentation du projet.

## Installation et Utilisation

### Méthode 1 : Exécution avec Docker uniquement
1. **Étape 1 : Cloner le projet**
   Téléchargez ou clonez le projet depuis GitHub (ou votre dépôt local) :
   git clone <URL_DU_DEPOT>
   cd basic-docker-project
2. **Étape 2 : Construire l'image Docker**
    Utilisez la commande suivante pour construire l'image Docker
    docker build -f Dockerfile.dockerfile -t nom-server .
3. **Étape 3 : Exécuter le conteneur Docker**
    Lancez le conteneur en exposant le port 8000 :
    docker run -p 8000:8000 nom-server
4. **Étape 4 : Accéder au serveur**
    Ouvrez un navigateur et accédez à http://localhost:8000. Une page affichant "Hello, Docker!" doit apparaître.

### Méthode 2 : Utiliser Docker Compose
1. **Étape 1 : Lancez Docker Compose** 
    Pour construire et exécuter le conteneur :
    docker-compose up --build
2. **Étape 2 : Accéder au serveur**
    Ouvrez un navigateur et accédez à http://localhost:8000. Une page affichant "Hello, Docker!" doit apparaître.
3. **Étape 3 : Arretez le conteneur** 
    Tapez la commande :
    docker-compose down
