## Desafio Full Cycle

Publicar uma imagem docker hub atendendo os seguintes requisitos:
- Criar um programa simples em golang, que imprima a seguinte frase: Full Cycle Rocks!! 
- A imagem não pode conter mais que 2 mb
- Criar imagem docker utilizando Dockerfile Multi-stage builds para compilar e rodar o programa em golang. Atendendo ao requisito de tamano


### Comandos básicos
```bash
#Gerar a imagem
docker build -t edgarslima/golang-desafio-docker:latest .

#Rodar e testar a imagem
docker run --rm --name go edgarslima/golang-desafio-docker
````

Verificando tamanho da imagem
```bash
docker images

REPOSITORY                         TAG       IMAGE ID       CREATED        SIZE
edgarslima/golang-desafio-docker   latest    1e3c9439cb86   17 hours ago   1.8MB

```

Subindo imagem docker para Docker Hub

```bash
docker push edgarslima/golang-desafio-docker

```

Testar imagem criada no Docker Hub
```bash
#Apaga imagem local
docker rmi -f $(docker images edgarslima/golang-desafio-docker -aq)

#Baixando e rodando imagem do Docker Hub
docker run --rm --name go edgarslima/golang-desafio-docker
```

### Autor

- [@edgarslima](https://www.github.com/edgarslima)


### Licença

[MIT](https://choosealicense.com/licenses/mit/)