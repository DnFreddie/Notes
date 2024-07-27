+++
title = 'solana-rs'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    ```rust
use solana_program::{
    account_info::AccountInfo,
    entrypoint,
    entrypoint::ProgramResult,
    pubkey::Pubkey,
    msg,
};

// program entrypoint's implementation
pub fn process_instruction(
    program_id: &Pubkey,
    accounts: &[AccountInfo],
    instruction_data: &[u8]
) -> ProgramResult {
    msg!("Hello, world!");

    Ok(())
}
// its similar to the lamnbda function 
entrypoint!(process_instruction);
// Command to build 
// cargo build-bpf
// To deploy
// solana program deploy ./target/deploy/hello_world.so


```
---

[SNIPPETS_MAIN]({{< ref "posts/SNIPPETS_MAIN.md" >}})