{ pkgs, ... }:
{
  users.users.kira = {
    packages = with pkgs; [
      spotify
    ];
  };
  services.dnsmasq = {
    enable = true;
    extraConfig = ''
      conf-file=/etc/dnsmasq.d/spotify-blocklist.conf
    '';
  };

  systemd.services."spotify-blocklist-update" = {
    description = "Fetch Spotify ad domains and reload dnsmasq";
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = ''
        curl -s https://raw.githubusercontent.com/x0uid/SpotifyAdBlock/master/SpotifyBlocklist.txt \
          | tr ' ' '\n' \
          | sed 's/^/address=\/&\/0.0.0.0/' \
          > /etc/dnsmasq.d/spotify-blocklist.conf
        systemctl reload dnsmasq.service
      '';
    };
  };

  systemd.timers."spotify-blocklist-update" = {
    description = "Timer to update Spotify ad blocklist daily";
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
    };
  };
}
