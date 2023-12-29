v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -140 -120 -30 {
lab=#net1}
N -120 -140 -0 -140 {
lab=#net1}
N -0 -140 0 -120 {
lab=#net1}
N 0 -60 0 -30 {
lab=#net2}
N 0 0 20 0 {
lab=GND}
N 20 0 20 30 {
lab=GND}
N 20 30 20 40 {
lab=GND}
N 0 40 20 40 {
lab=GND}
N -0 30 0 70 {
lab=GND}
N -120 70 0 70 {
lab=GND}
N -120 30 -120 80 {
lab=GND}
N -60 -0 -40 0 {
lab=#net2}
N -60 -50 -60 -0 {
lab=#net2}
N -60 -50 0 -50 {
lab=#net2}
C {devices/vsource.sym} -120 0 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/ammeter.sym} 0 -90 0 0 {name=Vc savecurrent=true}
C {devices/gnd.sym} -120 80 0 0 {name=l1 lab=GND}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/npn_10p00x10p00.sym} -20 0 0 0 {name=Q1
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
