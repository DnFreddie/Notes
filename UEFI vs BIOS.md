[[Boot_Prcooccess.canvas|Boot_Prcooccess]]

| **UEFI**                                                                        | *BIOS*                             |
| ------------------------------------------------------------------------------- | ---------------------------------- |
| Unified Extenxsible FIrmware Interface                                          | Basic Input Output System          |
| Uses Partition(*storse the system there*)                                       | Config stored on the *motherboard* |
| support for the **big drives**                                                  | **2 TB drive**                     |
| ==new==                                                                         | ==old==                            |
| **secure boot**(digital key that system is not malware [Digital certificate](/Digital certificate.md)) |                                    |
**

>[!bug] Some computers refer to UEFI as BIOS
### Partition types 

>

| **MBR**(*Master Booot Record*)                                                        | **GPT**(*GUID partition table*)                                  |
| ------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| One partion when the hardrive info is stored (**at the beginning** of the hard drive) | Hard drive info stored in **multiple places** on the hard driveh |
|                                                                                       |                                                                  |


>[!important] **GPT**  creates fake Master record in order to be compatible with  the Bios 

![Pasted_image_20240425173903.png](/static/Pasted_image_20240425173903.png)


