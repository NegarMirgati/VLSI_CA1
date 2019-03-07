** VLSI - CA1
** part 3

************ Library *************
.prot
.inc '45nm_PTM.txt'
.unprot

********* Params*******
.param  Lmin = 100n
+Vdd=  1V

.OPTION POST
.GLOBAL gnd! vdd!
.temp  25

Vgs g gnd! 0.8
Vds d gnd! 1
Vb  body gnd! 0
Vs  source gnd! 0

Mn1   d  g source   body   nmos    w='1u'   L=Lmin

Vvdd vdd! 0 1v
Vgnd gnd! 0 0v

********* Type of Analysis ************
.dc  Vb START = -10 STOP = 0 STEP = 0.1
.PROBE DC i(Mn1)

.op
.END