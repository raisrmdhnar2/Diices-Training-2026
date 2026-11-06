v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {sky130_fd_pr/corner.sym} 220 -580 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 170 -300 0 0 {name=s1 only_toplevel=false value="

.include shift_register_4bit.spice


.control
  save all
  tran 0.05n 25n

  plot v(clk)+17.5 v(rst)+15.0 v(en)+12.5 v(d_in)+10.0 v(D)+7.5 v(C)+5.0 v(B)+2.5 v(A)
  *; Stack sinyal kontrol & input (diberi jarak bertingkat 2.5V tiap track)
  *plot v(clk)+7.5 v(rst)+5.0 v(en)+2.5 v(d_in)

  *; Stack sinyal output shift register (A, B, C, D)
  *plot v(D)+7.5 v(C)+5.0 v(B)+2.5 v(A)
.endc



"}
C {lab_pin.sym} 1260 -550 0 0 {name=p1 sig_type=std_logic lab=clk}
C {vsource.sym} 1260 -520 0 0 {name=V1 value="Pulse (0 1.8 1p 1p 1p 0.5n 1n)" savecurrent=false}
C {gnd.sym} 1260 -490 0 0 {name=l1 lab=0}
C {lab_pin.sym} 1270 -390 0 0 {name=p2 sig_type=std_logic lab=rst}
C {vsource.sym} 1270 -360 0 0 {name=V2 value="Pulse (0 1.8 1p 1p 1p 0.5n 10n)" savecurrent=false
lab=rst}
C {lab_pin.sym} 1020 -390 0 0 {name=p3 sig_type=std_logic lab=d_in}
C {vsource.sym} 1020 -360 0 0 {name=V3 value="Pulse (0 1.8 1p 1p 1p 1n 20n)" savecurrent=false
lab=d_in}
C {lab_pin.sym} 1120 -280 0 0 {name=p4 sig_type=std_logic lab=en}
C {vsource.sym} 1120 -250 0 0 {name=V4 value=1.8 savecurrent=false
lab=en}
C {lab_pin.sym} 960 -550 0 0 {name=p5 sig_type=std_logic lab=VPWR}
C {vsource.sym} 960 -520 0 0 {name=V5 value=1.8 savecurrent=false
lab=VPWR}
C {gnd.sym} 960 -490 0 0 {name=l5 lab=0}
C {lab_pin.sym} 1100 -550 0 0 {name=p6 sig_type=std_logic lab=VGND}
C {vsource.sym} 1100 -520 0 0 {name=V6 value=0 savecurrent=false
lab=VGND}
C {gnd.sym} 1100 -490 0 0 {name=l6 lab=0}
C {gnd.sym} 1270 -330 0 0 {name=l2 lab=0}
C {gnd.sym} 1020 -330 0 0 {name=l3 lab=0}
C {gnd.sym} 1120 -220 0 0 {name=l4 lab=0}
