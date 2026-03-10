{ ... }:

{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  hardware.bluetooth.settings = {
    General = {
      Enable = "Source,Sink,Media,Socket";
      Experimental = true;
    };
  };
}
