`docker build --tag arch --file Dockerfile.arch .`
`docker run --rm -it -v $PWD:/usr/local/src/ -w=/usr/local/src/ arch`
