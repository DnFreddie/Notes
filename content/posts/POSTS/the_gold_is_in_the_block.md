+++
title = 'The gold is in the block'
date = 2024-07-22T09:10:24+02:00
draft = false
categories = ["posts"]
+++

    People often find excitement in the world of crypto, blockchain, and NFTs, only to fall victim to scams or invest in worthless tokens.
Some even chase digital dreams worth millions!
But here's the twist:  
Instead of digging into the systems behind all these treasures, they're all about owning stuff on the web.
It's like they're hunting for treasures without a map.
What's kinda funny is that I actually find the technology itself more intriguing than the supposed treasures it holds. 
But there's always that nagging concern – what if some digital pirates come to snatch it all away?
Well, there's a cool trick called <a href="https://en.wikipedia.org/wiki/Zero-knowledge_proof" style="color: violet;">Zero-Knowledge Proofs</a>  
It's like a math algorithm that lets you confirm stuff without giving away your secrets.

Take cryptocurrency transactions, for example.  
You can check your funds without revealing who you are or your password.
Now, I'll be honest, I don't quite grasp all the math behind it – I'm just a humble software developer.
But you know what? The concept is like stumbling upon a hidden gem itself.
If you wanna dive deeper into this, check out the <a href="https://www.youtube.com/watch?v=fOGdb1CTu5c" style="color: violet;">video</a>  
It's a fun watch!
<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; ">Everything is an account</h2>
<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fgold_is_in_the_block%2Faccount-structure.png?alt=media&token=e72dd981-6171-4ec6-ba80-8757897fa2fc"  style="border-radius:10px;" width="70%" height="50%" alt="Blochain account structure"/>
</div>
Think of blockchain like a bank, always keeping tabs on transactions. 
But what sets it apart is the <b>power of '<a href="https://docs.solana.com/developing/intro/programs" style="color: violet;">Smart Contracts</a>'</b>. 
These contracts are essentially sets of predefined instructions stored within accounts on the blockchain.
When specific conditions are met, these instructions automatically execute, without the need for intermediaries.
Well, the Solana blockchain takes a similar approach, but here, 'Everything is an <a href="https://docs.solana.com/developing/programming-model/accounts" style="color: violet;">Account</a>.'
In this world, each account is a neat, structured entity with predefined rules, kind of like how <a href="https://protobuf.dev/" style="color: violet;">protocol buffers</a> or GraphQL APIs work. 
When you call programs through <a href="https://en.wikipedia.org/wiki/Remote_procedure_call" style="color: violet;">RPC</a> (think of it like making an API call), it feels a lot like using REST for a super-sized database with its very own API.

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; "> So, what's the buzz about if it's just a fancy database?</h2>
<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fgold_is_in_the_block%2Fblockchain-meme.jpg?alt=media&token=e00b735c-d4b9-4ed0-b379-8bc22fe32ca5" style="border-radius:10px;" width="70%" height="50%" alt="Crypto meme"/>
</div>
Why all the fuss about blockchain, you might ask?  
It's similar to folks mistaking it for rocket science when, in reality, it's quite a straightforward process.
Here are the steps:  
You start by defining all the accounts that'll be part of your program's context.

Then, you write down the instructions for what each account will do and who's paying the bill for the execution and uptime (that's the 'gas fees' part).

Once you've got that sorted, you deploy it onto the devnet, and your app creates JavaScript types, that you will use to interact with the program.
All you really need is a program public key (*program id*), because smart programs are essentially accounts themselves. 
And voila!
You're ready to interact with it, and it's out there in the world, with all the records easily accessible.

Now, for the fun part, tools like <a href="https://www.anchor-lang.com/" style="color: violet;">Anchor</a> and <a href="https://docs.solana.com/cli" style="color: violet;">Solana-CLI</a>
are like your very own playground in the blockchain world. They make it easy for developers to dive in and experiment, giving you a chance to go from zero to 'rich' in seconds... well, maybe 'temporarily rich' is more like it (*try Solana airdrop 2*).
If you ask me, it's worth a shot. Building yet another dull CRUD app might just start feeling thrilling all over again.
Plus, Solana even offers a <a href="https://beta.solpg.io/" style="color: violet;">native solana playground</a> where you can test it out without configuring anything.

<h2 style="color: #9ACFD5; font-size: x-large; font-weight: bold; "> NFTs: More Than Just Million-Dollar Images</h2>
<div style="text-align: center;">
<img src="https://firebasestorage.googleapis.com/v0/b/fbase-2d77d.appspot.com/o/assets%2Fgold_is_in_the_block%2Fnft-meme.png?alt=media&token=2bb2871d-3f30-46e5-a950-0b355da703af" style="border-radius:10px;" width="50%" height="50%" alt="Nft Meme"/>
</div>
Ask a random person about NFTs, and they'll likely tell you it's all about the images.  
But in reality, it's not just the image. It's the token and the link to where the data is stored that make it unique.  
<a href="https://youtu.be/Oz9zw7-_vhM?si=ixDHbbbZv9fyJlVS" style="color: violet;">Learn More about NFTs</a>

**The actual image or any other data isn't on the blockchain itself.** 
It's the proof that this digital asset belongs to you.  
Think about where ownership matters most?

The answer is <a href="https://icoda.io/blog/nft-gaming-companies-and-trends-a-2024-perspective/" style="color: violet;">gaming</a>
Items like skins, swords, characters, or avatars can become NFTs, allowing players to truly own and trade them. Traditional methods of selling entire game accounts fall short in the context of in-game economies.
NFTs add a new layer to the gaming experience by enabling the transfer of specific items.
Imagine being part of a special event within a game and having an NFT to prove your exclusive possession of something. It not only enhances the gaming experience but also lets you show off to your friends, thanks to your ownership details right there on the blockchain.
NFTs aren't limited to gaming, though. Companies can use them to guarantee authenticity and traceability.  
<a href="https://www2.deloitte.com/us/en/pages/operations/articles/blockchain-supply-chain-innovation.html" style="color: violet;">Learn More</a>

For example, if you run a shop selling T-shirts, you can record each transaction on the blockchain, showcasing purchases from eco-friendly providers.
Later, when the item is ready, you can create an NFT with a link to the entire production process. 
This allows consumers to verify the legitimacy of their purchase.
The beauty of it is that you're not restricted to existing blockchains. But I'll save that topic for another post...

Just remember, blockchain isn't just about sketchy stuff.
It's a whole playground waiting to be explored. Beyond all the hype, there are some cool hidden features and possibilities to discover. 
It's not just about shady deals; blockchain can bring some exciting innovations to the table. 
So, don't let the noise get in the way of finding some awesome opportunities in this world of blockchain tech.  
<a href="https://www.soldev.app/course" style="color: violet;">Great Starting Point for Blockchain</a>

