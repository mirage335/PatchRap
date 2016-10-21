v 20130925 2
C 49600 55600 1 180 0 io-1.sym
{
T 49400 55000 5 10 0 0 180 0 1
device=none
T 48700 55400 5 10 1 0 180 0 1
net=SigP:1
T 48700 55500 5 10 1 1 180 1 1
value=IO
}
C 46000 55800 1 270 0 gnd-1.sym
C 49600 57100 1 180 0 io-1.sym
{
T 49400 56500 5 10 0 0 180 0 1
device=none
T 48700 56900 5 10 1 0 180 0 1
net=SigAlt:1
T 48700 57000 5 10 1 1 180 1 1
value=IO
}
C 49600 53600 1 180 0 io-1.sym
{
T 49400 53000 5 10 0 0 180 0 1
device=none
T 48700 53400 5 10 1 0 180 0 1
net=PWMa:1
T 48700 53500 5 10 1 1 180 1 1
value=IO
}
C 42000 55500 1 90 1 inductor-1.sym
{
T 41500 55300 5 10 0 0 270 2 1
device=INDUCTOR
T 41300 55300 5 10 0 0 270 2 1
symversion=0.1
T 42000 55500 5 10 0 0 270 2 1
description_alt=$0.44 MOUSER 80-L0603B220KDWFT
T 42000 55500 5 10 0 0 270 2 1
footprint_alt=0603
T 42000 55500 5 10 0 0 0 6 1
description=$0.23 MOUSER 710-742792095
T 42000 55500 5 10 0 0 0 6 1
footprint=0805
T 42000 55500 5 10 0 0 0 6 1
cost=0.23
T 42000 55500 5 10 0 0 0 6 1
mfr=Wurth Electronics
T 42000 55500 5 10 0 0 0 6 1
mfrpn=742792095
T 42000 55500 5 10 0 0 0 6 1
dst=Mouser
T 42000 55500 5 10 0 0 0 6 1
dstpn=710-742792095
T 42000 55500 5 10 0 0 0 6 1
link=www.mouser.com/ds/2/445/742792095-538626.pdf
T 42000 55500 5 10 0 0 0 6 1
link_page=1
T 42000 55500 5 10 0 0 0 6 1
supplier=c
T 42000 55500 5 10 0 0 0 6 1
kitting=tape-no-leader
T 41900 55400 5 10 1 1 270 2 1
refdes=L1
T 42000 55200 5 10 1 1 270 2 1
value=10Ohm
}
C 42000 54300 1 0 1 gnd-1.sym
C 41900 55600 1 90 1 jumper-1.sym
{
T 41400 55300 5 8 0 0 270 2 1
device=JUMPER
T 41900 55600 5 10 0 0 180 6 1
footprint=0201
T 41900 55600 5 10 0 0 180 6 1
description=-
T 41900 55600 5 10 0 0 180 6 1
value=-
T 41900 55600 5 10 0 0 0 6 1
nobom=true
T 41900 55600 5 10 0 0 0 6 1
noplace=true
T 41500 55600 5 10 1 1 270 2 1
refdes=J2
}
C 40900 55600 1 180 0 io-1.sym
{
T 40700 55000 5 10 0 0 180 0 1
device=none
T 40000 55400 5 10 1 0 180 0 1
net=SigM:1
T 40000 55500 5 10 1 1 180 1 1
value=IO
}
C 41900 55600 1 180 1 io-1.sym
{
T 42100 55000 5 10 0 0 180 6 1
device=none
T 42800 55400 5 10 1 0 180 6 1
net=SigGND:1
T 42800 55500 5 10 1 1 180 7 1
value=IO
}
C 50000 55100 1 180 0 io-1.sym
{
T 49800 54500 5 10 0 0 180 0 1
device=none
T 49100 54900 5 10 1 0 180 0 1
net=SigGND:1
T 49100 55000 5 10 1 1 180 1 1
value=IO
}
N 41900 55500 42000 55500 4
N 42000 55500 42000 55300 4
N 42000 55300 42200 55300 4
N 42200 55300 42200 54800 4
N 41900 54600 42000 54600 4
N 42000 54600 42000 54800 4
N 42000 54800 42200 54800 4
C 36300 54200 1 0 0 in-1.sym
{
T 36300 54500 5 10 0 0 0 0 1
device=INPUT
T 36400 54300 5 10 1 1 0 0 1
refdes=sGND
}
C 36800 54000 1 0 0 gnd-1.sym
C 36300 55100 1 0 0 in-1.sym
{
T 36300 55400 5 10 0 0 0 0 1
device=INPUT
T 36400 55200 5 10 1 1 0 0 1
refdes=SigM
}
C 36900 55300 1 180 1 io-1.sym
{
T 37100 54700 5 10 0 0 180 6 1
device=none
T 37800 55100 5 10 1 0 180 6 1
net=SigM:1
T 37800 55200 5 10 1 1 180 7 1
value=IO
}
C 36300 55500 1 0 0 in-1.sym
{
T 36300 55800 5 10 0 0 0 0 1
device=INPUT
T 36400 55600 5 10 1 1 0 0 1
refdes=SigP
}
C 36900 55700 1 180 1 io-1.sym
{
T 37100 55100 5 10 0 0 180 6 1
device=none
T 37800 55500 5 10 1 0 180 6 1
net=SigP:1
T 37800 55600 5 10 1 1 180 7 1
value=IO
}
C 36300 56400 1 0 0 in-1.sym
{
T 36300 56700 5 10 0 0 0 0 1
device=INPUT
T 36400 56500 5 10 1 1 0 0 1
refdes=SigAlt
}
C 36900 56600 1 180 1 io-1.sym
{
T 37100 56000 5 10 0 0 180 6 1
device=none
T 37800 56500 5 10 1 0 180 6 1
net=SigAlt:1
T 37800 56600 5 10 1 1 180 7 1
value=IO
}
C 36800 52900 1 180 1 io-1.sym
{
T 37000 52300 5 10 0 0 180 6 1
device=none
T 37700 52700 5 10 1 0 180 6 1
net=PWMd:1
T 37700 52800 5 10 1 1 180 7 1
value=IO
}
C 36200 52700 1 0 0 in-1.sym
{
T 36200 53000 5 10 0 0 0 0 1
device=INPUT
T 36300 52800 5 10 1 1 0 0 1
refdes=PWMd
}
C 36800 53300 1 180 1 io-1.sym
{
T 37000 52700 5 10 0 0 180 6 1
device=none
T 37700 53100 5 10 1 0 180 6 1
net=PWMa:1
T 37700 53200 5 10 1 1 180 7 1
value=IO
}
C 36200 53100 1 0 0 in-1.sym
{
T 36200 53400 5 10 0 0 0 0 1
device=INPUT
T 36300 53200 5 10 1 1 0 0 1
refdes=PWMa
}
C 50000 53100 1 180 0 io-1.sym
{
T 49800 52500 5 10 0 0 180 0 1
device=none
T 49100 52900 5 10 1 0 180 0 1
net=PWMd:1
T 49100 53000 5 10 1 1 180 1 1
value=IO
}
C 46300 53700 1 0 0 connector6-2.sym
{
T 47000 56600 5 10 1 1 0 6 1
refdes=TERM
T 46600 56550 5 10 0 0 0 0 1
device=CONNECTOR_6
T 46600 56750 5 10 0 0 0 0 1
footprint=JUMPER6
T 46300 53700 5 10 0 0 0 0 1
value=-
T 46300 53700 5 10 0 0 0 0 1
description=$0.21 MOUSER 571-6404556
T 46300 53700 5 10 0 0 0 0 1
cost=0.21
T 46300 53700 5 10 0 0 0 0 1
mfr=TE Connectivity
T 46300 53700 5 10 0 0 0 0 1
mfrpn=640455-6
T 46300 53700 5 10 0 0 0 0 1
dst=Mouser
T 46300 53700 5 10 0 0 0 0 1
dstpn=571-6404556
T 46300 53700 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_82056_MTA_0708-815240.pdf
T 46300 53700 5 10 0 0 0 0 1
link_page=23
T 46300 53700 5 10 0 0 0 0 1
supplier=c
T 46300 53700 5 10 0 0 0 0 1
kitting=other
T 46300 53700 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 50100 56500 1 0 1 BNC-1.sym
{
T 49750 57150 5 10 0 0 0 6 1
device=BNC
T 50100 56500 5 10 0 0 0 6 1
description=$1.32 MOUSER 571-1-1337543-0
T 50100 56500 5 10 0 0 0 6 1
footprint=BNC_LAY
T 50100 56500 5 10 0 0 0 6 1
value=-
T 50200 57200 5 10 1 1 0 6 1
refdes=AIO3
T 50100 56500 5 10 0 0 0 0 1
cost=1.32
T 50100 56500 5 10 0 0 0 0 1
mfr=TE Connectivity / AMP
T 50100 56500 5 10 0 0 0 0 1
mfrpn=1-1337543-0
T 50100 56500 5 10 0 0 0 0 1
dst=Mouser
T 50100 56500 5 10 0 0 0 0 1
dstpn=571-1-1337543-0
T 50100 56500 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_6-1773448-5_ZDC_RF_COAX_50-75_OHM_1007-577044.pdf
T 50100 56500 5 10 0 0 0 0 1
link_page=4
T 50100 56500 5 10 0 0 0 0 1
supplier=c
T 50100 56500 5 10 0 2 0 0 1
kitting=other
T 50100 56500 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 50100 55000 1 0 1 BNC-1.sym
{
T 49750 55650 5 10 0 0 0 6 1
device=BNC
T 50100 55000 5 10 0 0 0 6 1
description=$1.32 MOUSER 571-1-1337543-0
T 50100 55000 5 10 0 0 0 6 1
footprint=BNC_LAY
T 50100 55000 5 10 0 0 0 6 1
value=-
T 50200 55700 5 10 1 1 0 6 1
refdes=AIO1
T 50100 55000 5 10 0 0 0 0 1
cost=1.32
T 50100 55000 5 10 0 0 0 0 1
mfr=TE Connectivity / AMP
T 50100 55000 5 10 0 0 0 0 1
mfrpn=1-1337543-0
T 50100 55000 5 10 0 0 0 0 1
dst=Mouser
T 50100 55000 5 10 0 0 0 0 1
dstpn=571-1-1337543-0
T 50100 55000 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_6-1773448-5_ZDC_RF_COAX_50-75_OHM_1007-577044.pdf
T 50100 55000 5 10 0 0 0 0 1
link_page=4
T 50100 55000 5 10 0 0 0 0 1
supplier=c
T 50100 55000 5 10 0 2 0 0 1
kitting=other
T 50100 55000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 50100 53000 1 0 1 BNC-1.sym
{
T 49750 53650 5 10 0 0 0 6 1
device=BNC
T 50100 53000 5 10 0 0 0 6 1
description=$1.32 MOUSER 571-1-1337543-0
T 50100 53000 5 10 0 0 0 6 1
footprint=BNC_LAY
T 50100 53000 5 10 0 0 0 6 1
value=-
T 50200 53700 5 10 1 1 0 6 1
refdes=AIO2
T 50100 53000 5 10 0 0 0 0 1
cost=1.32
T 50100 53000 5 10 0 0 0 0 1
mfr=TE Connectivity / AMP
T 50100 53000 5 10 0 0 0 0 1
mfrpn=1-1337543-0
T 50100 53000 5 10 0 0 0 0 1
dst=Mouser
T 50100 53000 5 10 0 0 0 0 1
dstpn=571-1-1337543-0
T 50100 53000 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_DS_6-1773448-5_ZDC_RF_COAX_50-75_OHM_1007-577044.pdf
T 50100 53000 5 10 0 0 0 0 1
link_page=4
T 50100 53000 5 10 0 0 0 0 1
supplier=c
T 50100 53000 5 10 0 2 0 0 1
kitting=other
T 50100 53000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 46300 54600 1 180 0 io-1.sym
{
T 46100 54000 5 10 0 0 180 0 1
device=none
T 45400 54400 5 10 1 0 180 0 1
net=PWMa:1
T 45400 54500 5 10 1 1 180 1 1
value=IO
}
C 46300 54200 1 180 0 io-1.sym
{
T 46100 53600 5 10 0 0 180 0 1
device=none
T 45400 54000 5 10 1 0 180 0 1
net=PWMd:1
T 45400 54100 5 10 1 1 180 1 1
value=IO
}
C 46300 55400 1 180 0 io-1.sym
{
T 46100 54800 5 10 0 0 180 0 1
device=none
T 45400 55200 5 10 1 0 180 0 1
net=SigP:1
T 45400 55300 5 10 1 1 180 1 1
value=IO
}
C 46300 56200 1 180 0 io-1.sym
{
T 46100 55600 5 10 0 0 180 0 1
device=none
T 45400 56000 5 10 1 0 180 0 1
net=SigAlt:1
T 45400 56100 5 10 1 1 180 1 1
value=IO
}
C 49700 56600 1 270 0 gnd-1.sym
C 41500 54100 1 180 1 io-1.sym
{
T 41700 53500 5 10 0 0 180 6 1
device=none
T 42400 53900 5 10 1 0 180 6 1
net=PWMd:1
T 42400 54000 5 10 1 1 180 7 1
value=IO
}
C 41400 54000 1 180 1 jumper-1.sym
{
T 41700 53500 5 8 0 0 0 2 1
device=JUMPER
T 41400 54000 5 10 0 0 270 6 1
footprint=0201
T 41400 54000 5 10 0 0 270 6 1
description=-
T 41400 54000 5 10 0 0 270 6 1
value=-
T 41400 54000 5 10 0 0 90 6 1
nobom=true
T 41400 54000 5 10 0 0 90 6 1
noplace=true
T 41400 53600 5 10 1 1 0 2 1
refdes=J1
}
C 41400 52700 1 0 0 gnd-1.sym
C 46300 55000 1 180 0 io-1.sym
{
T 46100 54400 5 10 0 0 180 0 1
device=none
T 45400 54800 5 10 1 0 180 0 1
net=SigM:1
T 45400 54900 5 10 1 1 180 1 1
value=IO
}
