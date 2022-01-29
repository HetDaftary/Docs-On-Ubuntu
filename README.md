# Installing-Ubuntu

A step by step guide to install Ubuntu Linux on any computer.<br/>
We will see the steps to download and install Ubuntu on a machine.

## Ways to install Ubuntu

1. [Through ISO](./Through-Iso.md)
2. Through PPA
3. Through another machine having Ubuntu Linux.

## Install OpenCV in Ubuntu

- <b>For Windows:</b> You have to see [this website](https://askubuntu.com/questions/142695/what-are-the-pros-and-cons-of-having-a-separate-home-partition)
- Note that it is OpenCV Website -> Library -> Releases and not Resources -> Releases.
- It is either a typo on the website side or OpenCV changed it right now.
- <b>For Linux:</b> You can go with [Install-Opencv](./Install-OpenCV.sh).
- It will need sudo permission at times so grant that.
- This file is dependent on opencv.pc so do keep that in the dir from where you are running this.
- You will need to use `pkg-config --libs opencv --cflags opencv` when compiling the OpenCV code.
- Add `pkg-config --cflags opencv` to the Cflags and `pkg-config --libs opencv` to Ldflags if you are using Makefiles because we need to include to make objects and we need libs while linking the libraries.