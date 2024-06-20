---
"date:": 2023-10-20
---

### To get rid of the  not required  geneterations 

```bash 
sudo nix-collect-garbage -d
```

- To list them use 

```bash 
sudo nix-rebuild list-generations
```




## Nix flakes 

- Packages 
	- its the source code of your app 
- dev-shell 
	- Its u'r environment 
- Apps 
	- it tells nix what to run and when (*similarly to the containers*)

Git respect history of git so it will not find itself if it hasn't been added


- to run the   developer environment type **nix develop**

- nix shell nixpkgs#google-chromkjjke
- nix build .#dockerImages.x86_64-linux.default
- docker load -i ./result


>[!quote] [nix Templates](/code_snippets/nix Templates.md)
