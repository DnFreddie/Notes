---
categories:
- posts
date: "2024-07-09T11:27:06.000Z"
draft: false
title: The world doesnt end with scripting
---

When you start your Linux journey or follow Linux-based YouTubers, you
often hear them praising the benefits of writing scripts.

They encourage you to create your own scripts for various tasks because

<br>

**“scripts are simple yet powerful tools to get your work done.”**

<br>

They suggest downloading and using scripts to experience these benefits
firsthand, advocating for Bash as the go-to scripting language due to
its versatility and ease of use.

However, what they don’t mention is…

## The Misinterpretation

![Oh
Scripts](https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fworld_end_scripting%2Fscritpts_header.jpg?alt:%20media&token=b33f2740-203f-4a06-bca2-9db0e00545d4)

The first thing to keep in mind is that shell scripts shouldn’t be the
primary source of automation.

What I want you to associate scripts with is

-   **quick and dirty** tasks

-   **verifying something** fast.

The reason is shell scripting lacks built-in mechanisms for these four
things:

1.  Scripts are hard to read due to complex Bash syntax.

    ``` bash
    # Example
    a="Hello"
    b="World"

    c=$a" "$b
    d=$b" "$a

    e=$c$'\n'$d
    echo -n "$e" \
    | sed -e 's/o/O/g'\
    | while IFS=$'\n' read -r line; do
      echo "$line"
    done
    ```

