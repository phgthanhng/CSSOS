<h1> Installation process </h1>

For demonstration purposes, we will show the steps to configure our live image using a virtual machine. 



Firstly download the virtual machine from oracle virtual box official website. 

https://www.virtualbox.org/wiki/Downloads

Select the host package on your need. 

the executable file is downloaded, follow the setup Wizard and install it on a location that is recognizable. 

The installation process is easy.



After the installation process is over and the application is installed, open it and create a new operating system. 

![image-20211215011257772](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215011257772.png)

Follow the instruction and give your own name and customization on the memory size and storage size. 

![image-20211215011428775](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215011428775.png)

It is preferable to choose more than 2GB for the memory size to run the application smoothly. 

![image-20211215011549552](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215011549552.png)



Create a virtual hard disk (.vdi) for later installation convenience. 

![image-20211215011715535](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215011715535.png) 

![image-20211215011740569](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215011740569.png) 



After the operating system is created, add the live image (.iso file) to the controller. 

![image-20211215011754626](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215011754626.png) 

(the optical drive will be removed after the installation)

Now everything should be set up and good to go. 



To install the file, 

Select start installer from the login page:

![No description available.](https://scontent-lga3-1.xx.fbcdn.net/v/t1.15752-9/265312277_942033440070425_8824575965237581176_n.png?_nc_cat=107&ccb=1-5&_nc_sid=ae9488&_nc_ohc=7Uo3lEdSFB8AX9isf0I&_nc_ht=scontent-lga3-1.xx&oh=03_AVJ4CyiMZBoAqKmj8cBIHcl9bMUGXKzBozu0plk6FLhj3g&oe=61E0B368)



![image-20211215012430746](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215012430746.png) 

The calamaris installer has an appealing user interface where the instructions are easy to follow. There is no need to worry about overwriting the disk as the installation is made in virtual disk. So it our case, it is safe to select "overwrite the complete disk" during disk partitioning process. 

![image-20211215012804844](C:\Users\xrosa\AppData\Roaming\Typora\typora-user-images\image-20211215012804844.png) 

Once the installation process is over, the system is ready to use. 





------------------------------------------------------------------------------------------------

To use the automated script files, open the terminal to login as root user. 

If using the live image, use the command : *sudo su - root*. 

If using the installed version, use *su* as command and the password you set up during the installation. 

go to the folder which contains all the script, using *cd /usr/local/bin*, we could see that they are listed (*ls*). 

![No description available.](https://scontent-lga3-1.xx.fbcdn.net/v/t1.15752-9/266013626_508365196963083_750957118963438106_n.png?_nc_cat=100&ccb=1-5&_nc_sid=ae9488&_nc_ohc=r0lhHr7VbPsAX8B9JLV&_nc_ht=scontent-lga3-1.xx&oh=03_AVKSQZjAE1_8doFhZ_5QVNMekmhmI4CPSdkr_1xEKYHVlQ&oe=61DEA268) 



From root, **run setup.py file first** to install all the necessary applications, such as calcurse, firewall, Visual Studio Code, etc. Many more could be added depending on users' need. 

*python3 setup.py*



![No description available.](https://scontent-lga3-1.xx.fbcdn.net/v/t1.15752-9/265014107_623891982280633_7697753955505579613_n.png?_nc_cat=102&ccb=1-5&_nc_sid=ae9488&_nc_ohc=qrkjjvlkmW0AX8d2kTo&tn=v-Tm-JISCjsGM4Bw&_nc_ht=scontent-lga3-1.xx&oh=03_AVLcQD-5g-ua3ho87VB5Zb9vMJJyVnF6J3L4VP5pGZDarA&oe=61E0C07C)



The machinestat.sh file is available to check up cpu usage, disk usage and connection status.  (./machinestat.sh)

![No description available.](https://scontent-lga3-1.xx.fbcdn.net/v/t1.15752-9/265648777_423366452811142_8725471968227782986_n.png?_nc_cat=109&ccb=1-5&_nc_sid=ae9488&_nc_ohc=O_GgywXxp7gAX-vWxia&tn=v-Tm-JISCjsGM4Bw&_nc_ht=scontent-lga3-1.xx&oh=03_AVKWqBfriwGTPEKWpwtor1RuoueAaCPV3WEzVjyWsveRBA&oe=61DF408B)



To setup the calendar reminder, set up a startup application by giving it a description, */bin/bash -c "sleep 30 && python3 /path/run_ccursereminders.py [time to notify before the events happen]"* in the command section, as well as the trigger on login. 



![No description available.](https://scontent-lga3-1.xx.fbcdn.net/v/t1.15752-9/264898965_453172016332136_5403340283687431228_n.png?_nc_cat=104&ccb=1-5&_nc_sid=ae9488&_nc_ohc=Xsz6dbEfjIAAX-DDwwi&_nc_ht=scontent-lga3-1.xx&oh=03_AVLv9yzEYhEsF6HGsDW4XmUoIOJKrhqkI9PX7M2UbNnLfw&oe=61DF42D4)

Notification panel will now popup to remind the users about all the appointments of the day.  
