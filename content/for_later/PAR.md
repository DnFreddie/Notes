---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: PAR
---

# Postivie Acknowledgment with Retransmission

Protocol designed to handel errors and ensure realliabele data
transmittion ## Action The recivier with PAR sends a acknowdglement
message to the sender when it recives the pocket sucessfully ## Errors
If the reciver does not get the ACK in a given time frame it retransmitt
the packet

The process continouse till the sender rtecives ACK or the system
reaches **the maximum number of retransmitions**
