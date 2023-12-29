v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 0 -0 -0 {
lab=#net1}
N -60 0 -60 90 {
lab=#net1}
N -60 70 -40 70 {
lab=#net1}
N 20 70 400 70 {
lab=out}
N 400 -40 400 70 {
lab=out}
N 380 -40 420 -40 {
lab=out}
N 420 -40 420 -20 {
lab=out}
N 420 40 420 150 {
lab=GND}
N -60 150 420 150 {
lab=GND}
N 380 0 380 150 {
lab=GND}
N 380 -220 380 -60 {
lab=#net2}
N -310 -220 380 -220 {
lab=#net2}
N -310 -220 -310 -70 {
lab=#net2}
N -310 150 -60 150 {
lab=GND}
N -310 -10 -310 150 {
lab=GND}
N -220 0 -220 150 {
lab=GND}
N -220 -140 -220 -60 {
lab=#net3}
N -220 -140 -10 -140 {
lab=#net3}
N -10 -140 -0 -140 {
lab=#net3}
N -0 -140 0 -60 {
lab=#net3}
N -120 -40 -0 -40 {
lab=in}
N -310 150 -310 170 {
lab=GND}
N -120 -40 -120 -10 {
lab=in}
N -120 50 -120 150 {
lab=GND}
C {devices/vsource.sym} -310 -40 0 0 {name=vdd value=3.3 savecurrent=false}
C {devices/isource.sym} -220 -30 0 0 {name=I0 value=20e-6}
C {devices/vsource.sym} -120 20 0 0 {name=Vinp value="DC 1.65 AC 1"}
C {devices/res.sym} -10 70 1 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -60 120 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 420 -40 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 420 10 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -310 170 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -120 -40 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/code_shown.sym} -730 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -730 -110 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
set units=degree
op
save all
ac dec 20 1e3 1e10
plot vdb(out)
plot vp(out)
wrdata opamp_g_ff.txt vdb(out)
wrdata opamp_p_ff.txt vp(out)
.endc"}
C {devices/code_shown.sym} -730 130 0 0 {name=measure only_toplevel=false value=".measure ac gain find vdb(out) at=1e3
.measure ac ugf when vdb(out)=0
.measure ac phase find vp(out) at=24.3e6"}
C {opamp_03v3.sym} 0 0 0 0 {name=X1}
