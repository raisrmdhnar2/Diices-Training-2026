v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -180 270 -150 {lab=0}
N 130 -180 230 -180 {lab=G}
N 270 -320 270 -270 {lab=D}
N 270 -320 400 -320 {lab=D}
C {sky130_fd_pr/nfet_01v8.sym} 250 -180 0 0 {name=M1
W=1
L=0.15
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
C {sky130_fd_pr/corner.sym} 490 -470 0 0 {name=CORNER only_toplevel=false corner=tt}
C {ammeter.sym} 270 -240 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource.sym} 130 -150 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} 400 -290 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} 130 -120 0 0 {name=l1 lab=0}
C {gnd.sym} 400 -260 0 0 {name=l2 lab=0}
C {gnd.sym} 270 -150 0 0 {name=l3 lab=0}
C {lab_pin.sym} 180 -180 1 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 270 -320 1 0 {name=p2 sig_type=std_logic lab=D}
C {code_shown.sym} 690 -310 0 0 {name=s1 only_toplevel=false value="

.control
save all
dc v2 0 1.8 0.01
plot i(vmeas)

.endc



"}
