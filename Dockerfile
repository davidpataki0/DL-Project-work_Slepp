FROM python:3.8-slim

WORKDIR /app

# Alapcsomagok telepítése
RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

# pip frissítése
RUN pip install --upgrade pip

# Requirements fájl másolása
COPY requirements.txt .

# Csomagok telepítése
RUN pip install -r requirements.txt

# gdown telepítése a fájlok letöltéséhez
RUN pip install gdown

# Content mappa létrehozása
RUN mkdir -p ./content

# Fájlok letöltése és kicsomagolása a content mappába
RUN gdown https://drive.google.com/uc?id=18-Lq0PpRpfiNHV7CozqDQUbH1iTrtnMT -O ./content/flowers102.tgz \
    && mkdir -p ./content/flowers102 \
    && tar -xzf ./content/flowers102.tgz -C ./content/flowers102

RUN gdown https://drive.google.com/uc?id=1h_oR2jMJWO3JbIM63Oj2-2SjvnZkN3NI -O ./content/celeba.zip \
    && unzip ./content/celeba.zip -d ./content/celeba

# Projekt fájlok másolása
COPY . /app

# Jupyter Notebook indítása
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]