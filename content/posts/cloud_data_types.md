+++
title = 'Cloud data types'
date = 2024-08-08T21:32:30+02:00
draft = false 
+++
| Storage Type     | Description                                                                                     | Key Features                                      |
|------------------|-------------------------------------------------------------------------------------------------|--------------------------------------------------|
| [File Storage](https://aws.amazon.com/what-is/cloud-file-storage/)      | **Data is stored in files** organized in folders, which are arranged in a hierarchy of directories. |  Easy to manage<br>- Suitable for unstructured data |
| [Block Storage](https://aws.amazon.com/what-is/block-storage/)     | Stores **blocks of binary data**, similar to `Protobufs`.                                           |  Unique identifiers<br>- High performance        |
| [Object Storage](https://aws.amazon.com/what-is/object-storage/)    | Data is stored in **unstructured objects with associated metadata.**                               |  Virtually unlimited scalability<br>- Lower cost for large volumes of data |
| [Instance Storage](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html)  | Provides **temporary block-level storage** for Amazon EC2 instances, located on disks attached to the host computer. Ideal for temporary storage of frequently changing information. | - Ephemeral storage<br>- Varies by instance type and size<br>- Suitable for buffers, caches, and scratch data |
