## Docker multi stage example

>This example will build 2 differents containers in a same Dockerfile

>The first container will be install gcc tools and build a C artefact

>The second container will be execute C artefact

`$ git clone https://github.com/gmandrade/multi-stage-docker-c.git && cd multi-stage-docker-c`
`$ docker build -t multi-stage-container .`
`$ docker run -it multi-stage-container`
