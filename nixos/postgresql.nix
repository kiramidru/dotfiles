{...}: {
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_16;  # Choose version
    initialScript = pkgs.writeText "init.sql" ''
      CREATE ROLE myuser WITH LOGIN PASSWORD 'mypassword';
      CREATE DATABASE mydb WITH OWNER myuser;
    '';
  };
}
