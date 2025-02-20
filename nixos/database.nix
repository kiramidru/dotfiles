{pkgs, ...}: {
  # postgres
  services.postgresql = {
    enable = true;
    ensureDatabases = ["mydatabase"];
    enableTCPIP = true;
    # port = 5432;
    authentication = pkgs.lib.mkOverride 10 ''
      #...
      #type database DBuser origin-address auth-method
      local all       all     trust
      # ipv4
      host  all      all     127.0.0.1/32   trust
      # ipv6
      host all       all     ::1/128        trust
    '';
  };
  services.cassandra = {
    enable = true;
    listenAddress = "127.0.0.1";
    rpcAddress = "127.0.0.1";
    extraConfig = {
      start_native_transport = true;
    };
  };
}
