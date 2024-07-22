+++
title = 'linux_unmasked'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    When you use an OS like Linux, you must constantly familiarize yourself with the feeling that you will be surprised by it. You can't just learn Linux...

But regardless of the surprise, you usually have a solid understanding of the system. You know more or less how things work, what's required, and so on. That's what I thought while studying for the CompTIA Linux+ certification.

I'm sure you have in mind Linux mantras "everything is a file" or that "you control the processes", but little do you know...
<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2FLinux%20unmasked%2Flinux_img_scientis.jpeg?alt=media&token=ea9052bf-2fa3-4100-b678-f03e1c863530"  style="border-radius:10px;" width="30%" height="50%" alt="Linux scientist"/>
</div>

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">Everything in Linux is a file and ... </h2>

So it's quite obvious that devices on your system are virtual files in a `/dev` directory, processes are files, even the request queue is a file. But what exactly does "file" mean? When you think about it, you probably imagine something similar to the request structures; it has some headers (type of the file, size, etc.), some metadata (permissions, and ownership), and the main contents.

But this is all a lie...

You use `ls` probably all the time, but did you know there's a `-i` option?

```bash
   -i, --inode  print the index of the inode
```

So what exactly is an inode and why all of a sudden can't files live without it? An inode is a data structure that holds the metadata of the file. If we really want to define what a file is, it's raw data and the pointer to inode that defines it.

Ok, but what are the directories then? 

Directories are just the table of file names and inodes, that's quite simple. But how can we use this knowledge except boasting about it at beer night? So there comes another myth...

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">I can have as many files as I want (as long as I have the space). </h2>

<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2FLinux%20unmasked%2Fupset_linux_scientist.jpeg?alt=media&token=04333227-8ef1-4d5d-97ed-8807842048e9"  style="border-radius:10px;" width="30%" height="50%" alt="Upset computer scientist"/>
</div>

That's not quite right, you see on most file systems *except ZFS*, the inode count is set on file system creation.

You can check it using `stat` on `/var/log/lastlog`.

If you all of a sudden start creating a lot of files, you get a funny message:

**File Creation Failures Due to Inode Exhaustion?**

The limit of the inodes has been exceeded. It's not as unusual as you might think. The cloud storage ain't cheap, so if we request a small space and all of a sudden our server starts to utilize cache, we might very quickly find that despite having 3GB space left, the server can't work...

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">We Can Control the Process </h2>

<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2FLinux%20unmasked%2Fcontrol_the_proccess.jpeg?alt=media&token=6ab7e21f-cb65-4928-aebc-0da276c75918"  style="border-radius:10px;" width="30%" height="50%" alt="Control the proccess"/>
</div>
"I control the process," he said, while the horde of zombies flooded the system. The process is a beast, period. You might think it will succumb to your task manager, but it won't.

But let's begin the examination. Processes are, by nature, greedy. They want much more than they can chew. That's why they're requesting far more RAM than they require. Thank God the kernel knows about it and also over-allocates the memory. So, from now on it shouldn't be a surprise that your system is using 8.5 GB memory when it has only 8 GB because programs will use it over time, not instantaneously.

You think you kill programs, right? 

All you usually do is ask nicely by sending a signal **SIGTERM**, which is politely saying, "Please stop." To kill the process no matter what, you send **SIGKILL** or `kill -9`, and yes, it literally does the job.

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">Process live states </h2>

<div style="text-align: center;">
<img src=https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2FLinux%20unmasked%2Fprocess_state.png?alt=media&token=c2dd0c37-8cdf-49b8-9767-84dada7f64a7""  style="border-radius:10px;" width="30%" height="50%" alt="Procces states"/>
</div>

Processes are usually killable, but there are two exceptions. Because a process has many states in its life, it can be stopped (meaning paused), or it can be asleep, or it can be in the **eternal sleep**. And that's the issue when the process is in **uninterrupted sleep**; you can't kill it. Usually, this happens when the process has hardware interactions or is waiting for certain kinds of kernel synchronization primitives.

You know what else doesn't die easily? Zombies.

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">What is dead can never die</h2>

Zombies are just another state of the process. They don't have to be dangerous. All they are is the product of the sloppiness of the programmer. So, when the parent process spawns small children and they achieve certain small goals, and then the parent process doesn't clean them from the process table, they remain there but only as a record. Eventually, the kernel will get rid of them, but it's a sign of some troublesome software.

You can create zombies on your own. Here is the formula:
```python
import os, sys, time
ttlForParent = 60;
for i in range(0, 10):
# This creates the copy of the main process as 
# a child process but with diffrent PID 
   pid_1 = os.fork()
   print(pid_1)
   print("Hello Worlds!!!")
   if pid_1 == 0:
       sys.exit();
time.sleep(ttlForParent);
os.wait()
```
 see the <a href="https://medium.com/naukri-engineering/creating-troubleshooting-the-zombie-process-in-python-f4d89c46a85a" style="color: violet;">source</a>     


When you're done check for your little creations

```awk
ps ux | awk '{if($8=="Z+") print}'
```

Remember that you can't kill them because they are already dead. In order to get rid of them, you have to know one small detail about the process.

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">Because all processes are one family</h2>

<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2FLinux%20unmasked%2Ffamily_process.jpeg?alt=media&token=1d633252-cabb-42a7-8b0c-625f31bfe0c4"  style="border-radius:10px;" width="30%" height="50%" alt="Family procces picture"/>
</div>
They're all one big genealogical tree. They are spawned on top of each other (starting from one), so process one is the parent of process two, and so on. Therefore, you have to kill the one above the PID of the most recent zombie child to get rid of the horde.

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">To sum up</h2>

Linux has so much more mysteries to discover. So, as you delve deeper into the Linux universe, don't be afraid of the unexpected. Grab your terminal and explore the rabbit hole.

*P.S. Wish me luck for my CompTIA Linux+ examination.*

--- 
