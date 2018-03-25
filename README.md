PMMP Startup Scripts
====================

PMMP server startup scripts for building PMMP images and auto-deploying PMMP
servers.

Build a docker image with:

`$ docker build -t <name> . `

Run the docker image with:

`$ docker run -it -p 19132:19132/udp <name> `

Once the container is running, you can connect from your MCPE app on port
19132. 
