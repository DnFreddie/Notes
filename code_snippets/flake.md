### Good to know 
***U can install repo via adding the it as an input  and the call it later in the pkgs***

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
        default = pkgs.${system}.poetry2nix.mkPoetryApplication { projectDir = self; };
      });

      devShells = forAllSystems (system: {
        default = pkgs.${system}.mkShellNoCC {
          packages = with pkgs.${system}; [
            (poetry2nix.mkPoetryEnv { projectDir = self; })
            poetry
            go
            gcc
            nodejs
          ];
          shellHook = ''
            go mod tidy
            npm --prefix ./sveltdemoWeb/ i
            '';
        };
      });
      
      dockerImages = forAllSystems (system: {
        default = pkgs.${system}.dockerTools.buildLayeredImage {
          name = "my-flake-container";
          tag = "latest";
          contents = [ self.packages.${system}.default ];
          config.Cmd = [ "sh" ]; 
        };
      });


    };
}
```
 ---
[[nix]]  [[nix Templates]][SNIPPETS_MAIN](/SNIPPETS_MAIN.md)