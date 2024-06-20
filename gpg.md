# Gnu Pg
[Docs](https://www.maketecheasier.com/verify-authenticity-linux-software-digital-signatures/)
- [Linux](/obisdian_ntoes/notes_obsidian/Templates/Linux.md)  utility  that verifies the [[Digital certificate|digital signature]] of the package
	- It' usually marked with the **checksum** file

###  Doing it manually 

```bash
sha256sum -c SHA256SUMS
```

### Doing it with the gpg 
```bash
gpg --verify SHA256SUMS.sign SHA256SUMS
```
>[!bug] U most likely get a meessage
*Can't get the signature No public key*
This means you don’t have the public key on your computer, which is normal. You have to import it from a keyserver.

```bash
gpg --keyserver keyring.debian.org --recv-keys DF9B9C49EAA9298432589D76DA87E80D6294BE9B
```