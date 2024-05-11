# test_some_ips
### Use Batch Script &amp; Shell Script to test pings of websites' IP addresses. <br />
To view popular website IP address, you can use "nslookup [example.com]". Grab those IP addresses and put them in scripts and run! <br />
You can customize as many websites as you want to ping connections!
<br/>

## How to Run?
For Windows users use Batch Script. 
You can either click on "test.bat" or just run cmd like this:
```cmd
test.bat
```

Or just specifying the file path where your file is at with test.bat for example:
```cmd
cd C:\Example\test.bat
```

---
As for Linux users, use Shell Script.
To run the program, follow these commands accordingly:
```shell
sed -i -e 's/\r$//' test.sh
chmod +x test.sh
./test.sh
```
<br />

### Background

Created this repo to help others who are encountering same issue like my case. Most of the methods from articles and forums are outdated and not working so I documented my finding and solutions here.
For some reasons, I cannot connect to certain websites due to IPV4/DHCP/DNS related issues which I managed to fix it for awhile it worked, but somehow and sometimes it will revert back the issues. <br />

Update (8-5-2024): I just reset and restart (switch on and off) the router, and it back to normal (for now).
<br/>
Another Update (10-5-2024): I realized my IP address said it is duplicated so I manually added and it back to normal which cause some websites are not be able to run. <br />
Last Update (11-5-2024): I had to run DHCP Client back and fix ipconfig /release errors as the connections are not stable (alwauys interrupted with disconnected status..) <br /> <br />
![image](https://github.com/TheDaniel3131/test_some_ips/assets/71692327/d7ec4d95-60cc-4c64-b51c-fc99ae46b075)

You can view this tutorial (basically just updating wifi driver, turning on DHCP client and troubleshooting): https://www.youtube.com/watch?v=JARAHO07g6U
<br />

My solution for Another Update:
```cmd
ipconfig /flushdns or ipconfig /dnsflush
netsh winsock reset

(restart pc)

ipconfig /all

manually set up IP address, subnet mask, and default gateaway (you can view it from ipconfig/all). I also set up DNS server based from my local ISP.
not showing the screenshot of my ipconfig /all because it contains sensitive information.
```
<br/>

![image](https://github.com/TheDaniel3131/test_some_ips/assets/71692327/b71ead80-fec6-4bf2-a837-627161feb1c9)

```cmd
To any people, if you have further problem like still occuring duplicate address even after the changes.
I suggest you to check the WiFi status and click details to see if there is Autoconfiguration IP Address (APIPA) conflicted with your IPV4 address.
Highly recommend you to check out this tutorial: https://www.youtube.com/watch?v=Rcmr8CLRDSU

Just run as administrators and run these commands below:

netsh interface ipv4 show inter 
netsh interface ipv4 set interface * dadtransmits=0 store=persistent

```

<br />

```cmd
Run as administarator on services.msc and find DHCP Client, click disabled and applied changes.
Restart your PC/Laptop and recheck in administrator: cmd by typing ipconfig/all to see if it is changed.


Please revisit this problem if you have trouble. Hope it helps out!

```





### References:
1. https://youtu.be/YJ8V70FfwYQ
2. https://stackoverflow.com/questions/14219092/bash-script-bin-bashm-bad-interpreter-no-such-file-or-directory
3. https://stackoverflow.com/questions/18123211/checking-host-availability-by-using-ping-in-bash-scripts
4. https://dos2unix.sourceforge.io/
5. https://www.youtube.com/watch?v=hJyVysEI5UQ&ab_channel=TechRelatedTips
6. https://www.nslookup.io/website-to-ip-lookup/
7. https://www.youtube.com/watch?v=Rcmr8CLRDSU
8. https://www.youtube.com/watch?v=JARAHO07g6U
