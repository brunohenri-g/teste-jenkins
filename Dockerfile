# Usar uma imagem base oficial do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app


ARG TESTE
ENV TESTE=$TESTE
# Copiar o arquivo Python da máquina local para o diretório de trabalho no container
COPY hello.py .

# Executar o script Python quando o container for iniciado
CMD ["python", "hello.py"]