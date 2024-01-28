if [ -f /.dockerenv ]; then
    echo "WARNING: You are running this script inside a docker container!";
    sleep 2 # give user time to exit
fi

cd dev

# fast most of the time as it should be cached
UID=$(id -u) GID=$(id -g) docker compose build

docker compose up $@
