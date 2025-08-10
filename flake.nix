{ 
  description = "A Nix-managed Typst resume environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    typst-packages = {
      url = "github:typst/packages";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, typst-packages }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs { inherit system; };

        fontAwesomeFree = pkgs.stdenv.mkDerivation {
          name = "fontawesome-free-desktop-fonts";
          src = pkgs.fetchzip {
            url = "https://use.fontawesome.com/releases/v6.5.2/fontawesome-free-6.5.2-desktop.zip";
            sha256 = "6392bc956eb3d391c9d7a14e891ce8010226ffc0c75f1338db126f13cb9cb8f4";
          };
          installPhase = ''
            mkdir -p $out/share/fonts/opentype
            cp -r $src/fontawesome-free-6.5.2-desktop/otfs/* $out/share/fonts/opentype/
          '';
        };

        fontsConf = pkgs.makeFontsConf {
          fontDirectories = [ fontAwesomeFree ];
        };

        buildResume = pkgs.stdenv.mkDerivation {
          pname = "resume-pdf";
          version = "latest";
          src = ./.; # Use the current directory as source
          nativeBuildInputs = with pkgs; [
            typst
          ];
          buildPhase = ''
            export TYPST_FONT_PATHS="${fontAwesomeFree}/share/fonts/opentype"
            export FONTCONFIG_FILE=${fontsConf}/fonts.conf
            typst compile resume.typ resume.pdf
          '';
          installPhase = ''
            mkdir -p $out/share/doc
            cp resume.pdf $out/share/doc/resume.pdf
          '';
        };

      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            typst
          ];
          shellHook = ''
            export TYPST_FONT_PATHS="${fontAwesomeFree}/share/fonts/opentype"
            export FONTCONFIG_FILE=${fontsConf}/fonts.conf
            echo "Nix development shell for Typst with Font Awesome fonts activated."
          '';
        };

        packages.default = buildResume;
      }
    );
}