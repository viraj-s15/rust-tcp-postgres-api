# Rust Postgres Docker Template

A rust crud api which can be deployed and used direclty with docker

Starting the db separately

`docker compose up -d db `

View containers

`docker ps -a`

Lauch postgres shell

`docker exec -it db psql -U postgres`   

Build 

`docker compose build`

Run the entire service

`docker compose up rustapp`

Dont forget to add your own image
