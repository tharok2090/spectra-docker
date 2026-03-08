FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

# Clonar repo externo
RUN git clone https://github.com/francescogabrieli/Spectra.git .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]