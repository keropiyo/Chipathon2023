v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 310 400 310 {
lab=GND}
N 400 310 400 350 {
lab=GND}
N 370 350 400 350 {
lab=GND}
N 370 340 370 350 {
lab=GND}
N 370 340 370 360 {
lab=GND}
N 370 360 530 360 {
lab=GND}
N 530 340 530 360 {
lab=GND}
N 530 340 530 350 {
lab=GND}
N 530 350 560 350 {
lab=GND}
N 560 310 560 350 {
lab=GND}
N 530 310 560 310 {
lab=GND}
N 490 270 490 310 {
lab=#net1}
N 490 270 530 270 {
lab=#net1}
N 530 270 530 280 {
lab=#net1}
N 530 240 530 280 {
lab=#net1}
N 370 270 370 280 {
lab=#net2}
N 330 270 370 270 {
lab=#net2}
N 330 270 330 310 {
lab=#net2}
N 240 330 240 360 {
lab=GND}
N 240 360 370 360 {
lab=GND}
N 370 160 370 190 {
lab=va}
N 370 250 370 270 {
lab=#net2}
N 370 270 370 280 {
lab=#net2}
N 370 180 380 180 {
lab=va}
N 530 180 540 180 {
lab=vb}
N 530 160 530 190 {
lab=vb}
N 370 80 370 100 {
lab=#net3}
N 530 80 530 100 {
lab=#net4}
N 530 80 560 80 {
lab=#net4}
N 560 50 560 80 {
lab=#net4}
N 530 50 560 50 {
lab=#net4}
N 340 80 370 80 {
lab=#net3}
N 340 50 340 80 {
lab=#net3}
N 340 50 370 50 {
lab=#net3}
N 410 50 490 50 {
lab=#net5}
N 370 -50 370 20 {
lab=#net5}
N 530 -50 530 20 {
lab=#net6}
N 430 -0 430 50 {
lab=#net5}
N 370 -0 430 -0 {
lab=#net5}
N 410 -80 490 -80 {
lab=#net6}
N 480 -40 530 -40 {
lab=#net6}
N 480 -80 480 -40 {
lab=#net6}
N 340 -80 370 -80 {
lab=#net7}
N 340 -140 340 -80 {
lab=#net7}
N 340 -140 370 -140 {
lab=#net7}
N 530 -80 570 -80 {
lab=#net7}
N 570 -140 570 -80 {
lab=#net7}
N 530 -140 570 -140 {
lab=#net7}
N 530 -150 530 -110 {
lab=#net7}
N 530 -160 530 -150 {
lab=#net7}
N 370 -160 370 -110 {
lab=#net7}
N 780 -80 820 -80 {
lab=#net7}
N 820 -140 820 -80 {
lab=#net7}
N 780 -140 820 -140 {
lab=#net7}
N 780 -50 780 190 {
lab=vout}
N 780 250 780 280 {
lab=#net8}
N 720 260 780 260 {
lab=#net8}
N 720 260 720 310 {
lab=#net8}
N 720 310 740 310 {
lab=#net8}
N 780 340 780 360 {
lab=GND}
N 530 360 780 360 {
lab=GND}
N 780 310 820 310 {
lab=GND}
N 820 310 820 350 {
lab=GND}
N 780 350 820 350 {
lab=GND}
N 780 120 790 120 {
lab=vout}
N 780 -160 780 -110 {
lab=#net7}
N 680 -80 740 -80 {
lab=#net6}
N 680 -80 680 -20 {
lab=#net6}
N 530 -20 680 -20 {
lab=#net6}
N 240 -160 780 -160 {
lab=#net7}
N 240 -160 240 270 {
lab=#net7}
C {devices/vsource.sym} 240 300 0 0 {name=Vdd value=3.3}
C {pdk/gf180mcuC/libs.tech/xschem/symbols/npn_10p00x10p00.sym} 350 310 0 0 {name=Q1
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {pdk/gf180mcuC/libs.tech/xschem/symbols/npn_10p00x10p00.sym} 510 310 0 0 {name=Q2
model=npn_10p00x10p00
spiceprefix=X
m=16}
C {devices/gnd.sym} 240 360 0 0 {name=l1 lab=GND}
C {devices/res.sym} 530 220 0 0 {name=Rb
value=160
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 380 180 0 1 {name=p1 sig_type=std_logic lab=va}
C {devices/lab_pin.sym} 540 180 2 0 {name=p2 sig_type=std_logic lab=vb}
C {devices/res.sym} 370 220 0 0 {name=Ra
value=10
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} 370 130 0 0 {name=Va}
C {devices/ammeter.sym} 530 130 0 0 {name=Vb}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_03v3.sym} 510 50 0 0 {name=M5
L='Lmos'
W='Wmos'
nf=1
m='mossize'
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_03v3.sym} 390 50 0 1 {name=M7
L='Lmos'
W='Wmos'
nf=1
m='mossize'
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_03v3.sym} 510 -80 0 0 {name=M6
L='Lmos'
W='Wmos'
nf=1
m='mossize'
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_03v3.sym} 390 -80 0 1 {name=M8
L='Lmos'
W='Wmos'
nf=1
m='mossize'
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_03v3.sym} 760 -80 0 0 {name=M1
L='Lmos'
W='Wmos'
nf=1
m='mossize'
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {pdk/gf180mcuC/libs.tech/xschem/symbols/npn_10p00x10p00.sym} 760 310 0 0 {name=Q3
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {devices/res.sym} 780 220 0 0 {name=Rtcomp
value=705
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 790 120 2 0 {name=p3 sig_type=std_logic lab=vout
}
C {devices/code_shown.sym} 190 440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 130 0 0 {name=control only_toplevel=true
value="
.control
save all
dc Vdd 0 3.3 0.01
plot vout
dc temp -50 125 25
plot vout
.endc
"}
C {devices/code_shown.sym} -10 -80 0 0 {name=param only_toplevel=true
value="
.param mossize=30
.param Lmos=1.12u
.param Wmos='Lmos*10'
"}
