---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: request_journey_backend
---

## Read

-   Once the connection is added to the [accept
    queue](/Notes/posts//posts/request_journey/accept_queue), the
    [system call](/Notes/posts/systemcall) **accept** is used to pop it
    from the queue and return a file descriptor representing the
    connection (*now the backend has a pointer to the connection*).
-   The backend then uses the [system call](/Notes/posts/systemcall)
    **recv**.
-   Another [system call](/Notes/posts/systemcall) **read** is used.
    -   We **copy** the data to the \[\[system application layer\]\].
        -   This data is encrypted raw bytes.
        -   ==We do not know yet whether it’s a request.==
        -   We must also account for read time, as the [receive
            queue](/Notes/posts/request_journey/recive_queue) has a
            limited size.

1

## Decrypt

Since I performed the [TLS session](/Notes/posts/TLS_session) earlier, I
can get the **symmetric key** and exchange it with the client. - This is
partially handled by the [TMP](/Notes/posts/TMP). - The packet is then
**copied** (check for decryption in place) and decrypted.

## Parsing

We determine the protocol and begin parsing accordingly. - **Issues:** -
It may be that we do not see the full request it does not fit the
[bandwith](/Notes/posts/Network/Phisicall/bandwidth). - In this case,
you have to wait for the request to be fully received.

## Decoding

-   Determine the type of encoding used in the message (e.g., ASCII or
    UTF-8) based on the backend’s language.
    -   Decompress compressed parts of the request.
    -   **Deserialization** happens here.

## Process

We **fire the event**, the callback occurs, and we process the request.

------------------------------------------------------------------------

[request_journey_kernel](/Notes/posts/request_journey/request_journey_kernel)
