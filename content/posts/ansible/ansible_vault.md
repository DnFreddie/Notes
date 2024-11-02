---
date: "2024-10-29T13:44:19+01:00"
draft: false
title: Ansible Vault
---

### Ansible Vault

#### Creating a Vault

``` bash
# Create an encrypted file using Ansible Vault
ansible-vault create <filename>
```

#### Using a Password File with Ansible Vault

If you want to avoid typing in the Vault password every time, you can
store it in a password file:

1.  **Create a Password File**:

    > **Note**: The file should contain only the password, without any
    > extra characters or newlines.

    ``` bash
    echo 'my_vault_password' > .vault_pass
    ```

2.  **Ignore the Password File in Version Control**: Add `.vault_pass`
    to your version control’s ignore file (like `.gitignore`) to prevent
    accidental commits.

3.  **Using the Password File in Your Playbook**: When running a
    playbook, reference the password file using `--vault-password-file`:

    ``` bash
    ansible-playbook main.yml -i inventory --vault-password-file=.vault_pass
    ```

------------------------------------------------------------------------

[Ansible Vault
Documentation](https://www.digitalocean.com/community/tutorials/how-to-use-vault-to-protect-sensitive-ansible-data#using-ansible-vault-with-a-password-file).\`
