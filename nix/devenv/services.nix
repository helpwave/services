{ pkgs, ... }:

let
in {
  services = {
    postgres = {
      enable = true;
      listen_addresses = "127.0.0.1";
      initialScript = ''
        CREATE USER postgres SUPERUSER PASSWORD 'postgres';
      '';
      initialDatabases = [
        { name = "task-svc"; }
        { name = "user-svc"; }
        { name = "impulse-svc"; }
      ];
    };

    redis.enable = true;
  };
}
