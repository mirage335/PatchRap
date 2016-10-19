v 20130925 2
C 62200 59000 1 0 0 cncio-sys.sym
{
T 62600 63700 5 10 1 1 0 0 1
device=cncio
T 63200 63600 5 10 1 1 0 0 1
refdes=X2
}
C 61800 63300 1 0 0 generic-power.sym
{
T 62000 63550 5 10 1 1 0 3 1
net=Vsys:1
}
C 61300 63100 1 0 0 vee-1.sym
N 62300 63100 61500 63100 4
C 62100 62900 1 90 1 Vext.sym
{
T 61800 62900 5 10 0 1 270 2 1
device=Vext
}
C 62000 62400 1 270 1 gnd-1.sym
N 62100 62700 62300 62700 4
C 62300 61800 1 180 0 io-1.sym
{
T 62100 61200 5 10 0 0 180 0 1
device=none
T 61400 61600 5 10 1 0 180 0 1
net=SigP:1
T 61400 61700 5 10 1 1 180 1 1
value=IO
}
C 62300 61500 1 180 0 io-1.sym
{
T 62100 60900 5 10 0 0 180 0 1
device=none
T 61400 61300 5 10 1 0 180 0 1
net=SigM:1
T 61400 61400 5 10 1 1 180 1 1
value=IO
}
C 62300 61200 1 180 0 io-1.sym
{
T 62100 60600 5 10 0 0 180 0 1
device=none
T 61400 61000 5 10 1 0 180 0 1
net=PWMa:1
T 61400 61100 5 10 1 1 180 1 1
value=IO
}
C 62300 60900 1 180 0 io-1.sym
{
T 62100 60300 5 10 0 0 180 0 1
device=none
T 61400 60700 5 10 1 0 180 0 1
net=PWMd:1
T 61400 60800 5 10 1 1 180 1 1
value=IO
}
C 62000 54100 1 0 0 analog-sys.sym
{
T 62300 58300 5 10 1 1 0 0 1
device=ANALOG
T 63100 58100 5 10 1 1 0 0 1
refdes=X2
}
C 62000 56900 1 180 0 io-1.sym
{
T 61800 56300 5 10 0 0 180 0 1
device=none
T 61100 56700 5 10 1 0 180 0 1
net=SigM:1
T 61100 56800 5 10 1 1 180 1 1
value=IO
}
C 62000 57200 1 180 0 io-1.sym
{
T 61800 56600 5 10 0 0 180 0 1
device=none
T 61100 57000 5 10 1 0 180 0 1
net=SigP:1
T 61100 57100 5 10 1 1 180 1 1
value=IO
}
C 62000 58000 1 180 0 io-1.sym
{
T 61800 57400 5 10 0 0 180 0 1
device=none
T 61100 57800 5 10 1 0 180 0 1
net=SigAlt:1
T 61100 57900 5 10 1 1 180 1 1
value=IO
}
C 57500 57500 1 0 0 injector-sys.sym
{
T 57800 61200 5 10 1 1 0 0 1
device=INJECTOR
T 58600 60900 5 10 1 1 0 0 1
refdes=X1
}
C 57500 59900 1 90 0 vee-1.sym
C 57000 60400 1 0 0 generic-power.sym
{
T 57200 60650 5 10 1 1 0 3 1
net=Vsys:1
}
N 57200 60400 57500 60400 4
C 57500 59800 1 90 1 Vext.sym
{
T 57200 59800 5 10 0 1 270 2 1
device=Vext
}
N 57500 59500 57500 59900 4
C 57000 60000 1 180 0 io-1.sym
{
T 56800 59400 5 10 0 0 180 0 1
device=none
T 56100 59800 5 10 1 0 180 0 1
net=SigAlt:1
T 56100 59900 5 10 1 1 180 1 1
value=IO
}
N 57000 59900 57500 59900 4
C 57200 59400 1 270 0 gnd-1.sym
C 57500 58700 1 180 0 io-1.sym
{
T 57300 58100 5 10 0 0 180 0 1
device=none
T 56600 58500 5 10 1 0 180 0 1
net=SigP:1
T 56600 58600 5 10 1 1 180 1 1
value=IO
}
C 57500 58900 1 180 0 io-1.sym
{
T 57300 58300 5 10 0 0 180 0 1
device=none
T 56600 58700 5 10 1 0 180 0 1
net=SigM:1
T 56600 58800 5 10 1 1 180 1 1
value=IO
}
C 57500 58300 1 180 0 io-1.sym
{
T 57300 57700 5 10 0 0 180 0 1
device=none
T 56600 58100 5 10 1 0 180 0 1
net=PWMa:1
T 56600 58200 5 10 1 1 180 1 1
value=IO
}
C 57500 58100 1 180 0 io-1.sym
{
T 57300 57500 5 10 0 0 180 0 1
device=none
T 56600 57900 5 10 1 0 180 0 1
net=PWMd:1
T 56600 58000 5 10 1 1 180 1 1
value=IO
}
N 62000 63300 62300 63300 4
