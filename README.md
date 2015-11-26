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

##Steppers
	3 / 1 - 12V
	3 \ 2 - pGND
	2 - 3 - B+
	1 / 4 - A+
	1 \ 5 - A-
	2 - 6 - B-
	4 / 7 - B+
	4 \ 8 - B-

##Limit Switches
	3 / 1 - 5V
	3 \ 2 - sGND
	2 - 3 - Vsys
	1 / 4 - NC
	1 \ 5 - NO
	2 - 6 - pGND
	4 / 7 - PWM (Servo)
	4 \ 8 - pGND

##Laser
	3 / 1 - 5V
	3 \ 2 - sGND
	2 - 3 - Vsys
	1 / 4 - 12V (Must be powered internally or externally.)
	1 \ 5 - pGND
	2 - 6 - pGND
	4 / 7 - PWM (Control)
	4 \ 8 - sGND

###Drive
Laser drive electronic designs may wish to follow similar standards.
####Tool
	3 / 1 - 5V
	3 \ 2 - sGND
	2 - 3 - Vsys
	1 / 4 - 12V
	1 \ 5 - pGND
	2 - 6 - pGND
	4 / 7 - PWR (Laser)
	4 \ 8 - pGND

####Interface
	3 / 1 - 5V
	3 \ 2 - sGND
	2 - 3 - Emitter (Enable, Ammeter)
	1 / 4 - 10k Emitter (Voltmeter, BNC)
	1 \ 5 - 10k sGND
	2 - 6 - pGND
	4 / 7 - Emitter (Enable, Ammeter)
	4 \ 8 - pGND

##Extruder
In addition to a dedicated cable for stepper motor operation, extruders require an auxiliary connection as follows.
	3 / 1 - PWMfan
	3 \ 2 - pGND
	2 - 3 - 12V
	1 / 4 - PWMheater
	1 \ 5 - pGND
	2 - 6 - pGND
	4 / 7 - Thermistor
	4 \ 8 - sGND

##Accessory
Continious cooling fans, lighting, etc.
	3 / 1 - 5V
	3 \ 2 - sGND
	2 - 3 - Vsys
	1 / 4 - 12V
	1 \ 5 - pGND
	2 - 6 - pGND
	4 / 7 - pGND
	4 \ 8 - pGND

##Probe
Recommended pinout for David Crocker's optical probe. Not currently integrated with PatchRap. 
	3 / 1 - 3.3V
	3 \ 2 - sGND
	2 - 3 - 
	1 / 4 - sGND
	1 \ 5 - SIG
	2 - 6 - sGND
	4 / 7 - 
	4 \ 8 - sGND


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

Please note that peripherials directly interacting with logic signals (ie. limit switches) are expected to use 5V power. For use with 3.3V logic, a 3.3V regulator may be provided onboard or by an inline RJ45 connectorized PCB.

#Safety
Not Ethernet compatible, will destroy network hardware.

Do not unplug powered steppers.

Beware common grounding and other wiring issues.

ClassIV lasers are extraordinarily hazardous. Backscatter from the projected spot alone is sufficient to slice a retina. Avoid exposure, and wear eye protection.

No claim of liability is made by anyone. Your accident is your accident. Use common sense, and follow all regulations. If you don't understand the safety features and limitations, don't use this circuitry or anything similar.

#FutureWork
*) Header connectors should use larger VIA holes for easier assembly.
*) Limit switch common terminals should be used as outputs. A three-terminal limit switch NO pin can be wired to Ethernet/T568A pin2 (sGND). The entire NC line (pin4) can then be wired to 3.3V, with the currently assigned NO line (pin5) wired to common output. In summary, pin2 becomes NO/GND, pin4 HIGH, pin5 SIGNAL.

*) Extruder power should be jumper-configurable to Vsys/12V/5V.
*) Extruder heater pair should be jumper-configurable to include pGND/Vsys.
*) Extruder thermistor pair should be jumper-configurable to include sGND/Vsys.

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