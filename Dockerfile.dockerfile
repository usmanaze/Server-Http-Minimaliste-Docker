# Utiliser une image Python de base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier Python dans l'image
COPY app/server.py .

# Exposer le port 8000
EXPOSE 8000

# Commande à exécuter au démarrage du conteneur
CMD ["python", "server.py"]
