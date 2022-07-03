ECHO Getting SystemInformation..................... > info.txt
whoami >> info.txt

ECHO Net USER......................... >> info.txt
net user %username% >> info.txt

ECHO HOSTNAME.............................>> info.txt
hostname >> info.txt

ECHO SystemINFO................................ >> info.txt
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type" >> info.txt

ECHO TASKLIST.................................... >> info.txt
tasklist /SVC

ECHO IP ADDRESS...................................... >> info.txt
ipconfig /all >> info.txt

ECHO ROUTE PRINT........................................ >> info.txt
route print >> info.txt

ECHO Netstat............................................. >> info.txt
netstat -ano >>  info.txt

ECHO CHECK FIREWALL INFO..................................... >> info.txt
netsh advfirewall show currentprofile >> info.txt
netsh advfirewall firewall show rule name=all >> info.txt

ECHO WMIC ................................>> info.txt
wmic product get name,version,vendor >> info.txt
