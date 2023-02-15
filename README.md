# Template application

**This app is using Rails 7.0.4.2 and Ruby 3.2.1**

## Items included in the repo

- **Core**:
    - Rails app
    - Uses PostgreSQL as the SQL database
    - Uses Redis for caching purposes
    - Uses Sidekiq to run background jobs
    - Uses standalone ActionCable process
- **App Features**:
    - TODO write about implemented controllers
- **Config**:
    - Log to STDOUT so that Docker can consume and deal with log output 
    - Secrets are loaded in with an `.env` file
    - Rewrites `config/database.yml` to use environment variables
- **Assets**:
    - Uses esbuild (`-j esbuild`)
    - Uses TailwindCSS (`-c tailwind`)
    - 
#### Clone this repo anywhere you want and move into the directory:

```sh
git clone https://github.com/Rviewer-Challenges/skeleton-ror-rest
cd skeleton-ror-rest
```

#### Make a copy of .env file.

```sh
cp .env.example .env
```

#### Build everything:

*It will take about 5-10 minutes to run this command for the first time,
depending on your CPU and internet speed. It fetches Docker images and builds
dependencies in the background. This only needs to happen once, all future starts will happen much faster*

```sh
docker compose up --build
```

### Potential errors:
##### Port being in use:
It usually means that something is already running on the port 8000. You can modify `.env`
file and update `DOCKER_WEB_PORT` variable.

##### Database not initialized
It is expected since we haven't done the db initialization yet. Please refer to the next paragraph

### Setup the initial database:
Code below needs to be executed _in parallel_ to previous command, so run it in another terminal without closing 
the current one
```sh
# You can run this from a 2nd terminal.
./run rails db:setup
```

*Contents and purpose of the `./run` script are described in a separate section below*

#### Check that everything works

Open <http://localhost:8000> in a browser to see if everything works fine

#### Running the test suite:
To run tests, use the following command. Again, it needs to be executed in with `docker compose up` 
running in another terminal. However, you can use the same terminal you used to setup database
```sh
# You can run this from the same terminal as before.
./run test
```

#### Stopping everything:

```sh
# Stop the containers and remove a few Docker related resources associated to this project.
docker compose down
```

You can start things up again with `docker compose up` and unlike the first
time it should only take seconds.

### Run script
There is a helper script that makes it easier to run some common commands. 
Run `./run` to get a list of available commands.
Check out the file itself in the project root folder for some more comments on what is available.
Of course, this is totally optional and you can continue using original `docker` commands to achieve the same results.


