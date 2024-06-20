---
"date:": 2023-10-29
"type:": Linux
---
## For python project

*Remember to add poetry.lock to the repo*
*Propably need to replace ./. with self*

```nix
 {
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      pkgs = forAllSystems (system: nixpkgs.legacyPackages.${system});
    in
    {
      packages = forAllSystems (system: {
        default = pkgs.${system}.poetry2nix.mkPoetryApplication { projectDir = ./.; };
      });

      devShells = forAllSystems (system: {
        default = pkgs.${system}.mkShellNoCC {
          packages = with pkgs.${system}; [
            (poetry2nix.mkPoetryEnv { projectDir = ./.; })
            poetry
            go
            chromium
          ];
        };
      });

    };
}
```
---
[[nix]] [[flake]][SNIPPETS_MAIN](/SNIPPETS_MAIN.md)