---
date:: 2023-08-02
type:: Kernel
---
## Direct Memory Access
 - IT  allows certain hardware devices to directly access the system's memory (**RAM**) without involving the [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md) in every data transfer. 
	 - It enables these devices to read from or write to memory on their own, freeing up the [Cpu](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Cpu.md) to focus on other tasks.


## DMA Contoler 
Specialized hardware component responsible for **managing the data transfer** between **devices** and **memory**
 1. **Initialization**: When the [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md) initializes, it sets up the DMA controller and configures it with the necessary parameters, such as the source and destination memory addresses and the amount of data to transfer.
    
 2. **Request for DMA Transfer**: When a hardware device (e.g., a network card or a disk controller) needs to read or write data to/from memory, it sends a request to the DMA controller.
    
 3. **DMA Setup**: The device driver in the [Kernel](/obisdian_ntoes/notes_obsidian/Linux/Kernel/Kernel.md)  (software that manages communication with the hardware device) prepares the data and instructs the DMA controller with the required details, such as the memory addresses and the direction of data transfer (read or write).
    
4. **DMA Transfer**: The DMA controller takes over from here and directly accesses the system's memory, moving data between the device and the memory without the CPU's active involvement. It efficiently transfers the data in the background.
    
5. **DMA Completion:** Once the DMA transfer is complete, the DMA controller signals the device driver to handle any remaining tasks or notifications related to the data transfer.
    
6. **Data Processing**: The device driver can then process the transferred data as needed, e.g., passing it to higher-level software layers or storing it in a file.




>[!quote] [NIC_physical](/NIC_physical.md)