---
categories:
- posts
date: "2024-05-23T11:49:02.000Z"
draft: false
title: Dont break easy preserve best version of your sytsem
---

![Broken system](/Notes/brokenComputer.jpg)

I’m sure you remember the feeling of your perfect setup.

Special ordered coffee from Network Chuck.

The thrill of the customized Xmonad guessing your current mood and
selecting the wallpaper accordingly. All VSCode themes and plugins
meticulously selected. The urge to spout code like there’s no tomorrow.

You open your computer

<br>

Only to realize the disk is corrupted and all is gone…

<br>

There’s no turning back unless you have a photographic memory and even
then, it’s so hard to redo this whole thing again.

<br>

What if I tell you there’s a way to preserve your best system self?

Buy my course at www… No, I’m kidding, the recipe is simple.

## 3 pillars of the stable system

When you evaluate your environment, you have to focus on these 3 things:

<br>

1.**Backup** Do I maintain backups regularly?

2.**Reproducibility** How fast can I get it to work and deploy?

3.**Portability** And how easy is it to get to it?

### Regular backups

![Broken system](/Notes/cloudBckup.jpg)

It’s the obvious one, but I’m pretty sure there’s one thing you forgot
to do so. This one photo album from summer 2019? And that good you
shouldn’t remember at all about it… No, I mean it. The issue with
backups is that they take a lot of mental effort to do so. That’s why
you have to automate it.

<br>

**Stick to the basic tools**

I’m sure you’re familiar with **git**, you used **rsync** one or two
times while SSHing to your Home Lab. You might have heard about the cron
jobs or systemd timers. Why not combine all these tools?

So set up a repo backup or whatever

*remember about creating also one more branch not only main.*

<br>

The thing is you might change something in config that’s not stable and
later regret it. And I know in git, you can revert to the particular
commit, but sometimes you like all the changes except one or two on
different commits…

So let’s say that main branch is for the stable version that you
generally enjoy any future changes will be on dev.

*You can always merge them any time.*

<br>

Then get the list of things you want to backup into one *.txt* file and
use some bash example

<br>

``` bash
while read -r line;
do
    rsync -av "$line" "$HOME/backup"
done < backup_list.txt
```

<br>

## Scheduling

![Shcedules](/Notes/scheduler-min.jpg)

Now you have to know a bit about the cron jobs or systemd timers.

**Cron jobs** may be easier, but I think that having a **unit** is more
future-proof.

<br>

\-**Unit** in systemd is just an *entity that systemd manages.*

<br>

**Remember we create a user unit not a root one**

<br>

``` bash
mkdir -p  ~/.config/systemd/user/
vim    ~/.config/systemd/user/backup.service
vim    ~/.config/systemd/user/backup.timer
```

<br>

``` bash
[Unit]
Description: Backup files

[Service]
ExecStart=/bin/bash -c 'path/to/your/script'

[Install]
WantedBy: network.target
```

<br>

**Install** is just which step of the system initialization it should be
executed with

*(remember not explicitly after or before)*. Because systemd is the
**parent of all the processes**. And it spawns them in a particular
order.

<br>

Try

``` bash
systemctl list-units --type: target
```

<br>

Now set the timer with **the same name** but with *.timer*

<br>

``` bash
[Unit]
Description: Run backup service daily

[Timer]
OnCalendar: daily
Persistent: true

[Install]
WantedBy: default.target
```

now add your sevice and timer with

``` bash
systemctl --user daemon-reload
systemctl --user --now enable backup.timer
systemctl --user --now start backup.timer
```

<br>

And voila, we can forget about this once and for all. If you’re
interested in backing up automatically on USB, You can edit */etc/fstab*
to mount your USB in the given location on boot And just add the path to
rsync destination in the script

