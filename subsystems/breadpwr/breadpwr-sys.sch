v 20130925 2
C 45100 56400 1 90 0 Vext.sym
{
T 44800 56400 5 10 0 1 90 0 1
device=Vext
}
C 45000 55100 1 0 0 gnd-1.sym
N 43300 55800 43300 55400 4
C 42300 55500 1 270 0 jumper-1.sym
{
T 42800 55200 5 8 0 0 270 0 1
device=JUMPER
T 42300 55500 5 10 0 0 180 0 1
footprint=0201
T 42300 55500 5 10 0 0 180 0 1
description=-
T 42300 55500 5 10 0 0 180 0 1
value=-
T 42300 55500 5 10 0 0 0 0 1
nobom=true
T 42300 55500 5 10 0 0 0 0 1
noplace=true
T 42700 55500 5 10 1 1 270 0 1
refdes=J1
}
C 42300 55200 1 90 0 vee-1.sym
N 43300 55400 42300 55400 4
C 45100 55000 1 0 0 connector4-2.sym
{
T 45400 57050 5 10 0 0 0 0 1
device=CONNECTOR_4
T 45400 57250 5 10 0 0 0 0 1
footprint=HEADER4_1
T 45100 55000 5 10 0 0 0 0 1
value=-
T 45100 55000 5 10 0 0 0 0 1
description=$0.27 MOUSER 517-9612046804AR
T 45100 55000 5 10 0 0 0 0 1
cost=0.27
T 45100 55000 5 10 0 0 0 0 1
mfr=3M Electronic Solutions Division
T 45100 55000 5 10 0 0 0 0 1
mfrpn=961204-6804-AR
T 45100 55000 5 10 0 0 0 0 1
dst=Mouser
T 45100 55000 5 10 0 0 0 0 1
dstpn=517-9612046804AR 
T 45100 55000 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/1/ts2181-30266.pdf
T 45100 55000 5 10 0 0 0 0 1
link_page=2
T 45100 55000 5 10 0 0 0 0 1
supplier=c
T 45100 55000 5 10 0 0 0 0 1
kitting=other
T 45100 55000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
T 45800 57100 5 10 1 1 0 6 1
refdes=PWR2
}
N 45100 55400 45100 55800 4
N 45100 56600 45100 56200 4
C 43300 55000 1 0 0 connector4-2.sym
{
T 43600 57050 5 10 0 0 0 0 1
device=CONNECTOR_4
T 43600 57250 5 10 0 0 0 0 1
footprint=HEADER4_1
T 43300 55000 5 10 0 0 0 0 1
value=-
T 43300 55000 5 10 0 0 0 0 1
description=$0.27 MOUSER 517-9612046804AR
T 43300 55000 5 10 0 0 0 0 1
cost=0.27
T 43300 55000 5 10 0 0 0 0 1
mfr=3M Electronic Solutions Division
T 43300 55000 5 10 0 0 0 0 1
mfrpn=961204-6804-AR
T 43300 55000 5 10 0 0 0 0 1
dst=Mouser
T 43300 55000 5 10 0 0 0 0 1
dstpn=517-9612046804AR 
T 43300 55000 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/1/ts2181-30266.pdf
T 43300 55000 5 10 0 0 0 0 1
link_page=2
T 43300 55000 5 10 0 0 0 0 1
supplier=c
T 43300 55000 5 10 0 0 0 0 1
kitting=other
T 43300 55000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
T 44000 57100 5 10 1 1 0 6 1
refdes=PWR1
}
N 43300 56600 43300 56200 4
T 43400 57500 9 10 1 0 0 0 1
Connect to breadboard power rails.
C 40300 56900 1 0 0 in-1.sym
{
T 40300 57200 5 10 0 0 0 0 1
device=INPUT
T 40400 57000 5 10 1 1 0 0 1
refdes=Vsys
}
C 40300 56500 1 0 0 in-1.sym
{
T 40300 56800 5 10 0 0 0 0 1
device=INPUT
T 40400 56600 5 10 1 1 0 0 1
refdes=pGND-sGND
}
C 40200 55900 1 0 0 in-1.sym
{
T 40200 56200 5 10 0 0 0 0 1
device=INPUT
T 40300 56000 5 10 1 1 0 0 1
refdes=Vext-Vmid
}
C 40200 55400 1 0 0 in-1.sym
{
T 40200 55700 5 10 0 0 0 0 1
device=INPUT
T 40300 55500 5 10 1 1 0 0 1
refdes=sGND
}
C 41300 57000 1 0 0 generic-power.sym
{
T 41500 57250 5 10 1 1 0 3 1
net=Vsys:1
}
C 41500 56800 1 270 0 vee-1.sym
N 41500 56600 40900 56600 4
N 41500 57000 40900 57000 4
C 41400 55200 1 0 0 gnd-1.sym
N 41500 55500 40800 55500 4
C 41500 56200 1 270 0 Vext.sym
{
T 41800 56200 5 10 0 1 270 0 1
device=Vext
}
N 40800 56000 41500 56000 4
C 43300 56400 1 90 0 generic-power.sym
{
T 43050 56600 5 10 1 1 90 3 1
net=Vsys:1
}
