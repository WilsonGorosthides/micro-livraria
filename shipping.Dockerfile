# Imagem base derivada do Node
FROM node

# Diretório de trabalho dentro do container
WORKDIR /app

# Comando para copiar os arquivos do projeto para a pasta /app da imagem
COPY . /app

# Comando para instalar as dependências
RUN npm install

# Comando para inicializar (executar) a aplicação quando o container for criado
CMD ["node", "/app/services/shipping/index.js"]