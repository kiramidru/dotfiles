{ ... }:
{
  # Services
  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        governor = "powersave";
        turbo = "never";
        freqLimit = 1800000; # 1.8 GHz
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };

  services.tlp.enable = true;
  powerManagement.powertop.enable = true;

  # Logging
  services.journald.extraConfig = ''
    Storage=volatile
    RateLimitInterval=0
    RateLimitBurst=0
  '';

  # Boot
  boot.kernelParams = [
    "amd_pstate=active"
    # "amd_pstate.epp=balance_power" # Manual control
    "amdgpu.dpm=1"
    "amdgpu.ppfeaturemask=0xffffffff"
    "nohz_full=1-$(nproc)"
  ];
  boot.kernel.sysctl = {
    "vm.swappiness" = 10; # less aggressive swap usage
    "kernel.nmi_watchdog" = 0; # reduce CPU wakeups
    "kernel.sched_migration_cost_ns" = 5000000; # optimize scheduler
  };
}
