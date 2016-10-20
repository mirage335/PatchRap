v 20130925 2
C 43600 57000 1 0 1 BNC-1.sym
{
T 43250 57650 5 10 0 0 0 6 1
device=BNC
T 43600 57000 5 10 0 0 0 6 1
description=$1.32 MOUSER 571-1-1337543-0
T 43600 57000 5 10 0 0 0 6 1
footprint=BNC_LAY
T 43600 57000 5 10 0 0 0 6 1
value=-
T 43700 57700 5 10 1 1 0 6 1
refdes=AIO1
T 43600 57000 5 10 0 0 0 0 1
cost=1.32
T 43600 57000 5 10 0 0 0 0 1
mfr=TE Connectivity / AMP
T 43600 57000 5 10 0 0 0 0 1
mfrpn=1-1337543-0
T 43600 57000 5 10 0 0 0 0 1
dst=Mouser
T 43600 57000 5 10 0 0 0 0 1
dstpn=571-1-1337543-0
T 43600 57000 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_6-1773448-5_ZDC_RF_COAX_50-75_OHM_1007-577044.pdf
T 43600 57000 5 10 0 0 0 0 1
link_page=4
T 43600 57000 5 10 0 0 0 0 1
supplier=c
T 43600 57000 5 10 0 2 0 0 1
kitting=other
T 43600 57000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 43100 57600 1 180 0 io-1.sym
{
T 42900 57000 5 10 0 0 180 0 1
device=none
T 42200 57400 5 10 1 0 180 0 1
net=SigP:1
T 42200 57500 5 10 1 1 180 1 1
value=IO
}
C 43400 58200 1 0 0 gnd-1.sym
C 43100 59100 1 180 0 io-1.sym
{
T 42900 58500 5 10 0 0 180 0 1
device=none
T 42200 58900 5 10 1 0 180 0 1
net=SigAlt:1
T 42200 59000 5 10 1 1 180 1 1
value=IO
}
C 43000 54100 1 180 0 io-1.sym
{
T 42800 53500 5 10 0 0 180 0 1
device=none
T 42100 53900 5 10 1 0 180 0 1
net=PWMa:1
T 42100 54000 5 10 1 1 180 1 1
value=IO
}
C 43500 56000 1 90 1 inductor-1.sym
{
T 43000 55800 5 10 0 0 270 2 1
device=INDUCTOR
T 42800 55800 5 10 0 0 270 2 1
symversion=0.1
T 43500 56000 5 10 0 0 270 2 1
description_alt=$0.44 MOUSER 80-L0603B220KDWFT
T 43500 56000 5 10 0 0 270 2 1
footprint_alt=0603
T 43500 56000 5 10 0 0 0 6 1
description=$0.23 MOUSER 710-742792095
T 43500 56000 5 10 0 0 0 6 1
footprint=0805
T 43500 56000 5 10 0 0 0 6 1
cost=0.23
T 43500 56000 5 10 0 0 0 6 1
mfr=Wurth Electronics
T 43500 56000 5 10 0 0 0 6 1
mfrpn=742792095
T 43500 56000 5 10 0 0 0 6 1
dst=Mouser
T 43500 56000 5 10 0 0 0 6 1
dstpn=710-742792095
T 43500 56000 5 10 0 0 0 6 1
link=www.mouser.com/ds/2/445/742792095-538626.pdf
T 43500 56000 5 10 0 0 0 6 1
link_page=1
T 43500 56000 5 10 0 0 0 6 1
supplier=c
T 43500 56000 5 10 0 0 0 6 1
kitting=tape-no-leader
T 43400 55900 5 10 1 1 270 2 1
refdes=L1
T 43500 55700 5 10 1 1 270 2 1
value=10Ohm
}
C 43500 54800 1 0 1 gnd-1.sym
C 43400 56100 1 90 1 jumper-1.sym
{
T 42900 55800 5 8 0 0 270 2 1
device=JUMPER
T 43400 56100 5 10 0 0 180 6 1
footprint=0201
T 43400 56100 5 10 0 0 180 6 1
description=-
T 43400 56100 5 10 0 0 180 6 1
value=-
T 43400 56100 5 10 0 0 0 6 1
nobom=true
T 43400 56100 5 10 0 0 0 6 1
noplace=true
T 43000 56100 5 10 1 1 270 2 1
refdes=J2
}
C 42400 56100 1 180 0 io-1.sym
{
T 42200 55500 5 10 0 0 180 0 1
device=none
T 41500 55900 5 10 1 0 180 0 1
net=SigM:1
T 41500 56000 5 10 1 1 180 1 1
value=IO
}
C 43400 56100 1 180 1 io-1.sym
{
T 43600 55500 5 10 0 0 180 6 1
device=none
T 44300 55900 5 10 1 0 180 6 1
net=SigGND:1
T 44300 56000 5 10 1 1 180 7 1
value=IO
}
C 43500 57100 1 180 0 io-1.sym
{
T 43300 56500 5 10 0 0 180 0 1
device=none
T 42600 56900 5 10 1 0 180 0 1
net=SigGND:1
T 42600 57000 5 10 1 1 180 1 1
value=IO
}
N 43400 56000 43500 56000 4
N 43500 56000 43500 55800 4
N 43500 55800 43700 55800 4
N 43700 55800 43700 55300 4
N 43400 55100 43500 55100 4
N 43500 55100 43500 55300 4
N 43500 55300 43700 55300 4
C 37900 55500 1 0 0 in-1.sym
{
T 37900 55800 5 10 0 0 0 0 1
device=INPUT
T 38000 55600 5 10 1 1 0 0 1
refdes=sGND
}
C 38400 55300 1 0 0 gnd-1.sym
C 37900 56400 1 0 0 in-1.sym
{
T 37900 56700 5 10 0 0 0 0 1
device=INPUT
T 38000 56500 5 10 1 1 0 0 1
refdes=SigM
}
C 38500 56600 1 180 1 io-1.sym
{
T 38700 56000 5 10 0 0 180 6 1
device=none
T 39400 56400 5 10 1 0 180 6 1
net=SigM:1
T 39400 56500 5 10 1 1 180 7 1
value=IO
}
C 37900 56800 1 0 0 in-1.sym
{
T 37900 57100 5 10 0 0 0 0 1
device=INPUT
T 38000 56900 5 10 1 1 0 0 1
refdes=SigP
}
C 38500 57000 1 180 1 io-1.sym
{
T 38700 56400 5 10 0 0 180 6 1
device=none
T 39400 56800 5 10 1 0 180 6 1
net=SigP:1
T 39400 56900 5 10 1 1 180 7 1
value=IO
}
C 37900 57700 1 0 0 in-1.sym
{
T 37900 58000 5 10 0 0 0 0 1
device=INPUT
T 38000 57800 5 10 1 1 0 0 1
refdes=SigAlt
}
C 38500 57900 1 180 1 io-1.sym
{
T 38700 57300 5 10 0 0 180 6 1
device=none
T 39400 57800 5 10 1 0 180 6 1
net=SigAlt:1
T 39400 57900 5 10 1 1 180 7 1
value=IO
}
C 38400 54200 1 180 1 io-1.sym
{
T 38600 53600 5 10 0 0 180 6 1
device=none
T 39300 54000 5 10 1 0 180 6 1
net=PWMd:1
T 39300 54100 5 10 1 1 180 7 1
value=IO
}
C 37800 54000 1 0 0 in-1.sym
{
T 37800 54300 5 10 0 0 0 0 1
device=INPUT
T 37900 54100 5 10 1 1 0 0 1
refdes=PWMd
}
C 38400 54600 1 180 1 io-1.sym
{
T 38600 54000 5 10 0 0 180 6 1
device=none
T 39300 54400 5 10 1 0 180 6 1
net=PWMa:1
T 39300 54500 5 10 1 1 180 7 1
value=IO
}
C 37800 54400 1 0 0 in-1.sym
{
T 37800 54700 5 10 0 0 0 0 1
device=INPUT
T 37900 54500 5 10 1 1 0 0 1
refdes=PWMa
}
C 38300 54100 1 180 1 jumper-1.sym
{
T 38600 53600 5 8 0 0 0 2 1
device=JUMPER
T 38300 54100 5 10 0 0 270 6 1
footprint=0201
T 38300 54100 5 10 0 0 270 6 1
description=-
T 38300 54100 5 10 0 0 270 6 1
value=-
T 38300 54100 5 10 0 0 90 6 1
nobom=true
T 38300 54100 5 10 0 0 90 6 1
noplace=true
T 38300 53700 5 10 1 1 0 2 1
refdes=J1
}
C 38300 52800 1 0 0 gnd-1.sym
C 43600 58500 1 0 1 BNC-1.sym
{
T 43250 59150 5 10 0 0 0 6 1
device=BNC
T 43600 58500 5 10 0 0 0 6 1
description=$1.32 MOUSER 571-1-1337543-0
T 43600 58500 5 10 0 0 0 6 1
footprint=BNC_LAY
T 43600 58500 5 10 0 0 0 6 1
value=-
T 43700 59200 5 10 1 1 0 6 1
refdes=AIO3
T 43600 58500 5 10 0 0 0 0 1
cost=1.32
T 43600 58500 5 10 0 0 0 0 1
mfr=TE Connectivity / AMP
T 43600 58500 5 10 0 0 0 0 1
mfrpn=1-1337543-0
T 43600 58500 5 10 0 0 0 0 1
dst=Mouser
T 43600 58500 5 10 0 0 0 0 1
dstpn=571-1-1337543-0
T 43600 58500 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_6-1773448-5_ZDC_RF_COAX_50-75_OHM_1007-577044.pdf
T 43600 58500 5 10 0 0 0 0 1
link_page=4
T 43600 58500 5 10 0 0 0 0 1
supplier=c
T 43600 58500 5 10 0 2 0 0 1
kitting=other
T 43600 58500 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 43500 53500 1 0 1 BNC-1.sym
{
T 43150 54150 5 10 0 0 0 6 1
device=BNC
T 43500 53500 5 10 0 0 0 6 1
description=$1.32 MOUSER 571-1-1337543-0
T 43500 53500 5 10 0 0 0 6 1
footprint=BNC_LAY
T 43500 53500 5 10 0 0 0 6 1
value=-
T 43600 54200 5 10 1 1 0 6 1
refdes=AIO2
T 43500 53500 5 10 0 0 0 0 1
cost=1.32
T 43500 53500 5 10 0 0 0 0 1
mfr=TE Connectivity / AMP
T 43500 53500 5 10 0 0 0 0 1
mfrpn=1-1337543-0
T 43500 53500 5 10 0 0 0 0 1
dst=Mouser
T 43500 53500 5 10 0 0 0 0 1
dstpn=571-1-1337543-0
T 43500 53500 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_6-1773448-5_ZDC_RF_COAX_50-75_OHM_1007-577044.pdf
T 43500 53500 5 10 0 0 0 0 1
link_page=4
T 43500 53500 5 10 0 0 0 0 1
supplier=c
T 43500 53500 5 10 0 2 0 0 1
kitting=other
T 43500 53500 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 43400 53600 1 180 0 io-1.sym
{
T 43200 53000 5 10 0 0 180 0 1
device=none
T 42500 53400 5 10 1 0 180 0 1
net=PWMd:1
T 42500 53500 5 10 1 1 180 1 1
value=IO
}
