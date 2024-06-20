---
date:: 2023-08-02
type:: Protocol
---
## TLS session 
When a connection is established between a client and a server
- TLS protocol allows them to negotiate the encryption parameters and establish a secure channel for communication

1. **Handshake**: The client and server initiate a TLS handshake. During this process, they negotiate the TLS version, encryption algorithms, and other parameters to establish a secure connection.
    
2. **Encryption**: Once the handshake is completed, the client and server use encryption algorithms to encrypt the data being transmitted between them. This ensures that the data is secure and cannot be easily intercepted or read by unauthorized parties.
    
3. **Data Transfer**: After the TLS session is established, data can be securely transmitted between the client and server. The encrypted data is decrypted at the receiving end.
    
4. **Certificate Verification**: As part of the TLS handshake, the server typically presents a digital certificate to the client, which contains information about the server's identity. The client can verify this certificate to ensure it is communicating with the intended server.

>[!quote] [TLS_session](/TLS_session.md) [[request_journey_backend#Decrytp]]