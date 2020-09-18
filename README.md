Copyright (C) 2015-2017 mirage335
See the end of the file for license conditions.
See license.txt for PatchRap license conditions.

'PatchPanel' initially designed for RepRap 3D printers to replace PCB terminal blocks with RJ45 jacks. Applicable to a wide variety of systems, including CNC machines, vehicles, factory automation, test equipment, and more.

Primary guidance for the standard should be taken from this README.

ANY CONFLICTING INFORMATION IN ANY OTHER DOCUMENTATION SHOULD BE DEFERRED TO THIS README UNLESS EXPLICITLY STATED OTHERWISE.

# Usage

GenericRap is the reference implementation, includes multiple connectors and headers to adapt RepRap motherboard terminals to internal step-down voltage converters, XT60 power connectors, shielded RJ45/8P8C connectors, and various peripherials (eg. steppers, limit switches, thermistors, hot-ends etc).

Breadboard friendly, the PCB layout includes appropriately spaced headers. In effect, a breadboard can be used as a backplane for power sharing and mechanical support, as well as to arrange even more wiring as needed.

Cat 6A S/FTP cabling recommended.

## Extract

Compacted design files are provided under '_out*' directories for inclusion into other projects. Please respect all relevant copyright licenses and distribute these files only with corresponding source (eg. the complete PatchRap repository).

To include these files in gEDA projects, a few routine modifications should be made.

Directory - create.

```
mkdir -p ./_out_PatchRap_symbols_reduced/footprints
```

File - project - must begin with...
```
elements-dir ./_out_PatchRap_symbols/footprints
elements-dir ./_out_PatchRap_breakouts/footprints

elements-dir ./_out_PatchRap_symbols_reduced/footprints
```

File - gafrc - must begin with...
```
(component-library "./_out_PatchRap_symbols")
(component-library "./_out_PatchRap_breakouts")
```

File - deleteme ...

```
echo '' > ./_out_PatchRap_symbols_reduced/footprints/deleteme
```


# Design
RJ45/8P8C connectors are among most convenient, cheapest connectors designed to provide high performance with commodity shielded twisted-pair cabling. High power transmission is documented, exceeding 2A/pin.

Besides 'patch panel' functions, surge suppressors and EMI filters are supported.

USA companies provide all parts in these schematics, excepting the RJ45 jacks and optional terminal blocks from TE Connectivity, a Swiss company.

Beware many RJ45 jacks are created from PCBs with thin traces unsuitable for high-current. Some RJ45 couplers may be more robust.

Pinouts are as follows, numbering by T568A standard.

## GenericIO	(Limit Switch, Depth Probe, Extruder, Stepper/Servo Driver, Servo Encoder, Radio)
	P3_W5 3 / 1/WG  - Vsys/Vcc
	P3_W6 3 \ 2/G   - pGND/sGnd
	P2_W4 2 - 3/WO  - Vext/Vmid/Avcc/SigAlt	(NC)								(LO)
	P1_W2 1 / 4/Bl  - Sig-/SigTx-		(sGND)				(Dir)		(I2C, UART)	
	P1_W1 1 \ 5/WBl - Sig+/SigTx+		(COM,ANA,Probe)			(Step)		(I2C, UART)	(IF)
	P2_W3 2 - 6/O   - sGND			(NO)
	P4_W7 4 / 7/WBr - PWMalternate/SigRx+	(Control, Servo, Heater)	(I2C,UART)			(RF)
	P4_W8 4 \ 8/Br  - PWMdirect/SigRx-	(Fan)				(I2C,UART)

## DigitalIO	(Display, SDCard, SPI)
	P3_W5 3 / 1/WG  - A0
	P3_W6 3 \ 2/G   - dRST
	P2_W4 2 - 3/WO  - Vext
	P1_W2 1 / 4/Bl  - MOSI			(I2C, UART)
	P1_W1 1 \ 5/WBl - MISO			(I2C, UART)
	P2_W3 2 - 6/O   - pGND
	P4_W7 4 / 7/WBr - SCK			(I2C, UART)
	P4_W8 4 \ 8/Br  - CS

