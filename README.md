# elastos-docker
Dockerfile for Elastos (ELA), with ELA node and Elastos.ELA.Utilities.Java included.


# Building

```bash
docker build -t elastos .
```


# Running

```bash
# block and wallet dir
mkdir data
docker run --rm -itd --name iela -p 8989:8989 -v `pwd`/data:/opt/elastos elastos
```


# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq/elastos/>:

```bash
docker run --rm -itd --name iela -p 8989:8989 -v `pwd`/data:/opt/elastos mixhq/elastos
```
