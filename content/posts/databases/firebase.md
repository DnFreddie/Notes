+++
title = 'firebase'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

*Non Sql database*
## Startup 
- Get *credentials.json* from "**projectsetting/serviceaccounts**"
- Get **URL** from the *realtime database sectiono*
- install **firebase_adamin**
- Initialize the app
[Docs](https://firebase.google.com/docs/reference/functions/2nd-gen/python)

```sql
IMPORT FIREBASE_ADMIN
FROM FIREBASE_ADMIN IMPORT CREDENTIALS, DB

url = {"DATABASEurl": "HTTPS://FBASE-2D77D-DEFAULT-RTDB.EUROPE-WEST1.FIREBASEDATABASE.APP/"}
CRED = CREDENTIALS.cERTIFICATE("CREDENTIALS.JSON")
FIREBASE_ADMIN.INITIALIZE_APP(CRED, url)

REF = DB.REFERENCE('/')

```
## Functions 

| Fn                                 | Description                      |     
| ---------------------------------- | -------------------------------------- | ---------------------------------- | ------------------- | ----------------------- | --- | --- |
| db.reference('node name')        | *Call a particular child node*           |                                    |                     |                         |     |     |
| reference.set(new value)         | *Change the value of this node*          |                                    |                     |                         |     |     |
| ref.get()                        | *Get the value of the reference*         |                                    |                     |                         |     |     |
| reference.update({ node:value }) | *Create a new node*                      |                                    |                     |                         |     |     |
| reference.push().set("new value")| *Insert a new word*                       |                                    |                     |                         |     |     |
| reference.transaction(function)  | *Modify the whole node*                   |                                    |                     |                         |     |     |

---
[Pandas]({{< ref "posts/ZPythonref/pandas_py.md" >}})
[redis]({{< ref "posts/databases/redis.md" >}})