2.  People can easily inject variables into your code, even when using
    tools like [ShellCheck](https://www.shellcheck.net/).

    ``` bash
    # Vulnerable code
    echo "Enter your name:"
    read name
    echo "Hello, $name!"
    # All I have to do is type
    `John; echo "Haha, I injected a command!"`,
    # and you know what the output will look like...
    ```

3.  Error handling is minimal, apart from *test statements* or exit
    *codes*.

4.  Bash is slow; what works for 100 repetitions doesn’t work for a
    million.

<br>

The universal rule is:

**If your script is longer than 40 lines, use a programming language.**

<br>

## So what’s the alternatvie then?

![ansible
logo](https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fworld_end_scripting%2Fasniblle_logo.jpg?alt:%20media&token=e48af70a-e052-42af-8a62-8e0b4141c16e)

Typically, when you start automating tasks like setting up virtual
machines and managing dot-files, you want them to be set up quickly,
especially when you’re unsure which hypervisor tools to use. You can
either set up a dot-files repository with scripts that symlink things to
proper places or do it manually for every VM.

Some of you may have built scripts around SSH.

``` bash
ssh user@hostname "apt install ..."
```

**But this isn’t maintainable.**

As your home lab grows, you’ll have more things to configure
simultaneously: different machines, package managers, environments, and
different types of errors.

Trust me, elaborate scripts won’t hold up. You need a better tool. Here
comes Ansible, a daemon-less solution…

So, it’s quite simple. Ansible is built around pushing changes using a
tool you already love **SSH**.

Ansible connects to the selected machine and pushes changes based on
instructions stored in a YAML file, called a playbook.

No matter how many machines you have, Ansible is quick, simple, and
nice, without the need to install any daemon on the nodes.

## Installation

Installing Ansible is relatively simple. You have two approaches:

1.  Treat Ansible as a project with its own **virtual environment**.
2.  Install it as a **system-wide package**.

You might think the second option, global installation, is far superior.

However, Ansible uses Python modules installed on your system.

Imagine needing to install a Python library for virtualization.

You’d have to install it system-wide, which could lead to
**compatibility issues** later.

Moreover, you’re giving administrative privileges to the package.

If the package is malicious or contains vulnerabilities, it can exploit
those privileges.

**Installation Methods**

``` bash
sudo apt update
sudo apt install ansible
```

**Or with virtual env:**

``` bash
pip install virtualenv
virtualenv ansible-env
source ansible-env/bin/activate
pip install ansible
pip install ansible-core
```

### Inventory

I’m sure you’ve already added your lab machines to the SSH config so you
can easily SSH into them.

If you haven’t, here’s how to do it:

``` bash
# Create a config file in ~/.ssh and add the following lines for hosts
Host ChooseAnyName
    HostName ip_address
    User username_to_connect_as
    IdentityFile ~/.ssh/private key
```

Remember to change the authorization method on your server to PublicKey,
so you wouldn’t have to `--ask-pass` every time you want to use Ansible.

Now, having done all of this, you need to create a file called
`inventory` and add the host names to it. This tells Ansible which
device to SSH into and perform tasks.

``` toml
[home]
dnf
my_machine1
my_machine2
```

**\[home\]** is the name of the group, so you don’t have to call each
machine manually one by one.

## Focus on Debugging First

We won’t write any serious playbooks in this post; I’ll leave that for
another time. But I want you to understand Ansible’s modularity and its
debugging potential so you can apply quick fixes without writing the
whole playbook.

## Ansible Ad Hoc and Modularity

![modularity](https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fworld_end_scripting%2Fmodularity.jpg?alt:%20media&token=8c977b9d-33aa-4c84-bf32-eda093cc8df0)

Ansible itself is a **suite of tools and modules**.

You have different commands for different tasks.

For example, to get knowledge about a particular module, you use:

``` bash
ansible-docs -s module_name
```

Modules work similarly to Python modules.

You can call modules alone using the `-m` flag.

One popular example is the **venv** package, which creates a virtual
environment for Python:

``` bash
python -m venv /path/to/new/virtual/environment
```

Similarly, in Ansible, you use this pattern:

``` bash
ansible home -i path_to_inventory -m module_name -a 'module arguemnt'
```

There are thousands of modules in Ansible, but I want to focus on two
that will be most useful for you:

-   [Setup
    Module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/setup_module.html)
-   [Shell
    Module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/shell_module.html)

### Setup Quick and Dirty

![Ansible setup
graphic](https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fworld_end_scripting%2FsetupAns.jpg?alt:%20media&token=4d2e906f-1dbf-43c9-8235-9b998fcf2992)

There are many situations where you’d like to quickly gather information
about your infrastructure.

Are all your machines working? What’s their uptime? Do they have the
right kernel version?

Here are the all possible
[options](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/setup_module.html#parameters):

``` bash
ansible test -i inventory -m setup -a 'filter: user_id'
ansible test -i inventory -m setup -a 'filter: kernel'
ansible test -i inventory -m setup -a 'filter: ansible_distribution'
```

### Ansible Can Be Sneaky

You might think Ansible processes tasks one by one, but it actually
handles them in parallel.

By default, it handles 5 machines, but you can specify more by adding
the `-f` flag:

``` bash
ansible test -i inventory -m setup -a 'filter: user_id' -f 10
```

It also hides what it’s really doing, which could make extended
debugging challenging.

Therefore, you have to explicitly call it with the verbosity flag.

**It has up to 6 ’v’s** !!!, but a reasonable level to start is `-vvv`,
feel free to go wild:

``` bash
ansible test -i inventory -m setup -a 'filter: user_id' -vvvvvv
```

### Finally, Back to Bash

![Bash
matrix](https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fworld_end_scripting%2Fbash_matrix.jpg?alt:%20media&token=6b720cd9-8fe6-4bf2-bcc1-53c6f58eebc1)

This is the most dirty and basic but very useful. If you have a custom
script you want to run or if there’s no Ansible module that suits your
needs.

You can **call Bash directly** on the device with the shell module:

``` bash
ansible test -i inventory -m shell -a 'any_command_you_desire'
```

However, there’s a catch:

**Ansible doesn’t control the output.**

It executes the command and checks for errors but always produces a
changed result, no matter what the command is.

### To Sum Up

Bash scripts have their time and place but are not the one and only
solution, especially for something you may use on multiple devices.

Try something more stable that won’t shoot you in the foot but guide
you.

Really, Ansible is awesome, and that’s just the beginning of its
possibilities.

If you want to learn more about Ansible, Linux, or anything else,
chekout [killercoda
labs](https://killercoda.com/het-tanis/course/Ansible-Labs)

They are free, no need for login, and will walk you through everything
without setting up the environment.

Also, join their [Discord
channel](https://discord.com/invite/bn4TxafhSH) because they’re doing a
fantastic job educating about Linux.

Peace out :) Hope to see you there!
