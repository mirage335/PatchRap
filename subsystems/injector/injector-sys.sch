v 20130925 2
C 38300 60800 1 0 0 in-1.sym
{
T 38300 61100 5 10 0 0 0 0 1
device=INPUT
T 38400 60900 5 10 1 1 0 0 1
refdes=Vsys
}
C 38300 60400 1 0 0 in-1.sym
{
T 38300 60700 5 10 0 0 0 0 1
device=INPUT
T 38400 60500 5 10 1 1 0 0 1
refdes=pGND-sGND
}
C 38300 59800 1 0 0 in-1.sym
{
T 38300 60100 5 10 0 0 0 0 1
device=INPUT
T 38400 59900 5 10 1 1 0 0 1
refdes=Vext-Vmid-SigAlt
}
C 38300 59300 1 0 0 in-1.sym
{
T 38300 59600 5 10 0 0 0 0 1
device=INPUT
T 38400 59400 5 10 1 1 0 0 1
refdes=sGND
}
C 40400 60700 1 270 0 vee-1.sym
N 40400 60500 38900 60500 4
N 39500 60900 38900 60900 4
C 39500 59100 1 0 0 gnd-1.sym
N 39600 59400 38900 59400 4
C 39600 60100 1 270 0 Vext.sym
{
T 39900 60100 5 10 0 1 270 0 1
device=Vext
}
N 38900 59900 39600 59900 4
C 50000 65800 1 0 1 generic-power.sym
{
T 49800 66050 5 10 1 1 0 3 1
net=Vsys:1
}
C 49700 65200 1 270 1 vee-1.sym
C 44200 61500 1 90 0 generic-power.sym
{
T 43950 61700 5 10 1 1 90 3 1
net=Vsys:1
}
C 42700 59900 1 90 0 Vext.sym
{
T 42400 59900 5 10 0 1 90 0 1
device=Vext
}
C 42700 60300 1 180 1 diode-3.sym
{
T 43150 59750 5 10 0 0 180 6 1
device=DIODE
T 42700 60300 5 10 0 0 180 6 1
description=$0.26 MOUSER 750-CDBU0530
T 42700 60300 5 10 0 0 180 6 1
footprint=SMD_DIODE 60 30
T 42700 60300 5 10 0 0 180 0 1
cost=0.26
T 42700 60300 5 10 0 0 180 0 1
mfr=Comchip Technology
T 42700 60300 5 10 0 0 180 0 1
mfrpn=CDBU0530
T 42700 60300 5 10 0 0 180 0 1
dst=Mouser
T 42700 60300 5 10 0 0 180 0 1
dstpn=750-CDBU0530
T 42700 60300 5 10 0 0 180 0 1
link=www.mouser.com/ds/2/80/CDBU0530-RevA791919-16389.pdf
T 42700 60300 5 10 0 0 180 0 1
link_page=1
T 42700 60300 5 10 0 0 180 0 1
supplier=c
T 42700 60300 5 10 0 0 180 0 1
kitting=tape-no-leader
T 43050 60050 5 10 1 1 180 6 1
refdes=D2
T 42700 60300 5 10 1 1 180 6 1
value=0.4V
}
C 44300 60300 1 90 0 vee-1.sym
T 45300 61400 9 10 1 0 0 0 8
3 / 1 - 5V
3 \ 2 - Vee
2 - 3 - Vcc
1 / 4 - GND
1 \ 5 - Vee
2 - 6 - Vee
4 / 7 - 3.3V
4 \ 8 - Vee
C 48800 59800 1 0 0 genericio-sys.sym
{
T 49200 63300 5 10 1 1 0 0 1
device=GENERIC
T 49800 63000 5 10 1 1 0 0 1
refdes=X1
}
C 51600 59800 1 0 0 breadpwr-sys.sym
{
T 51900 62000 5 10 1 1 0 0 1
device=BREADPWR
T 52700 61800 5 10 1 1 0 0 1
refdes=X2
}
N 46400 65400 49700 65400 4
N 46400 65800 49800 65800 4
N 43300 61300 44300 61300 4
N 43600 60100 44300 60100 4
C 43400 60100 1 0 0 3.3V-plus-1.sym
C 51900 64400 1 0 0 connector8-2.sym
{
T 52200 68050 5 10 0 0 0 0 1
device=CONNECTOR_8
T 52200 68250 5 10 0 0 0 0 1
footprint=JUMPER8
T 51900 64400 5 10 0 0 0 0 1
value=-
T 51900 64400 5 10 0 0 0 0 1
description=$0.42 MOUSER 538-22-28-5084
T 51900 64400 5 10 0 0 0 0 1
cost=0.42
T 51900 64400 5 10 0 0 0 0 1
mfr=Molex
T 51900 64400 5 10 0 0 0 0 1
mfrpn=22-28-5084
T 51900 64400 5 10 0 0 0 0 1
dst=Mouser
T 51900 64400 5 10 0 0 0 0 1
dstpn=538-22-28-5084
T 51900 64400 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/276/0022285084_PCB_HEADERS-228315.pdf
T 51900 64400 5 10 0 0 0 0 1
link_page=http://www.molex.com/pdm_docs/sd/022285084_sd.pdf
T 51900 64400 5 10 0 0 0 0 1
supplier=c
T 51900 64400 5 10 0 0 0 0 1
kitting=other
T 51900 64400 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
T 52600 68100 5 10 1 1 0 6 1
refdes=REG
}
C 51600 67400 1 90 0 generic-power.sym
{
T 51350 67600 5 10 1 1 90 3 1
net=Vsys:1
}
C 51900 67000 1 90 0 vee-1.sym
C 51500 65800 1 90 0 generic-power.sym
{
T 51250 66000 5 10 1 1 90 3 1
net=Vsys:1
}
C 51900 65400 1 90 0 vee-1.sym
N 51500 66000 51900 66000 4
N 51600 67600 51900 67600 4
L 51500 66200 53300 66200 3 0 0 0 -1 -1
L 51500 64600 53300 64600 3 0 0 0 -1 -1
T 52800 66600 9 10 1 0 0 0 3
Normally only one regulator would
be used, connected to Vext by diode
or solder bridge.
B 43400 62300 700 400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 41700 62800 9 10 1 0 0 0 2
Omit and disconnect if 3.3V
power is desired for Vext.
T 41300 60400 9 10 1 0 0 0 2
Bypass with solder bridge if
OR-gating is not needed.
C 44100 62500 1 0 0 5V-plus-1.sym
C 43400 62700 1 180 1 diode-3.sym
{
T 43850 62150 5 10 0 0 180 6 1
device=DIODE
T 43400 62700 5 10 0 0 180 6 1
description=$0.26 MOUSER 750-CDBU0530
T 43400 62700 5 10 0 0 180 6 1
footprint=SMD_DIODE 60 30
T 43400 62700 5 10 0 0 180 0 1
cost=0.26
T 43400 62700 5 10 0 0 180 0 1
mfr=Comchip Technology
T 43400 62700 5 10 0 0 180 0 1
mfrpn=CDBU0530
T 43400 62700 5 10 0 0 180 0 1
dst=Mouser
T 43400 62700 5 10 0 0 180 0 1
dstpn=750-CDBU0530
T 43400 62700 5 10 0 0 180 0 1
link=www.mouser.com/ds/2/80/CDBU0530-RevA791919-16389.pdf
T 43400 62700 5 10 0 0 180 0 1
link_page=1
T 43400 62700 5 10 0 0 180 0 1
supplier=c
T 43400 62700 5 10 0 0 180 0 1
kitting=tape-no-leader
T 43750 62450 5 10 1 1 180 6 1
refdes=D1
T 43400 62700 5 10 1 1 180 6 1
value=0.4V
}
C 43400 62300 1 90 0 Vext.sym
{
T 43100 62300 5 10 0 1 90 0 1
device=Vext
}
B 42700 59900 700 400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 43300 61400 1 90 1 jumper-1.sym
{
T 42800 61100 5 8 0 0 270 2 1
device=JUMPER
T 43300 61400 5 10 0 0 180 6 1
footprint=0201
T 43300 61400 5 10 0 0 180 6 1
description=-
T 43300 61400 5 10 0 0 180 6 1
value=-
T 43300 61400 5 10 0 0 0 6 1
nobom=true
T 43300 61400 5 10 0 0 0 6 1
noplace=true
T 42900 61400 5 10 1 1 270 2 1
refdes=J1
}
C 43100 61300 1 0 0 generic-power.sym
{
T 43300 61550 5 10 1 1 0 3 1
net=Vmid:1
}
C 42100 61300 1 0 0 Vext.sym
{
T 42100 61600 5 10 0 1 0 0 1
device=Vext
}
C 51600 60400 1 90 0 Vext.sym
{
T 51300 60400 5 10 0 1 90 0 1
device=Vext
}
C 48800 61900 1 90 0 Vext.sym
{
T 48500 61900 5 10 0 1 90 0 1
device=Vext
}
C 48300 63000 1 0 0 generic-power.sym
{
T 48500 63250 5 10 1 1 0 3 1
net=Vsys:1
}
C 51200 61500 1 0 0 generic-power.sym
{
T 51400 61750 5 10 1 1 0 3 1
net=Vsys:1
}
N 51400 61500 51600 61500 4
N 48500 63000 48800 63000 4
C 48800 62500 1 90 0 vee-1.sym
C 51600 61000 1 90 0 vee-1.sym
C 51300 60200 1 270 1 gnd-1.sym
C 48500 60800 1 270 1 gnd-1.sym
C 43400 58800 1 90 1 jumper-1.sym
{
T 42900 58500 5 8 0 0 270 2 1
device=JUMPER
T 43400 58800 5 10 0 0 180 6 1
footprint=0201
T 43400 58800 5 10 0 0 180 6 1
description=-
T 43400 58800 5 10 0 0 180 6 1
value=-
T 43400 58800 5 10 0 0 0 6 1
nobom=true
T 43400 58800 5 10 0 0 0 6 1
noplace=true
T 43000 58800 5 10 1 1 270 2 1
refdes=J2
}
C 42100 58600 1 270 1 gnd-1.sym
C 43400 58900 1 270 0 vee-1.sym
T 50600 63500 9 10 1 0 0 0 4
Jumpers for pGND/sGND binding should
be bridged if necessary and appropriate,
which should be the case only if no other
common point is used for signal grounding.
C 44300 60700 1 90 0 vee-1.sym
C 44300 61900 1 90 0 vee-1.sym
C 44300 59500 1 90 0 vee-1.sym
C 44300 59100 1 90 0 vee-1.sym
N 44200 61700 44300 61700 4
T 39700 61700 9 10 1 0 0 0 2
No other power sources may be connected
to Vext if connected to Vmid.
C 48200 61600 1 0 0 in-1.sym
{
T 48200 61900 5 10 0 0 0 0 1
device=INPUT
T 48300 61700 5 10 1 1 0 0 1
refdes=SigM
}
C 48200 61300 1 0 0 in-1.sym
{
T 48200 61600 5 10 0 0 0 0 1
device=INPUT
T 48300 61400 5 10 1 1 0 0 1
refdes=SigP
}
C 48200 60200 1 0 0 in-1.sym
{
T 48200 60500 5 10 0 0 0 0 1
device=INPUT
T 48300 60300 5 10 1 1 0 0 1
refdes=PWMa
}
C 48200 59900 1 0 0 in-1.sym
{
T 48200 60200 5 10 0 0 0 0 1
device=INPUT
T 48300 60000 5 10 1 1 0 0 1
refdes=PWMd
}
C 46400 65000 1 0 1 connector2-2.sym
{
T 46100 66250 5 10 0 0 0 6 1
device=CONNECTOR_2
T 46100 66450 5 10 0 0 0 6 1
footprint=XT60
T 45700 66000 5 10 1 1 0 0 1
refdes=Vsys4
T 46400 65000 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 46400 65000 5 10 0 0 0 6 1
value=60A
T 46400 65000 5 10 0 0 0 0 1
cost=$0.80
T 46400 65000 5 10 0 0 0 0 1
mfr=HobbyKing
T 46400 65000 5 10 0 0 0 0 1
mfrpn=XT60
T 46400 65000 5 10 0 0 0 0 1
dst=HobbyKing
T 46400 65000 5 10 0 0 0 0 1
dstpn=XT60
T 46400 65000 5 10 0 0 0 0 1
link=http://www.hobbyking.com/hobbyking/store/__9572__Nylon_XT60_Connectors_Male_Female_5_pairs_GENUINE.html
T 46400 65000 5 10 0 0 0 0 1
link_page=N/A
T 46400 65000 5 10 0 0 0 0 1
supplier=c
T 46400 65000 5 10 0 0 0 0 1
kitting=other
T 46400 65000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
L 48200 64800 48200 63700 3 0 0 0 -1 -1
L 48200 64800 48000 64600 3 0 0 0 -1 -1
L 48200 64600 48000 64400 3 0 0 0 -1 -1
T 48200 63700 9 10 1 0 90 0 1
INPUT
L 50000 64700 48900 64700 3 0 0 0 -1 -1
L 50000 64700 49800 64900 3 0 0 0 -1 -1
T 48900 64700 9 10 1 0 0 0 1
Light Loads
L 45700 64700 47700 64700 3 0 0 0 -1 -1
L 45700 64700 45900 64900 3 0 0 0 -1 -1
T 47400 64700 9 10 1 0 0 6 1
Heavy Loads
C 39300 60900 1 0 0 generic-power.sym
{
T 39500 61150 5 10 1 1 0 3 1
net=Vsys:1
}
C 39700 59700 1 180 1 io-1.sym
{
T 39900 59100 5 10 0 0 180 6 1
device=none
T 40600 59500 5 10 1 0 180 6 1
net=SigAlt:1
T 40600 59600 5 10 1 1 180 7 1
value=IO
}
N 39600 59900 39600 59600 4
N 39600 59600 39700 59600 4
C 48800 62500 1 180 0 io-1.sym
{
T 48600 61900 5 10 0 0 180 0 1
device=none
T 47900 62300 5 10 1 0 180 0 1
net=SigAlt:1
T 47900 62400 5 10 1 1 180 1 1
value=IO
}
N 48800 62100 48800 62400 4
T 50900 62500 9 10 1 0 0 0 2
Connect to breadboard power rails.
Ideally should be a breakable extension.
L 48200 63700 41000 63700 3 0 0 0 -1 -1
C 44300 58900 1 0 0 connector9-2.sym
{
T 44600 62950 5 10 0 0 0 0 1
device=CONNECTOR_9
T 44300 58900 5 10 0 0 0 0 1
footprint=eth_571-1734795-1
T 44300 58900 5 10 0 0 0 0 1
value=-
T 44300 58900 5 10 0 0 0 0 1
description=$0.95 MOUSER 571-1734795-1
T 45000 63000 5 10 1 1 0 6 1
refdes=PSU
T 44300 58900 5 10 0 0 0 0 1
cost=0.95
T 44300 58900 5 10 0 0 0 0 1
mfr=TE Connectivity
T 44300 58900 5 10 0 0 0 0 1
mfrpn=1734795-1
T 44300 58900 5 10 0 0 0 0 1
dst=Mouser
T 44300 58900 5 10 0 0 0 0 1
dstpn=571-1734795-1
T 44300 58900 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_CD_1734795_E_C_1734795_E-658761.pdf
T 44300 58900 5 10 0 0 0 0 1
link_page=1
T 44300 58900 5 10 0 0 0 0 1
supplier=c
T 44300 58900 5 10 0 0 0 0 1
kitting=other
T 44300 58900 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 47500 65000 1 0 1 connector2-2.sym
{
T 47200 66250 5 10 0 0 0 6 1
device=CONNECTOR_2
T 47200 66450 5 10 0 0 0 6 1
footprint=XT60
T 46800 66000 5 10 1 1 0 0 1
refdes=Vsys3
T 47500 65000 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 47500 65000 5 10 0 0 0 6 1
value=60A
T 47500 65000 5 10 0 0 0 0 1
cost=$0.80
T 47500 65000 5 10 0 0 0 0 1
mfr=HobbyKing
T 47500 65000 5 10 0 0 0 0 1
mfrpn=XT60
T 47500 65000 5 10 0 0 0 0 1
dst=HobbyKing
T 47500 65000 5 10 0 0 0 0 1
dstpn=XT60
T 47500 65000 5 10 0 0 0 0 1
link=http://www.hobbyking.com/hobbyking/store/__9572__Nylon_XT60_Connectors_Male_Female_5_pairs_GENUINE.html
T 47500 65000 5 10 0 0 0 0 1
link_page=N/A
T 47500 65000 5 10 0 0 0 0 1
supplier=c
T 47500 65000 5 10 0 0 0 0 1
kitting=other
T 47500 65000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 48600 65000 1 0 1 connector2-2.sym
{
T 48300 66250 5 10 0 0 0 6 1
device=CONNECTOR_2
T 48300 66450 5 10 0 0 0 6 1
footprint=XT60
T 47900 66000 5 10 1 1 0 0 1
refdes=Vsys2
T 48600 65000 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 48600 65000 5 10 0 0 0 6 1
value=60A
T 48600 65000 5 10 0 0 0 0 1
cost=$0.80
T 48600 65000 5 10 0 0 0 0 1
mfr=HobbyKing
T 48600 65000 5 10 0 0 0 0 1
mfrpn=XT60
T 48600 65000 5 10 0 0 0 0 1
dst=HobbyKing
T 48600 65000 5 10 0 0 0 0 1
dstpn=XT60
T 48600 65000 5 10 0 0 0 0 1
link=http://www.hobbyking.com/hobbyking/store/__9572__Nylon_XT60_Connectors_Male_Female_5_pairs_GENUINE.html
T 48600 65000 5 10 0 0 0 0 1
link_page=N/A
T 48600 65000 5 10 0 0 0 0 1
supplier=c
T 48600 65000 5 10 0 0 0 0 1
kitting=other
T 48600 65000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 49600 65000 1 0 1 connector2-2.sym
{
T 49300 66250 5 10 0 0 0 6 1
device=CONNECTOR_2
T 49300 66450 5 10 0 0 0 6 1
footprint=XT60
T 48900 66000 5 10 1 1 0 0 1
refdes=Vsys1
T 49600 65000 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 49600 65000 5 10 0 0 0 6 1
value=60A
T 49600 65000 5 10 0 0 0 0 1
cost=$0.80
T 49600 65000 5 10 0 0 0 0 1
mfr=HobbyKing
T 49600 65000 5 10 0 0 0 0 1
mfrpn=XT60
T 49600 65000 5 10 0 0 0 0 1
dst=HobbyKing
T 49600 65000 5 10 0 0 0 0 1
dstpn=XT60
T 49600 65000 5 10 0 0 0 0 1
link=http://www.hobbyking.com/hobbyking/store/__9572__Nylon_XT60_Connectors_Male_Female_5_pairs_GENUINE.html
T 49600 65000 5 10 0 0 0 0 1
link_page=N/A
T 49600 65000 5 10 0 0 0 0 1
supplier=c
T 49600 65000 5 10 0 0 0 0 1
kitting=other
T 49600 65000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 48000 67000 1 90 0 battery-3.sym
{
T 47300 67300 5 10 0 0 90 0 1
device=BATTERY
T 47500 67300 5 10 1 1 90 0 1
refdes=B1
T 47050 67300 5 10 0 0 90 0 1
symversion=0.1
T 48000 67100 5 10 1 1 0 0 1
value=6S-24Vfloat-7.5Ac-97Ad
T 48000 67000 5 10 0 0 0 0 1
footprint=none
T 48000 67000 5 10 0 0 0 0 1
description=$34.95 HobbyKing Turnigy nano-tech 1550mah 6S 65~130C Lipo Pack (450L Heli)
T 48000 67000 5 10 0 0 0 0 1
noplace=true
T 48000 67000 5 10 0 0 0 0 1
cost=34.95
T 48000 67000 5 10 0 0 0 0 1
mfr=Turnigy
T 48000 67000 5 10 0 0 0 0 1
mfrpn=Turnigy nano-tech 1550mah 6S 65~130C Lipo Pack (450L Heli)
T 48000 67000 5 10 0 0 0 0 1
dst=HobbyKing
T 48000 67000 5 10 0 0 0 0 1
dstpn=Turnigy nano-tech 1550mah 6S 65~130C Lipo Pack (450L Heli)
T 48000 67000 5 10 0 0 0 0 1
link=http://www.hobbyking.com/hobbyking/store/__51445__Turnigy_nano_tech_1550mah_6S_65_130C_Lipo_Pack_450L_Heli_.html
T 48000 67000 5 10 0 0 0 0 1
link_page=N/A
T 48000 67000 5 10 0 0 0 0 1
supplier=c
T 48000 67000 5 10 0 0 0 0 1
kitting=other
T 48000 67000 5 10 0 0 0 0 1
kiting_d=External component, not part of PCB.
}
C 48000 68100 1 0 1 generic-power.sym
{
T 47800 68350 5 10 1 1 0 3 1
net=Vsys:1
}
C 47600 67000 1 180 1 vee-1.sym
C 51900 65000 1 90 0 3.3V-plus-1.sym
C 51900 66600 1 90 0 5V-plus-1.sym
T 52900 64600 9 10 1 0 0 0 1
3.3V
T 53000 66200 9 10 1 0 0 0 1
5V
