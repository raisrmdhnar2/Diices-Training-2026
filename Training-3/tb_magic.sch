v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 830 -140 830 -80 {lab=0}
C {sky130_fd_pr/corner.sym} 1040 -430 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 950 -230 0 0 {name=s1 only_toplevel=false value="

.include ../cth_tugas.spice

.control
 save all
 tran 1n 10n
 plot i(vreff) i(vout)

.endc

"}
C {vsource.sym} 860 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 860 -270 0 0 {name=l1 lab=0}
C {lab_pin.sym} 860 -330 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 690 -200 1 0 {name=p2 sig_type=std_logic lab=Dreff}
C {lab_pin.sym} 830 -200 1 0 {name=p3 sig_type=std_logic lab=Dout}
C {ammeter.sym} 690 -170 0 0 {name=Vreff savecurrent=true spice_ignore=0}
C {isource.sym} 690 -110 0 0 {name=I0 value=1u}
C {gnd.sym} 690 -80 0 0 {name=l2 lab=0}
C {ammeter.sym} 830 -170 0 0 {name=Vout savecurrent=true spice_ignore=0}
C {gnd.sym} 830 -80 0 0 {name=l3 lab=0}