## Steppers	(Stepper Motor)
	BEWARE! Comparison with LulzBot wiring suggests the third-party Fwd/Rev interconnection specification is inverted.
	Fwd/Rev is intended to be CW/CCW as seen from face of motor.
	P3_W5 3 / 1/WG  - Vsys
	P3_W6 3 \ 2/G   - pGND
	P2_W4 2 - 3/WO  - B+		Fwd(2A/Blue/Red)		Rev(1A/Green/Blue)
	P1_W2 1 / 4/Bl  - A+		Fwd(1A/Green/Blue)		Rev(2A/Blue/Red)
	P1_W1 1 \ 5/WBl - A-		Fwd(1B/Black/Yellow)		Rev(2B/Red/White)
	P2_W3 2 - 6/O   - B-		Fwd(2B/Red/White)		Rev(1B/Black/Yellow)
	P4_W7 4 / 7/WBr - B+		Fwd(2A/Blue/Red)*		Rev(1A/Green/Blue)*
	P4_W8 4 \ 8/Br  - B-		Fwd(2B/Red/White)*		Rev(1B/Black/Yellow)*

## LinearPSU (Lab Bench Power Supply)
	P3_W5 3 / 1/WG  - 5V
	P3_W6 3 \ 2/G   - Vee
	P2_W4 2 - 3/WO  - Vcc
	P1_W2 1 / 4/Bl  - GND
	P1_W1 1 \ 5/WBl - Vee
	P2_W3 2 - 6/O   - Vee
	P4_W7 4 / 7/WBr - 3.3V
	P4_W8 4 \ 8/Br  - Vee

See https://github.com/mirage335/LinearPSU/blob/master/Photo.jpg .


# Steper Motor Known Wiring Standards
All wiring assignments noted here must result in the same direction of rotation.

LulzBot Full Height and Half Height NEMA 17, SY42STH47-1504A
	Red/Blue is the color pair found most in common with other stepper motors.
	Assignment as to which pair is "A" or "B" is based on tracing back to the pin naming of the A4982 chip used by RAMBO Motherboard and Pololu stepper boards, and maintaining consistency with the Ap, Am, Bp, Bm naming used by 'cncio-sys.sch' for pin naming of the Pololu A498x stepper driver boards.
	P1_W1 1 \ 5/WBl - Red Motor	(A-)
	P1_W2 1 / 4/Bl  - Blue/White	(A+)
	P2_W4 2 - 3/WO  - Green		(B+)
	P2_W3 2 - 6/O   - Black		(B-)
	Tracing this mechanically to X-axis motion and typical Marlin firmware settings suggests this is in fact a 'Fwd' driving scheme, not 'Rev'.

OpenBuilds NEMA17
	Claimed SKU 623
	Claimed UPC 819368021264
	Undetermined wiring scheme.


# Ratings
Please beware the following ratings.
* Servo control through pin7 of "GenericIO" is intended for PWM servo position control, as opposed to rotary "Step/Dir" "Stepper/Servo Driver" control.
* Fan/Cooling through pin8 of "GenericIO" is intended for workpiece 'cooling'. A term used loosely in this context, implying any 
nonselective effector. Typically, thermoplastic filament deposition would control a fan blowing on the extruder nozzle, while Selective Laser Sintering, might control a defocused preheater.

* Vext is intended as logic power, and must never exceed 5.5V. Recommend 3.3V||5V depending on system needs.
* Vext may be used as a diode (eg. CDBU0530) OR-gated power bus if all connected devices can operate at 2.8V-5V.
* Vmid/Avcc are alternate uses for the Vext line, and may exceed 5.5V as appropriate.
* Vsys is intended for high-power delivery, and may be any voltage all attached devices are configured to tolerate. Recommend 12V||24V.
* Ground-referenced voltage (ie. wall current) is NOT guaranteed to remain isolated but nonetheless should only be considered for Vsys. Earth-ground and neutral may be bound to pGND/sGND.
* Maximum current into an RJ45 socket or breadboard is typically around 3A/pin. Consider using high-quality header/jumpers, and redundant pins, as appropriate.
* Voltage drops can be significant, especially across pGND/sGND. Take care to follow star-toplogy grounding to the greatest extent possible when accuracy counts.
* Rough changes to voltages can be made (eg. for fans) by high-power zener diodes (ie. 863-1N5919BG).
* Pins 7/8 of GenericIO may be repurposed for digital I2C/UART if needed, specifically for digital control of stepper driver.

# Safety
Use external balancer with LiPo batteries. Cheaply available from HobbyKing among other places.

Not Ethernet compatible, will destroy network hardware.

Do not unplug powered steppers.

Beware common grounding and other wiring issues.

ClassIV lasers are extraordinarily hazardous. Backscatter from the projected spot alone is sufficient to slice a retina. Avoid exposure, and wear eye protection.


