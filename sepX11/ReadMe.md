**How to use**

 - Copy sepX11.conf, sepX11_start.sh and sepX11_stop.sh to a folder,
   ideally in home folder for easy access. Make sure both the sh files
   have executable permission.
 - Edit the sepX11.conf or sepX11_all_modes.conf file to change the resolution / color depth of
   expected new X11 server. Currently, sepX11.conf has fied resolution support of 640x480 and 16 bit
   color depth. With sepX11_all_modes.conf application can decide the resolution, you just set the color depth which is currently set to 24 bit.

**To start a new X11 server**

 - Go to one of the terminals by pressing keys combo Ctrl + Alt +
   Function key, ie. Ctrl + Alt + F3 Once in the terminal login as usual
   in the terminal and notice terminal numer ie. tty3
 - Now, assuming the three files are copied to the home folder, start the X11 server by
   running the sepX11_start.sh script as follows:

*cd
./sepX11_start.sh 3 sepX11.conf*

In the above the first command changes the directory to home location and the second command tells to start a new X11 server in tty3 using settings saved in the sepX11.conf file. If the new X11 server has started you would see a pitch black screen. Now X11 server is running.

Now, to run an application in this new X11 server, first go back to your regular desktop using the keys combo Ctrl + Alt + Function key, which is usually keys combo Ctrl + Alt + F1 where the regular desktop is running. Secondly, from the terminal emulator of the desktop, launch the application as follows:

*DISPLAY=:3 application*

or,
*export DISPLAY=:3
application*

For example:

*DISPLAY=:3 xterm*

Now, use the xterm inside the new X11 server to run the application.

In the above, 3 is indicating the new X11 server is running inside tty3 console. Now, press the Ctrl + Alt + F3 keys combo to go back to tty3 console where the new X11 server is running showing the application. 

**To stop the new X11 server**

After closing the application, come back to the regular desktop using Ctrl + Alt + F1 keys combo. In the terminal emulator of the regular desktop launch the sepX11_stop.sh as follows:

*cd
./sepX11_stop.sh 3*

In the above, we are telling the command to stop the new X11 server running in the tty3 console. 

Cheers,
Imam
