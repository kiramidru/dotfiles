{ pkgs, ... }:
{
  users.users.kira = {
    packages = with pkgs; [ spotify ];
  };

  services.dnsmasq = {
    enable = true;
    settings = {
      "listen-address" = "127.0.0.1";
      "conf-dir" = "/etc/dnsmasq";
      "resolv-file" = "/etc/dnsmasq-resolv.conf";
    };
  };
  environment.etc."dnsmasq".source = ./dnsmasq;
  environment.etc."dnsmasq-resolv.conf".text = ''
    nameserver 1.1.1.1
    nameserver 1.0.0.1
  '';
}
