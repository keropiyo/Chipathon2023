v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 0 20 0 {
lab=#net2}
N 20 0 20 30 {
lab=#net2}
N 20 30 20 40 {
lab=#net2}
N 0 40 20 40 {
lab=#net2}
N -60 -0 -40 0 {
lab=#net1}
N -60 -50 -60 -0 {
lab=#net1}
N -60 -50 0 -50 {
lab=#net1}
N -0 -250 -0 -140 {}
N 0 -80 0 -30 {}
N -150 -80 -150 -30 {}
N -210 -0 -190 -0 {}
N -210 -50 -210 0 {}
N -210 -50 -150 -50 {}
N -150 -0 -120 0 {}
N -120 0 -120 40 {}
N -150 40 -120 40 {}
N -150 30 -150 80 {}
N -0 30 0 80 {}
N -300 80 0 80 {}
N -300 40 -300 80 {}
N -150 -170 -150 -140 {}
N -150 -250 -150 -230 {}
N -150 -340 -150 -310 {}
N -0 -340 -0 -310 {}
N -300 -340 -0 -340 {}
N -300 -340 -300 -20 {}
C {devices/vsource.sym} -300 10 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/ammeter.sym} -150 -200 0 0 {name=Vc savecurrent=true}
C {devices/gnd.sym} -300 80 0 0 {name=l1 lab=GND}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/npn_10p00x10p00.sym} -170 0 0 0 {name=Q1
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {devices/code_shown.sym} 30 100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 110 -140 0 0 {name=control only_toplevel=true
value="
.control
save all
dc Vdd 0 3.3 0.001
plot i(Vc)
dc temp -50 125 25
plot i(Vc)
.endc
"}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/npn_10p00x10p00.sym} -20 0 0 0 {name=Q2
model=npn_10p00x10p00
spiceprefix=X
m=1}
C {devices/res.sym} -150 -110 0 0 {name=Ra
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 0 -110 0 0 {name=Rb
value=160
footprint=1206
device=resistor
m=1}
C {devices/cccs.sym} 0 -280 0 0 {name=F1 vnam=v1 value=1}
C {devices/isource.sym} -150 -280 0 0 {name=I0 value=1m}
