{
  description = "Shell de dev pour Typst (watch + helix via zellij)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        startScript = pkgs.writeShellScriptBin "start" ''
        zellij --layout "$ZELLIJ_LAYOUT"
        '';

        # Layout zellij déclaré ici, versionné avec le flake
        zellijLayout = pkgs.writeText "typst-layout.kdl" ''
          layout {
            pane size="10%" {
              command "typst"
              args "watch" "document.typ"
            }
            pane size="90%" {
              command "hx"
              args "document.typ"
            }
          }
        '';
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ typst typstyle tinymist helix zellij startScript ];

          shellHook = ''
            export ZELLIJ_LAYOUT="${zellijLayout}"
            echo "Lancer start pour mettre en place l'env."
          '';
        };
      });
}
