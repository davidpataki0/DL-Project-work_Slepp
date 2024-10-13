FROM python:3.8-slim

WORKDIR /app

### Needed for future use
# RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

### Needed for future use
# RUN pip install gdown

RUN mkdir -p ./content

### Needed for future use
# RUN gdown https://drive.google.com/uc?id=18-Lq0PpRpfiNHV7CozqDQUbH1iTrtnMT -O ./content/flowers102.tgz \
#     && mkdir -p ./content/flowers102 \
#     && tar -xzf ./content/flowers102.tgz -C ./content/flowers102

# RUN gdown https://drive.google.com/uc?id=1h_oR2jMJWO3JbIM63Oj2-2SjvnZkN3NI -O ./content/celeba.zip \
#     && unzip ./content/celeba.zip -d ./content/celeba

COPY . /app

# Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]