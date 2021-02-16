archlinux:latest / archlinux:base-devel-20210207.0.15200
Above version is unable to execute `pacman` properly due to `glibc` is missing, so fallback to older version.

// TODO: replace with latest archlinux version

# Command
`docker build --tag arch --file Dockerfile.arch .`

`docker run --rm -it -v $PWD:/usr/local/src/ -w=/usr/local/src/ arch`
