# Usar uma imagem base oficial do Python
FROM python:3.9-slim

ARG db_user
ARG db_pass

# Definir o diretório de trabalho dentro do container
WORKDIR /app

RUN echo "O valor do db_user é: $db_user"

ENV db_user=$db_user
ENV db_pass=$db_pass
# Copiar o arquivo Python da máquina local para o diretório de trabalho no container
COPY hello.py .

# Executar o script Python quando o container for iniciado
CMD ["python", "hello.py"]