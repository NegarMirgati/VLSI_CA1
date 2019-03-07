** VLSI - CA1
** part 2

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

Vgs g gnd! 0
Vds d gnd! 0

Mn1   d  g gnd!   gnd!    nmos    w='1u'   L=Lmin

Vvdd vdd! 0 1v
Vgnd gnd! 0 0v

********* Type of Analysis ************
.dc  Vds START = 0 STOP = 1 STEP = 0.01 Vgs START = 0.4 STOP = 1 STEP = 0.2
.PROBE DC i(Mn1)

.op
.END