# Partitioning Hard Drives

We have two ways to partition the drive.

1. Without separate home partition.
2. With home partition.

- You need a partition for Grub-boot of 500 MB.
- You need a partition for root of at least 40 GB(25GB given on website of Ubuntu but prefer 40GB at least).
- You need a partition for home dir if you want separate partition for /home. 

## Partitioning for an Empty Disk.

- It is easy, Ubuntu will make the partitions directly.
- It's guided partitioning will do everything.

## Installing Ubuntu with something else on the drive

- You can use this for dual boot and stuff.
- An easy way is to just keep some empty space before starting to install Ubuntu.
- Shrink the partitions you want and make a block of unallocated space.
- Remember, you have to keep that space unallocated before starting the installation.
- You should make a new partition there.
- We want to use Guided partitioning of largest continuous free space here and free space means unallocated partition when you are installing an operating system.

<img src="img/Before freeing space.png">
<br/>
<img src="img/After freeing space.png">

- The installer of Ubuntu will understand that we want to this unallocated space and it will make partitions there.
- Using free space is helpful even when you are doing manual partitioning.

<img src="img/1/start with.png">

- It helps you because you only need to allocate space and you need to worry about deleting any useful data on your system.

<img src="img/1/Allocate Grub partition.png">

- So firstly make the Bios Grub partition of 500 MB.
- Type should be Reserved BIOS boot area.

<img src="img/1/If you do not want separate home partition.png">

- Now, in case you do not want to allocate a separate home partition, make a partition of remaining space and mount point should be / which means root.
- I am using BTRFS file system because is better then using Ext4 file system. It will do not harm if you go with Ext4.

<img src="img/1/result without separate home partition.png">

- Using BTRFS is my preference and not a requirement for running Ubuntu.

<img src="img/1/result without separate home partition.png">

- You can make home partition similarly and mark it to /home.

## About separate /home partition

- If you have a separate home partition, the softwares would be installed in root partition(/) and user data will be in /home partition.
- <b>Advantages:</b>
    - This is great for people who like disk encryption.
    - You will only need to encrypt the /home partition only and the speed of booting up is not compromised for disk encryption.
    - It helps you to change OS fast.
    - You have a separate home partition so you only need to check the mark that has home for different partitions.
- <b>Disadvantages:</b>
    - You will need to partition manually always.
    - You have to take care to format the home partition.
    - If you encrypt the home partition, you cannot just mark it has home for other OS. It won't work.
- You can refer to [this post](https://askubuntu.com/questions/142695/what-are-the-pros-and-cons-of-having-a-separate-home-partition) on Ubuntu Stack Exchange