**But be careful and read more about
[fstab](https://www.redhat.com/sysadmin/etc-fstab) before you start
experimenting.**

# Reproducibility

![Reproduciblity meme](/Notes/reproduciblity_meme.jpg) It’s great to
have everything in place, but how quickly can we get it to work?

Unfortunately, the process is currently too slow.

Manually moving files and installing software is a painful experience.

Therefore, we need to create a script that processes our dotfiles,
creates symlinks from the main repository to the .config and various
directories, and installs executables based on a list.

(I’m currently working on a tool to streamline this using Go.)

<br>

**Declarative vs Imperative Approach**

<br>

When we install packages and configure systems traditionally, we often
take an **imperative approach**, making modifications directly rather
than strictly defining configurations.

<br>

In the **declarative** approach, we predesign the system and apply the
configuration, allowing for easy rebuilding after modifications.

In traditional systems, reverting to previous versions is challenging
due to dependencies hell.

Thast why here comes our sponsor Nixos…

### Nix: Your Way Out

![Nixos Logo](/Notes/nixosLogo.webp) Sorry, I know, I know, this isn’t
the tech coaching channel. But back to the point.

[Nixos](https://nixos.org/), a Linux distribution , offers a completely
**declarative** approach.

You write one configuration file called
[flake](https://nixos-and-flakes.thiscute.world/), and it sets up
everything.

<br>

It installs every program and meanges every config specified, utilizing
a tool like [Homenager](https://github.com/nix-community/home-manager).

<br>

Additionally, it regularly creates **snapshots of the enitre system**,
facilitating easy rollback in case of breaking changes.

<br>

Nixos also **containerizes programs**, isolating dependencies for easy
testing and deployment.

Meaning it installs programs in a separate environment that doesn’t
share dependencies.

This makes testing ridiculously easy since you can install any app, test
it, and forget about it.

*(In the future, there will be more collaboration between NixOS and
Docker.)*

You can create a .nix script to locally run and deploy containers based
on it.

The possibilities are endless.

See the
[template](https://nix.dev/tutorials/nixos/building-and-running-docker-images.html)

### Drawbacks of Nix

While powerful, Nix has limitations. Direct binary installations are not
supported, and it has a steep learning curve (*it doesn’t help that the
Nix language is functional*).

However, you can get around these issues by using **flakes** and
[nix-id](https://github.com/Mic92/nix-ld).

For frequent testers or users with multiple devices, it’s highly
recommended.

### Things get corupted (Security Concerns)

![Bleeding heart](/Notes/heartBleed.webp)

These days, there are a lot of attacks on software, and particularly
recently we had an affair with [Heartbleed
2.0](https://www.techradar.com/pro/website-hosting/huge-backdoor-discovered-that-could-compromise-ssh-logins-on-linux)

The vulnerability is a backdoor in the *xz* utils package.

A widely used Linux utility for compressing and decompressing files

<br>

The backdoor allows attackers to compromise SSH logins and gain
unauthorized access to affected systems.

To fix this on nix, we will just revert to the previous version of the
system and wait for a patch.

On another system, if we do regularly take snapshots, we can also do
this.

<br>

But what happens to our GitHub projects? Does the code need bacup
mechanism outside of github ?

I know you haven’t thought about it, have you? Neither have I. That’s
why this will be the topic of my next blog post.

### Portability

![Bleeding heart](/Notes/porybility.jpeg)

Despite backups and automation, accessibility remains crucial.

*Can we access our files on the fly from another computer or sytsem?*

Usually, when we have a snapshot or a configuration, we have to install
the particular operating system.

This is time-consuming and sometimes isn’t even possible

*(for example, when you are using someone else’s computer or you have
Windows installed)* .

### Virutalization the queen of the flexabilty

![Docker Logo](/Notes/dokcer_Logo.png) When it comes to quick and easy
solutions, containers immediately comes to mind.

They offer a rapid and straightforward approach: install everything you
need in the container, push it to [Dockerhub](https://hub.docker.com/),
and Pccess it from anywhere you want.

<br>

*Higly encourage to have the container withh all of ur’e little tools*

You can even build **container-based** solutions or troubleshoot issues
on the target network.

Containers are quick, simple, and resource-efficient. However, for our
daily driver, we’re looking for something more versatile and robust

### Just use Vms

![Vmare Logo](/Notes/VMware-logo.webp) This article can be summed up in
just one line.

<br>

***Embrace VMs, and you’re set. Why?***

<br>

-They are **easy to backup**; you just create snapshots regularly.

<br>

-You can test things and **revert to the previous state** or copy them
every way you want.

<br>

-They are **extremely portable**; you can have the image on a USB drive
and boot it on almost any computer.

<br>

-Plus, [VMware
Pro](https://blogs.vmware.com/workstation/2024/05/vmware-workstation-pro-now-available-free-for-personal-use.html)
is now free on Windows.

<br>

If you’re not using VMs, just stop reading here and install one…

<br>

### Ventoy: The Swiss Army Knife of USB Sticks

![Ventoy Logo](/Notes/ventoy_logo.jpg)

Here in Poland, we were recently advised to have a backpack with
essential items just in case something happens.

These essentials include canned food, fresh water, and toilet paper.

However, no one mentioned the importance of having a **USB stick**.

<br>

What if a power outage occurs?

There will be no time to download disk passwords or, more importantly,
ISO files.

That’s why you should know about
[Ventoy](https://www.ventoy.net/en/index.html).

<br>

You probably use Rufus or Balena Etcher to flash your USB drive.

But what if I told you that you could have *all your VM ISOs, files, and
family photos* on **one pen drive**?

**Ventoy** does that for you.

Go read about it and be prepared for anything.

<br>

You might laugh at me, but how would you know that the computer you
happen to find wasn’t compromised or doesn’t have the tools you need to
survive? Or there could be network limitations.

### To sum up

So, next time you’re diving into the digital land, remember these simple
rules:

**Back it up, make it reproducible, and keep it portable.**

These steps can save you a world of headache when disaster strikes.

So, keep tinkering, keep exploring, and above all, keep your system
running like a champ.

Because in a world of chaos, your tech setup should be the calm in the
storm.

*Don’t break easy, preserve that best version of your system!*
