{ 
  description = "A Nix-managed Typst resume environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    typst-packages = {
      owner = "typst";
      repo = "packages";
      type = "github";
      ref = "main";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, typst-packages }:
    let
      # Define fontAwesomeFree and fontsConf once for reuse
      fontAwesomeFree = pkgs: pkgs.stdenv.mkDerivation {
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

      fontsConf = pkgs: pkgs.makeFontsConf {
        fontDirectories = [ (fontAwesomeFree pkgs) ];
      };

      # Helper function to create a devShell for a given system
      mkDevShell = system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in pkgs.mkShell {
        packages = with pkgs; [
          typst
        ];

        # Set environment variables for fontconfig
        shellHook = ''
          export FONTCONFIG_FILE=${(fontsConf pkgs)}/fonts.conf
          export XDG_DATA_DIRS=$XDG_DATA_DIRS:${(fontAwesomeFree pkgs)}/share
          echo "Nix development shell for Typst with Font Awesome fonts activated."
        '';
      };

      # Helper function to create a package for a given system
      mkPackage = system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in pkgs.stdenv.mkDerivation {
        pname = "resume-pdf";
        version = "latest";
        src = pkgs.lib.cleanSource ./. ; # Use cleanSource to explicitly fetch current directory
        buildInputs = [ pkgs.typst ];
        FONTCONFIG_FILE = "${(fontsConf pkgs)}/fonts.conf";
        XDG_DATA_DIRS = "${(fontAwesomeFree pkgs)}/share";
        installPhase = ''
          mkdir -p $out/share/doc
          typst compile resume.typ $out/share/doc/resume.pdf
        '';
      };

    in
    {
      devShells = {
        x86_64-linux = { default = mkDevShell "x86_64-linux"; };
        aarch64-darwin = { default = mkDevShell "aarch64-darwin"; };
      };

      packages = {
        x86_64-linux = { default = mkPackage "x86_64-linux"; };
        aarch64-darwin = { default = mkPackage "aarch64-darwin"; };
      };
    };
}