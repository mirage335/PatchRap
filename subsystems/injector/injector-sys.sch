v 20130925 2
C 40800 56900 1 0 0 in-1.sym
{
T 40800 57200 5 10 0 0 0 0 1
device=INPUT
T 40900 57000 5 10 1 1 0 0 1
refdes=Vsys
}
C 40800 56500 1 0 0 in-1.sym
{
T 40800 56800 5 10 0 0 0 0 1
device=INPUT
T 40900 56600 5 10 1 1 0 0 1
refdes=pGND-sGND
}
C 40800 55900 1 0 0 in-1.sym
{
T 40800 56200 5 10 0 0 0 0 1
device=INPUT
T 40900 56000 5 10 1 1 0 0 1
refdes=Vext-Vmid-SigAlt
}
C 40800 55400 1 0 0 in-1.sym
{
T 40800 55700 5 10 0 0 0 0 1
device=INPUT
T 40900 55500 5 10 1 1 0 0 1
refdes=sGND
}
C 42900 56800 1 270 0 vee-1.sym
N 42900 56600 41400 56600 4
N 42000 57000 41400 57000 4
C 42000 55200 1 0 0 gnd-1.sym
N 42100 55500 41400 55500 4
C 42100 56200 1 270 0 Vext.sym
{
T 42400 56200 5 10 0 1 270 0 1
device=Vext
}
N 41400 56000 42100 56000 4
C 48800 61300 1 0 1 connector2-2.sym
{
T 48500 62550 5 10 0 0 0 6 1
device=CONNECTOR_2
T 48500 62750 5 10 0 0 0 6 1
footprint=XT60
T 48100 62300 5 10 1 1 0 0 1
refdes=Vsys1
T 48800 61300 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 48800 61300 5 10 0 0 0 6 1
value=60A
}
C 49100 62100 1 0 1 generic-power.sym
{
T 48900 62350 5 10 1 1 0 3 1
net=Vsys:1
}
C 48800 61500 1 270 1 vee-1.sym
C 46800 55000 1 0 0 connector9-2.sym
{
T 47100 59050 5 10 0 0 0 0 1
device=CONNECTOR_9
T 46800 55000 5 10 0 0 0 0 1
footprint=eth_538-95540-2881
T 46800 55000 5 10 0 0 0 0 1
value=-
T 46800 55000 5 10 0 0 0 0 1
description=$0.95 MOUSER 571-1734795-1
T 46800 55000 5 10 0 0 0 0 1
cost=0.95
T 46800 55000 5 10 0 0 0 0 1
mfr=TE Connectivity
T 46800 55000 5 10 0 0 0 0 1
mfrpn=1734795-1
T 46800 55000 5 10 0 0 0 0 1
dst=Mouser
T 46800 55000 5 10 0 0 0 0 1
dstpn=571-1734795-1
T 46800 55000 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/418/NG_CD_1734795_E_C_1734795_E-658761.pdf
T 46800 55000 5 10 0 0 0 0 1
link_page=1
T 46800 55000 5 10 0 0 0 0 1
supplier=c
T 46800 55000 5 10 0 0 0 0 1
kitting=other
T 46800 55000 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
T 47500 59100 5 10 1 1 0 6 1
refdes=PSU
}
C 46700 57600 1 90 0 generic-power.sym
{
T 46450 57800 5 10 1 1 90 3 1
net=Vsys:1
}
C 45200 56000 1 90 0 Vext.sym
{
T 44900 56000 5 10 0 1 90 0 1
device=Vext
}
C 45200 56400 1 180 1 diode-3.sym
{
T 45650 55850 5 10 0 0 180 6 1
device=DIODE
T 45200 56400 5 10 0 0 180 6 1
description=$0.26 MOUSER 750-CDBU0530
T 45200 56400 5 10 0 0 180 6 1
footprint=SMD_DIODE 60 30
T 45200 56400 5 10 0 0 180 0 1
cost=0.26
T 45200 56400 5 10 0 0 180 0 1
mfr=Comchip Technology
T 45200 56400 5 10 0 0 180 0 1
mfrpn=CDBU0530
T 45200 56400 5 10 0 0 180 0 1
dst=Mouser
T 45200 56400 5 10 0 0 180 0 1
dstpn=750-CDBU0530
T 45200 56400 5 10 0 0 180 0 1
link=www.mouser.com/ds/2/80/CDBU0530-RevA791919-16389.pdf
T 45200 56400 5 10 0 0 180 0 1
link_page=1
T 45200 56400 5 10 0 0 180 0 1
supplier=c
T 45200 56400 5 10 0 0 180 0 1
kitting=tape-no-leader
T 45550 56150 5 10 1 1 180 6 1
refdes=D1
T 45200 56400 5 10 1 1 180 6 1
value=0.4V
}
C 46800 56400 1 90 0 vee-1.sym
T 47800 57500 9 10 1 0 0 0 8
3 / 1 - 5V
3 \ 2 - Vee
2 - 3 - Vcc
1 / 4 - GND
1 \ 5 - Vee
2 - 6 - Vee
4 / 7 - 3.3V
4 \ 8 - Vee
C 52500 59800 1 0 0 genericio-sys.sym
{
T 52900 63300 5 10 1 1 0 0 1
device=GENERIC
T 53500 63000 5 10 1 1 0 0 1
refdes=X?
}
C 55300 59800 1 0 0 breadpwr-sys.sym
{
T 55600 62000 5 10 1 1 0 0 1
device=BREADPWR
T 56400 61800 5 10 1 1 0 0 1
refdes=X?
}
C 47700 61300 1 0 1 connector2-2.sym
{
T 47400 62550 5 10 0 0 0 6 1
device=CONNECTOR_2
T 47400 62750 5 10 0 0 0 6 1
footprint=XT60
T 47000 62300 5 10 1 1 0 0 1
refdes=Vsys2
T 47700 61300 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 47700 61300 5 10 0 0 0 6 1
value=60A
}
C 46500 61300 1 0 1 connector2-2.sym
{
T 46200 62550 5 10 0 0 0 6 1
device=CONNECTOR_2
T 46200 62750 5 10 0 0 0 6 1
footprint=XT60
T 45800 62300 5 10 1 1 0 0 1
refdes=Vsys3
T 46500 61300 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 46500 61300 5 10 0 0 0 6 1
value=60A
}
N 45500 61700 48800 61700 4
N 45500 62100 48900 62100 4
N 45800 57400 46800 57400 4
N 46100 56200 46800 56200 4
C 45900 56200 1 0 0 3.3V-plus-1.sym
C 50800 55400 1 0 0 connector8-2.sym
{
T 51100 59050 5 10 0 0 0 0 1
device=CONNECTOR_8
T 51100 59250 5 10 0 0 0 0 1
footprint=JUMPER8
T 50800 55400 5 10 0 0 0 0 1
value=-
T 50800 55400 5 10 0 0 0 0 1
description=$0.42 MOUSER 538-22-28-5084
T 50800 55400 5 10 0 0 0 0 1
cost=0.42
T 50800 55400 5 10 0 0 0 0 1
mfr=Molex
T 50800 55400 5 10 0 0 0 0 1
mfrpn=22-28-5084
T 50800 55400 5 10 0 0 0 0 1
dst=Mouser
T 50800 55400 5 10 0 0 0 0 1
dstpn=538-22-28-5084
T 50800 55400 5 10 0 0 0 0 1
link=http://www.mouser.com/ds/2/276/0022285084_PCB_HEADERS-228315.pdf
T 50800 55400 5 10 0 0 0 0 1
link_page=http://www.molex.com/pdm_docs/sd/022285084_sd.pdf
T 50800 55400 5 10 0 0 0 0 1
supplier=c
T 50800 55400 5 10 0 0 0 0 1
kitting=other
T 50800 55400 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
T 51500 59100 5 10 1 1 0 6 1
refdes=REG
}
C 50500 58400 1 90 0 generic-power.sym
{
T 50250 58600 5 10 1 1 90 3 1
net=Vsys:1
}
C 50800 58000 1 90 0 vee-1.sym
N 50800 57800 50800 58200 4
C 50400 56800 1 90 0 generic-power.sym
{
T 50150 57000 5 10 1 1 90 3 1
net=Vsys:1
}
C 50800 56400 1 90 0 vee-1.sym
N 50800 56200 50800 56600 4
N 50400 57000 50800 57000 4
N 50500 58600 50800 58600 4
C 50800 57200 1 90 0 3.3V-plus-1.sym
C 50800 55600 1 90 0 5V-plus-1.sym
L 50400 57200 52200 57200 3 0 0 0 -1 -1
L 50400 55600 52200 55600 3 0 0 0 -1 -1
T 51700 57200 9 10 1 0 0 0 1
3.3V
T 51900 55600 9 10 1 0 0 0 1
5V
T 51700 57600 9 10 1 0 0 0 3
Normally only one regulator would
be used, connected to Vext by diode
or solder bridge.
B 45900 58400 700 400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 44200 58900 9 10 1 0 0 0 2
Omit and disconnect if 3.3V
power is desired for Vext.
T 43800 56500 9 10 1 0 0 0 2
Bypass with solder bridge if
OR-gating is not needed.
C 46600 58600 1 0 0 5V-plus-1.sym
C 45900 58800 1 180 1 diode-3.sym
{
T 46350 58250 5 10 0 0 180 6 1
device=DIODE
T 45900 58800 5 10 0 0 180 6 1
description=$0.26 MOUSER 750-CDBU0530
T 45900 58800 5 10 0 0 180 6 1
footprint=SMD_DIODE 60 30
T 45900 58800 5 10 0 0 180 0 1
cost=0.26
T 45900 58800 5 10 0 0 180 0 1
mfr=Comchip Technology
T 45900 58800 5 10 0 0 180 0 1
mfrpn=CDBU0530
T 45900 58800 5 10 0 0 180 0 1
dst=Mouser
T 45900 58800 5 10 0 0 180 0 1
dstpn=750-CDBU0530
T 45900 58800 5 10 0 0 180 0 1
link=www.mouser.com/ds/2/80/CDBU0530-RevA791919-16389.pdf
T 45900 58800 5 10 0 0 180 0 1
link_page=1
T 45900 58800 5 10 0 0 180 0 1
supplier=c
T 45900 58800 5 10 0 0 180 0 1
kitting=tape-no-leader
T 46250 58550 5 10 1 1 180 6 1
refdes=D1
T 45900 58800 5 10 1 1 180 6 1
value=0.4V
}
C 45900 58400 1 90 0 Vext.sym
{
T 45600 58400 5 10 0 1 90 0 1
device=Vext
}
B 45200 56000 700 400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 45800 57500 1 90 1 jumper-1.sym
{
T 45300 57200 5 8 0 0 270 2 1
device=JUMPER
T 45800 57500 5 10 0 0 180 6 1
footprint=0201
T 45800 57500 5 10 0 0 180 6 1
description=-
T 45800 57500 5 10 0 0 180 6 1
value=-
T 45800 57500 5 10 0 0 0 6 1
nobom=true
T 45800 57500 5 10 0 0 0 6 1
noplace=true
T 45400 57500 5 10 1 1 270 2 1
refdes=J1
}
C 45600 57400 1 0 0 generic-power.sym
{
T 45800 57650 5 10 1 1 0 3 1
net=Vmid:1
}
C 44600 57400 1 0 0 Vext.sym
{
T 44600 57700 5 10 0 1 0 0 1
device=Vext
}
C 55300 60400 1 90 0 Vext.sym
{
T 55000 60400 5 10 0 1 90 0 1
device=Vext
}
C 52500 61900 1 90 0 Vext.sym
{
T 52200 61900 5 10 0 1 90 0 1
device=Vext
}
C 52000 63000 1 0 0 generic-power.sym
{
T 52200 63250 5 10 1 1 0 3 1
net=Vsys:1
}
C 54900 61500 1 0 0 generic-power.sym
{
T 55100 61750 5 10 1 1 0 3 1
net=Vsys:1
}
N 55100 61500 55300 61500 4
N 52200 63000 52500 63000 4
C 52500 62500 1 90 0 vee-1.sym
C 55300 61000 1 90 0 vee-1.sym
C 55000 60200 1 270 1 gnd-1.sym
C 52200 60800 1 270 1 gnd-1.sym
C 48300 54600 1 90 1 jumper-1.sym
{
T 47800 54300 5 8 0 0 270 2 1
device=JUMPER
T 48300 54600 5 10 0 0 180 6 1
footprint=0201
T 48300 54600 5 10 0 0 180 6 1
description=-
T 48300 54600 5 10 0 0 180 6 1
value=-
T 48300 54600 5 10 0 0 0 6 1
nobom=true
T 48300 54600 5 10 0 0 0 6 1
noplace=true
T 47900 54600 5 10 1 1 270 2 1
refdes=J1
}
C 47000 54400 1 270 1 gnd-1.sym
C 48300 54700 1 270 0 vee-1.sym
T 49500 54500 9 10 1 0 0 0 4
Jumpers for pGND/sGND binding should
be bridged if necessary and appropriate,
which should be the case only if no other
common point is used for signal grounding.
C 46800 56800 1 90 0 vee-1.sym
C 46800 58000 1 90 0 vee-1.sym
C 46800 55600 1 90 0 vee-1.sym
C 46800 55200 1 90 0 vee-1.sym
N 46700 57800 46800 57800 4
T 42200 57800 9 10 1 0 0 0 2
No other power sources may be connected
to Vext if connected to Vmid.
C 51900 61600 1 0 0 in-1.sym
{
T 51900 61900 5 10 0 0 0 0 1
device=INPUT
T 52000 61700 5 10 1 1 0 0 1
refdes=SigM
}
C 51900 61300 1 0 0 in-1.sym
{
T 51900 61600 5 10 0 0 0 0 1
device=INPUT
T 52000 61400 5 10 1 1 0 0 1
refdes=SigP
}
C 51900 60200 1 0 0 in-1.sym
{
T 51900 60500 5 10 0 0 0 0 1
device=INPUT
T 52000 60300 5 10 1 1 0 0 1
refdes=PWMa
}
C 51900 59900 1 0 0 in-1.sym
{
T 51900 60200 5 10 0 0 0 0 1
device=INPUT
T 52000 60000 5 10 1 1 0 0 1
refdes=PWMd
}
C 45500 61300 1 0 1 connector2-2.sym
{
T 45200 62550 5 10 0 0 0 6 1
device=CONNECTOR_2
T 45200 62750 5 10 0 0 0 6 1
footprint=XT60
T 44800 62300 5 10 1 1 0 0 1
refdes=Vsys4
T 45500 61300 5 10 0 0 0 6 1
description=$0.80 HobbyKing XT60
T 45500 61300 5 10 0 0 0 6 1
value=60A
}
L 47300 61100 47300 60000 3 0 0 0 -1 -1
L 47300 61100 47100 60900 3 0 0 0 -1 -1
L 47300 60900 47100 60700 3 0 0 0 -1 -1
T 47300 60000 9 10 1 0 90 0 1
INPUT
L 49100 61000 48000 61000 3 0 0 0 -1 -1
L 49100 61000 48900 61200 3 0 0 0 -1 -1
T 48000 61000 9 10 1 0 0 0 1
Light Loads
L 44800 61000 46800 61000 3 0 0 0 -1 -1
L 44800 61000 45000 61200 3 0 0 0 -1 -1
T 46500 61000 9 10 1 0 0 6 1
Heavy Loads
C 41800 57000 1 0 0 generic-power.sym
{
T 42000 57250 5 10 1 1 0 3 1
net=Vsys:1
}
C 45000 60400 1 0 0 resistor-1.sym
{
T 45300 60800 5 10 0 0 0 0 1
device=RESISTOR
T 45000 60400 5 10 0 0 0 0 1
description=$0.89 MOUSER 71-CP0010100R0KE14
T 45000 60400 5 10 0 0 0 0 1
footprint=SIP2
T 45200 60500 5 10 1 1 0 0 1
refdes=R1
T 45400 60400 5 10 1 1 0 0 1
value=100
}
C 45000 60300 1 90 0 generic-power.sym
{
T 44750 60500 5 10 1 1 90 3 1
net=Vsys:1
}
C 45900 60700 1 270 0 vee-1.sym
T 44800 63200 9 10 1 0 0 0 8
Regenerative UPS or float battery may be
applied to Vsys3. Use caution employing
Lithium batteries under float voltage . At
minimum, voltage must be maintained within
(2.7V<Vcell<4.2) including hysteresis.
Recommend (3V<Vcell<4V).

Protection circuitry is necessary.
C 42200 55800 1 180 1 io-1.sym
{
T 42400 55200 5 10 0 0 180 6 1
device=none
T 43100 55600 5 10 1 0 180 6 1
net=SigAlt:1
T 43100 55700 5 10 1 1 180 7 1
value=IO
}
N 42100 56000 42100 55700 4
N 42100 55700 42200 55700 4
C 51500 63100 1 180 0 io-1.sym
{
T 51300 62500 5 10 0 0 180 0 1
device=none
T 50600 62900 5 10 1 0 180 0 1
net=SigAlt:1
T 50600 63000 5 10 1 1 180 1 1
value=IO
}
N 52500 62100 52500 62400 4
N 52500 62400 51500 62400 4
N 51500 62400 51500 63000 4
T 54600 62500 9 10 1 0 0 0 2
Connect to breadboard power rails.
Ideally should be a breakable extension.
