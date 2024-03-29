# erickubenka/angular-docker-boilerplate

With this repository you can develop node and npm based angular applications without installing node to your local
machine. You just set up the new application with the following instructions.

# Getting Started

## First time configuration

The following commands will show you, how to build up an docker image with few steps to get running a full npm/node
container with an angular boilerplate app.

### Build container image and start

````
# Clone this repostitory
# Edit Dockerfile and replace the github credentials with your own.
docker-compose build
docker-compose up -d
docker logs angular-app -f
# Wait for finished
## Node Modules will be created
## Bootstrap angular application will be created
````

No you can try to access http://localhost:4200. If you can't reach the website, then please try the following:

````
docker-compose down
# Now change /anuglar-app/package.json line "ng-serve" to "ng serve --host 0.0.0.0 --watch true --poll=1500"
docker-compose up -d
````

Now you are fine. Visit http://localhost:4200 again and you should see a fresh angular app running.
> Note: ERROR: angular-app/xxx already exists errors can be ignored.

### Change upstream URL

Clean the history and change upstream URL.
````
rm -rf .git/

git init
git add --all
git commit -m "Initial commit"
git remote add origin git@github.com:erickubenka/buchstabenbattle-app.git
git push -u origin main
````


## Running an initialized app

If you changed your upstream git url, and pushed the initialized app, it is quite simple to get new developers ready to
work.

````
docker build -t code-fever/angular-app:latest .
docker-compose up -d
docker logs angular-app -f
# Wait for finished
````

> Note: This can take a while, because all node_modules are loaded to your local machine.

> Note: ERROR: angular-app/xxx already exists errors can be ignored.

That's it! - Hang over to http://localhost:4200 on your machine!

# Troubleshooting

## ng-serve does not update on source change

Sometimes `ng serve` won't recognize your changes and won't refresh your page while you are changen some files
in `src/`. Therefore, you can add the `--poll=2000` option to your `ng serve` command in your `package.json`. This
should fix this by adding a polling mechanism to the given sources.

