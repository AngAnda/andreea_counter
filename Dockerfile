# Folosim o imagine oficială de Python
FROM python:3.9-slim

# Setăm directorul de lucru în container
WORKDIR /app

# Copiem fișierele de aplicație în container
COPY app.py /app

# Instalăm Flask
RUN pip install Flask

# Expunem portul 5000
EXPOSE 5000

# Comanda de rulare a aplicației
CMD ["python", "app.py"]
