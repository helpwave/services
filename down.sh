if [ -f /.dockerenv ]; then
    echo "WARNING: You are running this script inside a docker container!";
    sleep 2 # give user time to exit
fi

cd dev

docker compose down $@
