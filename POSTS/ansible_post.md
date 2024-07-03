---
title: Ansible Post
---

# Scripting is outdated

When you start your Linux journey, or if you watch Linux-based
YouTubers, you will often hear them praising the benefits of writing
scripts. They encourage you to write your own scripts for everything
because scripts can be simple yet powerful tools to get your work done
efficiently. They suggest downloading and using scripts to experience
the benefits firsthand, and they advocate for using Bash as the go-to
scripting language for its versatility and ease of use. What they
doesn\'t mention is

## The miss interpretation

The first thing that u should keep in mind that the *shell scripts
shouldn't bee the main source of automation* What i want u to accustom
scripts with it's `quick and dirty` or to
`verify something quickly` Shell scripting doesn't have
built-in mechanism for this 4 things

1.  It\'s hard to read scripts due to the bash syntax

    ``` bash
    # Example
    a="Hello"
    b="World"

    c=$a" "$b
    d=$b" "$a

    e=$c$'\n'$d
    echo -n $e | sed -e 's/o/O/g' | while IFS=$'\n' read -r line; do
      echo "$line"
    done
    ```

2.  People can easily inject variables to your code even if u use tools
    like spellcheck

    ``` bash
    # Vunrable code
    echo "Enter your name:"
    read name
    echo "Hello, $name!"
    ```

All i have to do is type *John; echo \"Haha, I injected a command!\"*
And u know what the output will look like ...

1.  Error handling pretty much doesn\'t exist Apart from
    `test statements`{.verbatim} or `exit codes`{.verbatim}

2.  Bash is slow *What works for even 100 repetition doesn\'t work for
    million*

    Universal rule is: **If your script is longer then 40 lines use
    programming language**

## Wish i have learn this earlier #Ansible

Usually what u start first in automation is Virtual machines and
dot-files U want them to setup quickly and u don\'t\' know what
hypervisors tools can u use to spawn them quickly U either setup a
dot-files repo with the script that symlinks thighs in proper places or
do it manually for every Vm Some of u built the script around ssh

``` bash
ssh dnf "apt install ... "
```

But it\'s not maintainable as your home lab grows u have more and more
things to configure simultaneously the machines Different package
managers different environments and **different types of error** There
comes ansible a daemon-less solution ... So it quite simple Ansible is
build around the pushing and uses a tool that u truly love which is ssh
What ansible does is it connect to the selected machine and pushes
changes based on the instruction stored (*called playbook* ) in a yaml
file No matter the amount of the machines Quick Simple and Nice no need
to install any daemon on the nodes

## So lets get started

I\'m sure u have already added your lab machines to the ssh config so u
can easily ssh into them If\' u didn\'t though hearse how to do it

``` bash
# Create config file in ~/.ssh and add the given line for hosts
Host <Can be any name u want ur'e machine to be recoinise>
    HostName <ip adress>
    User <user which u want to connect as>
```

Now having done this we have to create a file called inventory And add
the host name to it

``` toml
[home]
dnf
my_machine1
my_machine2
```

*This* **\[home\]** *is the name of the group so we don\'t have to call
it manually one by one*

## I want u to focus on debuign first

So we wont\' write any serious **playbook** in this post a will leave it
for another But i simply want u to understand ansible modularity and the
potential for debuign So u wouldn\'t have to write arbitrary scripts to
do chekoups on u\'re systems And u will be able to apply quick fixes
without writing the hole playbook

## Ansible ad Hoc and Modularity

So baiscily ansible in it\'sel is a suit of tools and moduls U have a
diffrent commands to do diffrent thigns For exemple to get the knowlange
about the particular module u would use

``` bash
ansible-docs -s <name of the module >
```

Beside this there are modules it\'s baiscly works the same as in ussula
python U can call modules in pyton alloone by usinb -m flag The most
popular examplye will be with the venv pacage that creates virutal
enviroment for python

``` bash
python -m venv /path/to/new/virtual/environment
```

Simmlary to do it in ansible u use this pattern

``` bash
ansible home -i <path to the inventory> -m <name of the module u want to use> -a <arguments that the modules provieds>
```

Therese a toushends of modules in ansible but i want to focus of 2 that
will be the most usefull for u

-   [Setup](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/setup_module.html)
-   [Shell](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/shell_module.html)

how can i help
