+++
title = 'Dick encryption'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    
- U have to use
	**cryptsetup luksformat** partition name
	*it uses  the AES [Encryption](/Encryption.md) *
	- This will <mark style="background: #FF5582A6;">overwrite the entire disk</mark>
- Then in order to use it u have to open it 
	*cryptesetup open /dev/sdd1 device_name*  

### Decryption on [Boot procces](/Boot procces.md) 

>[!example] U have to create **/etc/crypttab** file 
>![Pasted_image_20240427161821.png](/Pasted_image_20240427161821.png)
> "**-**" is for the prompt on boot