v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 400 -360 540 -360 {lab=#net1}
N 360 -330 360 -300 {lab=0}
N 580 -330 580 -300 {lab=0}
N 360 -390 420 -390 {lab=#net1}
N 420 -390 420 -360 {lab=#net1}
N 360 -440 360 -390 {lab=#net1}
N 580 -440 580 -390 {lab=#net2}
N 360 -360 360 -330 {lab=0}
N 580 -360 580 -330 {lab=0}
N 180 -680 360 -680 {lab=#net3}
N 360 -640 360 -560 {lab=#net3}
N 580 -640 580 -500 {lab=#net3}
N 360 -680 580 -680 {lab=#net3}
N 360 -680 360 -640 {lab=#net3}
N 580 -680 580 -640 {lab=#net3}
N 1070 -270 1210 -270 {lab=#net4}
N 1030 -240 1030 -210 {lab=0}
N 1250 -240 1250 -210 {lab=0}
N 1030 -300 1090 -300 {lab=#net4}
N 1090 -300 1090 -270 {lab=#net4}
N 1030 -270 1030 -240 {lab=0}
N 1250 -270 1250 -240 {lab=0}
N 850 -680 1030 -680 {lab=#net5}
N 1030 -640 1030 -560 {lab=#net5}
N 1250 -640 1250 -500 {lab=#net5}
N 1030 -680 1250 -680 {lab=#net5}
N 1030 -680 1030 -640 {lab=#net5}
N 1250 -680 1250 -640 {lab=#net5}
N 1070 -360 1210 -360 {lab=#net6}
N 1030 -330 1030 -300 {lab=#net4}
N 1250 -330 1250 -300 {lab=#net7}
N 1030 -390 1090 -390 {lab=#net6}
N 1090 -390 1090 -360 {lab=#net6}
N 1030 -440 1030 -390 {lab=#net6}
N 1250 -440 1250 -390 {lab=#net8}
N 1030 -360 1030 -330 {lab=#net4}
N 1250 -360 1250 -330 {lab=#net7}
C {sky130_fd_pr/nfet_01v8.sym} 380 -360 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 560 -360 0 0 {name=M2
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
C {gnd.sym} 360 -300 0 0 {name=l2 lab=0}
C {gnd.sym} 580 -300 0 0 {name=l1 lab=0}
C {ammeter.sym} 360 -470 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 580 -470 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {vsource.sym} 180 -650 0 0 {name=VDD1 value=1.8 savecurrent=false}
C {gnd.sym} 180 -620 0 0 {name=l7 lab=0}
C {isource.sym} 360 -530 0 0 {name=I0 value=1u}
C {sky130_fd_pr/nfet_01v8.sym} 1050 -270 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 1230 -270 0 0 {name=M4
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
C {gnd.sym} 1030 -210 0 0 {name=l3 lab=0}
C {gnd.sym} 1250 -210 0 0 {name=l4 lab=0}
C {ammeter.sym} 1030 -470 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1250 -470 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {vsource.sym} 850 -650 0 0 {name=VDD2 value=1.8 savecurrent=false}
C {gnd.sym} 850 -620 0 0 {name=l5 lab=0}
C {isource.sym} 1030 -530 0 0 {name=I1 value=1u}
C {sky130_fd_pr/nfet_01v8.sym} 1050 -360 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 1230 -360 0 0 {name=M6
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
C {code_shown.sym} -950 -690 0 0 {name=s1 only_toplevel=false value="

.param L1 = 0.3
.param L2 = 0.3

.param w1 = 3
.param w2 = 3

.save
.control

*dc vdd1 0 1.8 0.01
*plot i(vmeas1) i(vmeas2) i(vmeas4)

tran 1n 100n
plot i(vmeas1) i(vmeas2) i(vmeas4)

op
let error1 = i(vmeas2)- i(vmeas1)
let error2 = i(vmeas4)- i(vmeas1)
print i(vmeas1) i(vmeas2) i(vmeas4)
print error1 error2

.endc


"}
C {sky130_fd_pr/corner.sym} -340 -870 0 0 {name=CORNER only_toplevel=false corner=tt}
