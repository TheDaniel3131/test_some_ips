# test_some_ips
Used Batch Script &amp; Shell Script to test pings of IP addresses. 
For some unknown reasons, I cannot connect to certain websites due to DNS issues which sometimes I managed to fix it, sometimes it will revert back.
You can customize how many websites to ping you want!

## How to Run?
For Windows users use Batch Script. 
You can either click on "test.bat" or just run cmd like this:
```cmd
test.bat
```

Or just specifying the file path where your file is at:
```cd
cd C:\Example\test.bat
```

---
As for Linux users, use Shell Script.
To run the program, follow these commands accordingly:
```linux
sed -i -e 's/\r$//' test.sh
chmod +x test.sh
./test.sh
```

### References:
1. https://youtu.be/YJ8V70FfwYQ
2. https://stackoverflow.com/questions/14219092/bash-script-bin-bashm-bad-interpreter-no-such-file-or-directory
3. https://stackoverflow.com/questions/18123211/checking-host-availability-by-using-ping-in-bash-scripts
4. https://dos2unix.sourceforge.io/
