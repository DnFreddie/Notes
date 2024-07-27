+++
title = 'iSCSI'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Internet Small computer System Interface 

- Send **SCSI commands**
- Now [RFC_Standard]({{< ref "posts/RFC_Standard.md" >}}) 

- Makes **remote disk** look and operate like **local disk**
	- Like [Fibre_chanel]({{< ref "posts/Fibre_chanel.md" >}}) 
- Can be managed quite well in software 
	- Drivers available for many operating systems 
	- ==No proprietary topologies or hardwere needed==

- To proviede **redudance**  use [Multipath]({{< ref "posts/Multipath.md" >}}) techinqe

>[!tip]- Conecti iSCSI on boot
>1. edit iscsid.con and change the mannual startup to *automatic*
>2. do the same in */etc/iscsi/nodes*  in every file

>[!quote] [FCoE]({{< ref "posts/FCoE.md" >}}) [SAN]({{< ref "posts/Network/Data/SAN.md" >}}) [NAS]({{< ref "posts/Network/Data/NAS.md" >}})