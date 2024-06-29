Mnageign vms headlessley 

[Docs](https://kifarunix.com/start-and-stop-kvm-virtual-machines-from-command-line/)

```bash
 virsh [OPTION]... <command> <domain> [ARG]...
```

## Converting image
- [qcow2](https://www.qemu.org/docs/master/system/images.html) 
    It is  a format that ullows to dynamically allocate space based on need

```bash 
 qemu-img convert -f qcow2 -O raw focal-server-cloudimg-amd64.img focal-server-cloudimg-amd64.raw

```

## Creating a img 


```bash
 #Formatting 'hal9000.img', fmt=qcow2 size=10737418240 backing_file=focal-server-cloudimg-amd64.img backing_fmt=qcow2 cluster_size=65536 lazy_refcounts=off refcount_bits=16
 qemu-img create -b focal-server-cloudimg-amd64.img -f qcow2 -F qcow2 hal9000.img 10G
```

