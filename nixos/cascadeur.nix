{ stdenv
, lib
, fetchzip
}:
stdenv.mkDerivation rec {
  pname = "vuetorrent";
  version = "1.5.7";

  src = fetchzip {
    url = "https://github.com/WDaan/VueTorrent/releases/download/v${version}/vuetorrent.zip";
    sha256 = "5REe5wtYnmkPnP5wroRbHbiEAqYXx8OHht0O79eVBjY=";
  };

  buildPhase = "";
  installPhase = ''
    mkdir -p $out
    mv public $out
  '';
}
