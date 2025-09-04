{ ... }:
{
  services.tlp = {
    enable = true;
    cpuFreqGovernor = "none";
    diskIdleTimeout = 120;
    wifiPowerSave = "enable";
    enableBluetooth = false;
  };
  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        governor = "powersave";
        turbo = "never";
        freqLimit = 3000000;
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };
  services.laptopModeTools = {
    enable = true;
    settings = {
      enableOnAC = false;
      lmAcquireDevices = true;
    };
  };
  powerManagement.powertop.enable = true;
}
