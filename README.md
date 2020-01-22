# automation-example-test-site
A full web application for example test cases or demo in different test automation frameworks.

# Getting Started
The following commands will instruct you, how to run this docker container to develop the angular app.
````
docker build -t code-fever/angular-app:latest .
docker-compose up -d
docker logs angular-app -f
# Wait for finished (Can take a while because node_modules are created)
# Thats it
# Hang over to localhost:4200 on oyur machine, you should be proived to angular demo site
````

Note: ERROR: angular-app/xxx already exists errors can be ignored.

### First time configuration
The following commands will show you, how to setup an angular app from scratch with docker, without adding npm or node or something else on your local machine. 
```` 
docker build -t code-fever/angular-docker:latest .
docker-compose up -d
docker logs angular-app -f
# Wait for finished
## Node Modules will be created
## Bootstrap angular application will be created
docker-compose down
# You can skip following step, when 
# Change ng serve in angular-app/package.json to ng serve --host 0.0.0.0
docker-compose up -d
````