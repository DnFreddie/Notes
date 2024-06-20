---
"date:": 2023-09-06
"type:": AI
---
## User agent 

**Stirng of thex sends to server that identyfies the borwser params**

>[!example]
>User-Agent: 
Mozilla/5.0 (Windows NT 10.0; Win64; x64) 
AppleWebKit/537.36 (KHTML, like Gecko) 
Chrome/94.0.4606.61 Safari/537.36
### Seting up 

U have to pass it in the headers 
```python
import requests

url = 'https://example.com'
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36'
}

response = requests.get(url, headers=headers)

# Process the response

```

#### Expenations 
1. `Mozilla/5.0`: This is a legacy convention and is often included for historical reasons. It's a reference to the original Mozilla browser.
    
2. `(Windows NT 10.0; Win64; x64)`: This part indicates the client's operating system and architecture. In this example, it's Windows 10 64-bit.
    
3. `AppleWebKit/537.36 (KHTML, like Gecko)`: This part indicates the rendering engine used by the client. In this case, it's WebKit, which is the same engine used by Safari.
    
4. `Chrome/94.0.4606.61`: This part specifies the browser software and its version. In this example, it's Google Chrome version 94.0.4606.61.
    
5. `Safari/537.36`: Some user agent strings include information about Safari compatibility. In this case, it's indicating that the client is compatible with Safari.

>[!quote] [sneakers_bots_project](/sneakers_bots_project.md) 

