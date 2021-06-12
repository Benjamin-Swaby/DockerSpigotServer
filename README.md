# DockerSpigotServer
This docker container will be able to create a minecraft server on your machine. It will setup an environment and run a server. 


# Setup

## Dependancies
First of all you will need to install docker and docker compose
wether that be through apt , pacman or dnf.

```sudo apt install docker docker-compose```

etc ...


## Configuring the Server
in ```/etc/mcserver```
you can add the following files:

    - server.properties
    - ops.json
    - world/  (this is will be a folder)
    - world-nether/  (this is will be a folder)
    - world-end/  (this is will be a folder)
    - plugins/ (this is will be a folder)

if one or all of these aren't added they will be created and stored in
the same directory. so you can easily back up and change settings


## Building the image
```docker-compose up --build```
this will build the image and run the container. 
you can ctrl+c this to kill it but i recomend testing to see if it works first


## Detaching the image
you can run
```docker-compose up -d```
and it will run detached 
you can view it with 
```docker ps```

## stoping the server
you can just kill the container. 
but i'd recomend killing it from in game or through RCON (not yet added)





