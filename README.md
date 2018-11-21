# Installing Hass.io in a Virtual Machine on Windows 10 ( hasscasts method )

download Oracle VM - https://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html<br/>
download Linux Mint 19 xfce iso (I use 64bit)- https://linuxmint.com/download.php<br/>
<br/>
Install Oracle Vm and start it<br/>
<br/>
Click "New"<br/>
name: mint<br/>
type: linux<br/>
version: ubuntu(64bit)<br/> 
Create<br/>
memory - 1024mb<br/>
create a virtual hard disc now<br/>
VirtualBoxDiscImage<br/>
Fixed Size<br/>
use slider to make it at least 20gb<br/>
Create<br/>
-- Do Not Start Machine Yet--<br/>
Settings->Storage->under "Controller:IDE" - click "empty"<br/>
To the right of "IDE Secondary Master", click the disc icon, Choose Virtual Optical Disc File<br/>
Choose the mint 19 xfce iso you downloaded earlier<br/>
Settings->Network->Attached to: select "bridged adapter"<br/>
Start Machine<br/>
Click install Linux icon on desktop<br/>
Wipe and install...<br/>
name: whatever you want<br/>
computer: homeassistant<br/>
user: hassio<br/>
pass: whatever you want your root pass to be<br/>
-- I do not select 3rd party software option --<br/>
Once it's done, it will reboot (press a key, it already removed the disc for you!<br/>
<br/>
Go to terminal (black square in bottom left tool bar) and enter these commands:<br/>
sudo su<br/>
-enter your root pass-<br/>
sudu apt-get update<br/>
sudo apt-get install docker.io<br/>
sudo apt-get install socat<br/>
sudo apt-get install jq<br/>
sudo apt-get install curl<br/>
curl(space)-sL(space)goo.gl/goR2HT(space)|(space)bash(space)-<br/>
or if the original site is down I cloned it<br/>
curl(space)-sL(space)goo.gl/AFPEuZ(space)|(space)bash(space)-<br/>
(space) shown to help formatting, don't actually type it<br/>
<br/>
Boom...Hass-io on a fast virutal machine, no more slow sd card eating Pi's for me!<br/>
Now is a good time to clone the machine...you can always start it, restore a full snaptshot and be back up in 10 min!<br/>
I used a litte program https://sourceforge.net/projects/vboxvmservice/ to autorun the machine on reboots of the windows machine


