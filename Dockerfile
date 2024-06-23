# Use a imagem base específica do Bun
FROM oven/bun:latest AS base
WORKDIR /app

# Copia os arquivos de dependências
COPY package.json bun.lockb ./

# Instala as dependências de produção
RUN bun install --production

# Copia o código-fonte
COPY . .

# Construir o projeto
RUN bun run build

# Configuração do ambiente de runtime
FROM oven/bun:latest AS runtime
WORKDIR /app

# Copia os arquivos necessários do build
COPY --from=base /app/node_modules ./node_modules
COPY --from=base /app/dist ./dist

# Define variáveis de ambiente e expõe a porta
ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321

# Comando para iniciar a aplicação
CMD node ./dist/server/entry.mjs
# CMD ["bun", "run", "serve"]
