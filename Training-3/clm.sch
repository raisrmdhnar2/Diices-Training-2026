v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 320 -250 320 -220 {lab=0}
N 190 -250 280 -250 {lab=#net1}
N 60 -340 60 -250 {lab=#net2}
N 60 -340 320 -340 {lab=#net2}
N 580 -250 580 -220 {lab=0}
N 450 -250 540 -250 {lab=#net3}
N 320 -340 580 -340 {lab=#net2}
N 820 -250 820 -220 {lab=0}
N 690 -250 780 -250 {lab=#net4}
N 580 -340 820 -340 {lab=#net2}
C {ammeter.sym} 320 -310 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {code_shown.sym} -640 -600 0 0 {name=s1 only_toplevel=false value="

.param L1 = 0.15
.param L2 = 0.3
.param L3 = 0.45
.param w1 = 3
.param w2 = 3
.param w3 = 3

.save
.control

dc vds1 0 1.8 0.0001

plot i(vmeas1) i(vmeas2) i(vmeas3)

.endc


"}
C {vsource.sym} 190 -220 0 0 {name=VGS1 value=0.9 savecurrent=false}
C {gnd.sym} 320 -220 0 0 {name=l1 lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 300 -250 0 0 {name=M1
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
C {gnd.sym} 190 -190 0 0 {name=l2 lab=0}
C {vsource.sym} 60 -220 0 0 {name=VDS1 value=0.9 savecurrent=false}
C {gnd.sym} 60 -190 0 0 {name=l3 lab=0}
C {sky130_fd_pr/corner.sym} -260 -320 0 0 {name=CORNER only_toplevel=false corner=tt}
C {ammeter.sym} 580 -310 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {vsource.sym} 450 -220 0 0 {name=VGS2 value=0.9 savecurrent=false}
C {gnd.sym} 580 -220 0 0 {name=l4 lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 560 -250 0 0 {name=M2
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
C {gnd.sym} 450 -190 0 0 {name=l5 lab=0}
C {ammeter.sym} 820 -310 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {vsource.sym} 690 -220 0 0 {name=VGS3 value=0.9 savecurrent=false}
C {gnd.sym} 820 -220 0 0 {name=l6 lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 800 -250 0 0 {name=M3
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
C {gnd.sym} 690 -190 0 0 {name=l7 lab=0}
