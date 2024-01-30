if [ -f /.dockerenv ]; then
    echo "WARNING: You are running this script inside a docker container!";
    sleep 2 # give user time to exit
fi

cd dev

# increase this everytime the dev-go Dockerfile changes
export DEV_TAG=testing-1 # TODO

# fast most of the time as it should be cached
UID=$(id -u) GID=$(id -g) docker compose build

docker compose up $@
