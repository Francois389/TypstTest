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
        zellij --layout ./layout.kdl
        '';
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ typst typstyle tinymist helix zellij startScript ];

          shellHook = ''
            echo "Lancer start pour mettre en place l'env."
          '';
        };
      });
}
