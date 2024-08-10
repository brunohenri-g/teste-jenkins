import os

# Suponha que a variável de ambiente que você quer imprimir seja 'HOME'
variable_name = 'TESTE'
variable_value = os.getenv(variable_name)

print(f"Valor da variável de ambiente {variable_name} => {variable_value}")