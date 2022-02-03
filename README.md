# Installing-Ubuntu

A step by step guide to install Ubuntu Linux on any computer.<br/>
We will see the steps to download and install Ubuntu on a machine.

## Ways to install Ubuntu

1. [Through ISO](./Through-Iso.md)
2. Through PPA
3. Through another machine having Ubuntu Linux.

## Install OpenCV in Ubuntu

- <b>For Windows:</b> You have to see [this website](https://towardsdatascience.com/install-and-configure-opencv-4-2-0-in-windows-10-vc-d132c52063a1)
- Note that it is OpenCV Website -> Library -> Releases and not Resources -> Releases.
- It is either a typo on the website side or OpenCV changed it right now.
- <b>For Linux:</b> You can go with [Install-Opencv](./Install-OpenCV.sh).
- It will need sudo permission at times so grant that.
- You will need to add the following to the g++ command when compiling the OpenCV code.
		
		`pkg-config --libs opencv --cflags opencv`

- Then use <b>CFLAGS for making .o</b> and <b>LDFLAGS for making final executable</b>.
	
		CFLAGS = `pkg-config --cflags opencv`
		LDFLAGS = `pkg-config --libs opencv`

## Install QtCreator in OpenCV

- You firstly need to download the [RUN file](https://www.qt.io/offline-installers) of the installer from the website of Qt. 
- Then you have to give <b>permissions to it with chmod</b> command so you can execute it.
- And then go with the following commands.

		sudo apt update
		sudo apt-get install build-essential libgl1-mesa-dev qtcreator mesa-common-dev
	
- Here, we downloading some essential libraries so we can run Qt.
- And that's it.
- You can now use the QtCreator.

## Using OpenCV with QtCreator

- Now, you have add the following to the configuration file(.pro file) for the project.

<img src="img/2/Screenshot from 2022-02-03 15-29-06.png">

		unix {
		    LIBS += `pkg-config --libs opencv`
    		INCLUDEPATH += `pkg-config --cflags opencv`
    		DEPENDPATH += `pkg-config --libs opencv`
		}

<img src="img/2/Screenshot from 2022-02-03 15-36-43.png">

- NOTE: Makefiles are whitespace sensitive so do not leave white spaces.