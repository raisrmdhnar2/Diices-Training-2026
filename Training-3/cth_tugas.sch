v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 290 -230 290 -200 {lab=#net1}
N 330 -200 460 -200 {lab=#net2}
N 290 -320 290 -230 {lab=#net1}
N 290 -320 500 -320 {lab=#net1}
N 500 -320 500 -230 {lab=#net1}
N 400 -360 400 -320 {lab=#net1}
N 290 -170 290 -140 {lab=#net2}
N 500 -170 500 -140 {lab=#net3}
N 400 -360 580 -360 {lab=#net1}
N 500 -80 500 -20 {lab=0}
N 500 -230 500 -200 {lab=#net1}
N 330 -200 330 -170 {lab=#net2}
N 290 -170 330 -170 {lab=#net2}
C {sky130_fd_pr/pfet_01v8.sym} 310 -200 0 1 {name=M1
W=2.5
L=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 480 -200 0 0 {name=M2
W=2.5
L=1.5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/corner.sym} 890 -460 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} 580 -330 0 0 {name=V1 value=1.8 savecurrent=false}
C {code_shown.sym} 800 -260 0 0 {name=s1 only_toplevel=false value="

.control
 save all
 tran 1n 10n
 plot i(vreff) i(vout)

.endc

"}
C {gnd.sym} 580 -300 0 0 {name=l1 lab=0}
C {ammeter.sym} 290 -110 0 0 {name=Vreff savecurrent=true spice_ignore=0}
C {ammeter.sym} 500 -110 0 0 {name=Vout savecurrent=true spice_ignore=0}
C {isource.sym} 290 -50 0 0 {name=I0 value=1u}
C {gnd.sym} 290 -20 0 0 {name=l2 lab=0}
C {gnd.sym} 500 -20 0 0 {name=l3 lab=0}
