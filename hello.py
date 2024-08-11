# Abre o arquivo em modo de leitura
with open("worker.app/appsettings.json", 'r') as arquivo:
    # Lê e imprime cada linha do arquivo
    for linha in arquivo:
        print(linha, end='\n')