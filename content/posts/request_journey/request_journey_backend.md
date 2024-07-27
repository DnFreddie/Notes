+++
title = 'request_journey_backend'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

## Read
- Once the connection is added to the [accept queue]({{< ref "/posts/request_journey/accept_queue.md" >}}), the [system call]({{< ref "posts/systemcall.md" >}}) **accept** is used to pop it from the queue and return a file descriptor representing the connection (*now the backend has a pointer to the connection*).
- The backend then uses the [system call]({{< ref "posts/systemcall.md" >}}) **recv**.
- Another [system call]({{< ref "posts/systemcall.md" >}}) **read** is used.
  - We **copy** the data to the [[system application layer]].
    - This data is encrypted raw bytes.
    - ==We do not know yet whether it's a request.==
    - We must also account for read time, as the [receive queue]({{< ref "posts/request_journey/recive_queue.md" >}}) has a limited size.

$$1$$

## Decrypt
Since I performed the [TLS session]({{< ref "posts/TLS_session.md" >}}) earlier, I can get the **symmetric key** and exchange it with the client.
- This is partially handled by the [TMP]({{< ref "posts/TMP.md" >}}).
- The packet is then **copied** (check for decryption in place) and decrypted.

## Parsing
We determine the protocol and begin parsing accordingly. 
- **Issues:**
  - It may be that we do not see the full request it does not fit the  [bandwith]({{< ref "posts/Network/Phisicall/bandwidth.md" >}}).
    - In this case, you have to wait for the request to be fully received.

## Decoding
- Determine the type of encoding used in the message (e.g., ASCII or UTF-8) based on the backend's language.
  - Decompress compressed parts of the request.
  - **Deserialization** happens here.

## Process
We **fire the event**, the callback occurs, and we process the request.

---
 [request_journey_kernel]({{< ref "posts/request_journey/request_journey_kernel.md" >}})

