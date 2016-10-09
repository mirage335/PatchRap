Copyright (C) 2015 mirage335
See the end of the file for license conditions.
See license.txt for PatchRap license conditions.

'PatchPanel' for RepRap 3D printers to replace PCB terminal blocks with RJ45 jacks.

#Usage
PatchRap mainboard provides input terminals for connection to appropriate RepRap motherboard (eg. Duet, RAMBO, etc). Breakout boards adapt shielded RJ45/8P8C connectors to peripherials (eg. steppers).

External 24V/12V power may be required to meet fan, limit switch/sensor, or laser requirements.

Cat 6A S/FTP cabling recommended.

#Design
RJ45/8P8C connectors are among most convenient, cheapest connectors designed to provide high performance with commodity shielded twisted-pair cabling. High power transmission is documented, exceeding 2A/pin.

Besides 'patch panel' functions, surge suppressors and EMI filters are supported.

USA companies provide all parts in these schematics, excepting the optional terminal blocks from TE Connectivity, a Swiss company.

Pinouts are as follows, numbering by T568A standard.

##GenericIO	(Limit Switch, Depth Probe, Extruder, Stepper Driver)
	3 \/ 1 - Vsys
	3 \\ 2 - pGND
	2 - 3 - Vext			(NC)
	1 \/ 4 - Sig+			(COM,ANA,Probe)	(Step)		(I2C,UART)
	1 \\ 5 - Sig-			(sGND)		(Dir)		(I2C,UART)
	2 - 6 - sGND			(NO)
	4 \/ 7 - PWMalternate		(Control, Servo, Heater)
	4 \\ 8 - PWMdirect		(Fan)
	
##AnalogIO
	3 \/ 1 - Vcc
	3 \\ 2 - sGND
	2 - 3 - Vmid/AVcc/SigAlt	(LO)
	1 \/ 4 - SigRx+			(RF)
	1 \\ 5 - SigRx-/sGND
	2 - 6 - sGND
	4 \/ 7 - SigTx+			(IF)
	4 \\ 8 - SigTx-/sGND

##DigitalIO
	3 \/ 1 - A0
	3 \\ 2 - dRST
	2 - 3 - Vext
	1 \/ 4 - MOSI			(I2C, UART)
	1 \\ 5 - MISO			(I2C, UART)
	2 - 6 - pGND
	4 \/ 7 - SCK			(I2C, UART)
	4 \\ 8 - CS

##Steppers	(Stepper Motor)
	3 / 1 - Vsys
	3 \ 2 - pGND
	2 - 3 - B+
	1 / 4 - A+
	1 \ 5 - A-
	2 - 6 - B-
	4 / 7 - B+
	4 \ 8 - B-

##LinearPSU
Partly inspired the above pinouts. See https://github.com/mirage335/LinearPSU/blob/master/Photo.jpg .
	3 / 1 - 5V
	3 \ 2 - Vee
	2 - 3 - Vcc
	1 / 4 - GND
	1 \ 5 - Vee
	2 - 6 - Vee
	4 / 7 - 3.3V
	4 \ 8 - Vee

Please beware the following ratings.
*) Vext is intended as logic power, and must never exceed 5.5V. Recommend 3.3V||5V depending on system needs.
*) Vext may be used as a diode (eg. CDBU0530) OR-gated power bus if all connected devices can operate at 2.8V-5V.
*) Vsys is intended for high-power delivery, and may be any voltage all attached devices are configured to tolerate. Recommend 12V||24V.
*) Ground-referenced voltage (ie. wall current) should only be considered for Vsys. Earth-ground and neutral may be bound to pGND/sGND.
*) Maximum current into an RJ45 socket or breadboard is typically around 3A/pin. Consider using high-quality header/jumpers, and redundant pins, as appropriate.
*) Voltage drops can be significant, especially across pGND/sGND. Take care to follow star-toplogy grounding to the greatest extent possible when accuracy counts.
*) Rough changes to voltages can be made (eg. for fans) by high-power zener diodes (ie. 863-1N5919BG).

#Safety
Not Ethernet compatible, will destroy network hardware.

Do not unplug powered steppers.

Beware common grounding and other wiring issues.

ClassIV lasers are extraordinarily hazardous. Backscatter from the projected spot alone is sufficient to slice a retina. Avoid exposure, and wear eye protection.

No claim of liability is made by anyone. Your accident is your accident. Use common sense, and follow all regulations. If you don't understand the safety features and limitations, don't use this circuitry or anything similar.

#FutureWork
##Modules
*) Modular, breadboard compatible PCB architecture for more flexibility.

##Mainboard
*) New modular standards should be integrated.

*) Header connectors should use larger VIA holes for easier assembly.
*) Limit switch common terminals should be used as outputs. A three-terminal limit switch NO pin can be wired to Ethernet/T568A pin2 (sGND). The entire NC line (pin4) can then be wired to 3.3V, with the currently assigned NO line (pin5) wired to common output. In summary, pin2 becomes NO/GND, pin4 HIGH, pin5 SIGNAL.

*) Extruder power should be jumper-configurable to Vsys/12V/Vlogic.
*) Extruder heater pair should be jumper-configurable to include pGND/Vsys.
*) Extruder thermistor pair should be jumper-configurable to include sGND/Vsys.

*) Filter inductors bridged by default.

*) Zener diode, 863-1N5919BG, option for adapting 24V/12V/5V fans.

#Reference
https://www.inventables.com/technologies/stepper-motor-nema-17
http://www.rcgroups.com/forums/showthread.php?t=2387201
https://en.wikipedia.org/wiki/Parallel_ATA


#Copyright
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