Ground-referenced voltage (ie. wall current) applied to Vsys/Vee is NOT guaranteed to remain isolated from other circuits. Spark gap surge protectors specifically, among other faults, are expected to allow sustained connection of high-voltage ground-referenced current to all other circuits.


Testing all essential high current circuits to 30% above requirements is recommended. Such testing has not necessarily been performed. Any particular circuit may not have been designed to accommodate any significant current carrying capacity. Oil immersion may increase useful ampacity, though the risk of dissolution or fire must be considered carefully. Design goals are made on a best effort basis only, suggested but not guaranteed for further development, particularly for short narrow traces.
GenericRap and derivative PCBs - Typically 5A power. Between XT60 Connectors, 40A power.
Solderless Breadboard - Typically 3A per contact. Typically >6A total to gold, tin, lead or similarly plated square pin header 'power feeder' as used by GenericRap.
Wrapping Wire 30AWG "Kynar" Insulated - Typically 6A per wire.

Fire suppression or low flammability products may be mentioned for consideration of further development only. None are specifically recommended for any situation, none may have been tested in any relevant application, and no claim of effectiveness is made.

No claim of liability is made by anyone. Your accident is your accident. Use common sense, and follow all regulations. If you don't understand the safety features and limitations, don't use this circuitry or anything similar.



# FutureWork
* Battery charge control and overdischarge protection circuitry for regenerator.


# Reference
https://www.inventables.com/technologies/stepper-motor-nema-17
http://www.rcgroups.com/forums/showthread.php?t=2387201
https://en.wikipedia.org/wiki/Parallel_ATA

http://electronut.in/attiny10-hello/

http://www.hobbyking.com/hobbyking/store/__26136__Turnigy_DLUX_LIPO_Battery_Cell_Display_and_Balancer_2S_6S_.html

https://www.youtube.com/watch?v=EnanV3dLPJ0

http://reprap.org/wiki/Duet

https://miscsolutions.wordpress.com/paneldue/
http://blog.think3dprint3d.com/2015/04/duex4-v02a-minor-updates.html
http://blog.think3dprint3d.com/2015/02/reprapfirmware-config-files.html

http://blog.think3dprint3d.com/

http://www.linengineering.com/resources/wiring_connections.aspx



https://www.quintolubric.com/wp-content/uploads/articles_2018/IP_MPT_Int_04_2017_S56_59_reprint.pdf
https://youtu.be/bEtlikCMRWM?t=164

https://smile.amazon.com/dp/B008HQ6XNC/?coliid=I3TVNJLXY6X9TV&colid=3OTBRPJLKJWP5&psc=1&ref_=lv_ov_lig_dp_it


https://www.htgsupply.com/products/the-watch-dog-automatic-fire-extinguisher-12-kg/



https://www.youtube.com/watch?v=il9bNWn66BY
https://duet3d.dozuki.com/Wiki/Choosing_a_Z_probe
https://www.youtube.com/watch?v=rIb4wtEoE2w
https://hackaday.com/2019/09/01/force-sensitive-resistor-takes-the-pain-out-of-bed-leveling/
https://reprap.org/wiki/Z_probe
https://reprap.org/wiki/Underbed_Piezo-electric_sensors

https://www.youtube.com/watch?v=Bq2AcUwrd5Q
https://www.youtube.com/watch?v=VwdnGbI5ls8

https://www.instructables.com/id/Make-a-water-block-out-of-a-heatsink-for-less-than/


https://www.linengineering.com/resources/wiring-diagrams
https://cdn11.bigcommerce.com/s-itwgldve/product_images/uploaded_images/imgpsh-fullsize-4-22403.1539714162.jpg
http://download.lulzbot.com/AO-100/hardware/electronics/spec_sheets/SY42STH47-1504A_stepperMotors.pdf

https://download.lulzbot.com/TAZ/6.02/production_parts/electronics/RAMBo/docs/RAMBo-1.1b-user-manual.pdf

https://ohai.lulzbot.com/project/taz6-rambo-13l-14-upgrade/
https://ohai.lulzbot.com/media/uploads/PinoutTAZ6_fixed.jpg.600x0_q85_fIgdq3t.jpg
https://cdn.shopify.com/s/files/1/1223/5992/products/Rambo14a_1024x1024_aa89364b-1778-44dc-817f-51a350a93580_1024x1024.jpg?v=1516047707

https://hackaday.com/2019/09/10/diy-watertight-junction-box-for-serious-outdoor-sealing/


# Copyright
This file is part of PatchRap.

PatchRap is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

PatchRap is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with PatchRap.  If not, see <http://www.gnu.org/licenses/>.
