v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -440 360 -440 {lab=#net1}
N 180 -410 180 -380 {lab=0}
N 400 -410 400 -380 {lab=0}
N 180 -470 240 -470 {lab=#net1}
N 240 -470 240 -440 {lab=#net1}
N 180 -520 180 -470 {lab=#net1}
N 400 -520 400 -470 {lab=#net2}
N 940 -440 1080 -440 {lab=#net3}
N 900 -410 900 -380 {lab=0}
N 1120 -410 1120 -380 {lab=0}
N 960 -470 960 -440 {lab=#net3}
N 900 -520 900 -470 {lab=#net3}
N 1120 -520 1120 -470 {lab=#net4}
N 900 -500 960 -500 {lab=#net3}
N 960 -500 960 -470 {lab=#net3}
N 900 -440 900 -410 {lab=0}
N 1120 -440 1120 -410 {lab=0}
N 1360 -410 1360 -380 {lab=0}
N 1360 -520 1360 -470 {lab=#net4}
N 1360 -440 1360 -410 {lab=0}
N 1560 -410 1560 -380 {lab=0}
N 1560 -520 1560 -470 {lab=#net4}
N 1560 -440 1560 -410 {lab=0}
N 960 -500 1520 -500 {lab=#net3}
N 1520 -500 1520 -440 {lab=#net3}
N 1320 -500 1320 -440 {lab=#net3}
N 180 -440 180 -410 {lab=0}
N 400 -440 400 -410 {lab=0}
N 900 -580 900 -520 {lab=#net3}
N 1120 -540 1120 -520 {lab=#net4}
N 1120 -540 1560 -540 {lab=#net4}
N 1560 -540 1560 -520 {lab=#net4}
N 1360 -540 1360 -520 {lab=#net4}
N 1360 -580 1360 -540 {lab=#net4}
N 0 -760 180 -760 {lab=#net5}
N 180 -720 180 -640 {lab=#net5}
N 400 -720 400 -580 {lab=#net5}
N 180 -760 400 -760 {lab=#net5}
N 900 -760 900 -700 {lab=#net5}
N 1360 -760 1360 -640 {lab=#net5}
N 720 -760 900 -760 {lab=#net5}
N 900 -760 1360 -760 {lab=#net5}
N 180 -760 180 -720 {lab=#net5}
N 400 -760 400 -720 {lab=#net5}
N 400 -760 720 -760 {lab=#net5}
C {sky130_fd_pr/nfet_01v8.sym} 200 -440 0 1 {name=M1
W=\{w1\}
L=\{L1\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -440 0 0 {name=M2
W=\{w2\}
L=\{L2\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 920 -440 0 1 {name=M3
W=\{w1\}
L=\{L1\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1100 -440 0 0 {name=M4
W=\{w3\}
L=\{L3\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1340 -440 0 0 {name=M5
W=\{w4\}
L=\{L4\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1540 -440 0 0 {name=M6
W=\{w5\}
L=\{L5\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 180 -380 0 0 {name=l2 lab=0}
C {gnd.sym} 400 -380 0 0 {name=l1 lab=0}
C {gnd.sym} 900 -380 0 0 {name=l3 lab=0}
C {gnd.sym} 1120 -380 0 0 {name=l4 lab=0}
C {gnd.sym} 1360 -380 0 0 {name=l5 lab=0}
C {gnd.sym} 1560 -380 0 0 {name=l6 lab=0}
C {ammeter.sym} 180 -550 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 -550 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 900 -610 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1360 -610 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {vsource.sym} 0 -730 0 0 {name=VDD1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -700 0 0 {name=l7 lab=0}
C {isource.sym} 180 -610 0 0 {name=I0 value=1u}
C {isource.sym} 900 -670 0 0 {name=I1 value=1u}
C {code_shown.sym} -870 -800 0 0 {name=s1 only_toplevel=false value="

.param L1 = 0.3
.param L2 = 0.3
.param L3 = 0.3
.param L4 = 0.3
.param L5 = 0.3

.param w1 = 3
.param w2 = 3
.param w3 = 3
.param w4 = 3
.param w5 = 3


.save
.control

*dc vdd1 0 1.8 0.01
*plot i(vmeas1) i(vmeas2) i(vmeas4)

tran 1n 100n
plot i(vmeas1) i(vmeas2) i(vmeas4)

op
let error1 = i(vmeas2)-i(vmeas1)
let error2 = i(vmeas4)-(i(vmeas1)*3)
print i(vmeas1) i(vmeas2) i(vmeas4)
print error1 error2

.endc


"}
C {sky130_fd_pr/corner.sym} -280 -360 0 0 {name=CORNER only_toplevel=false corner=tt}
