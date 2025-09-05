{ pkgs, ... }:
{
  users.users.kira = {
    packages = with pkgs; [ spotify ];
  };

  services.dnsmasq = {
    enable = true;
    settings = {
      "listen-address" = "127.0.0.1";
      "conf-dir" = "/etc/dnsmasq/dnsmasq-conf.conf";
      "resolv-file" = "/etc/dnsmasq/dnsmasq-resolv.conf";
    };
  };
  environment.etc."dnsmasq".source = ./dnsmasq;
}
