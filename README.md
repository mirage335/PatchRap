Copyright (C) 2015-2017 mirage335
See the end of the file for license conditions.
See license.txt for PatchRap license conditions.

'PatchPanel' initially designed for RepRap 3D printers to replace PCB terminal blocks with RJ45 jacks. Applicable to a wide variety of systems, including CNC machines, vehicles, factory automation, test equipment, and more.

#Usage
GenericRap is the reference implementation, includes multiple connectors and headers to adapt RepRap motherboard terminals to internal step-down voltage converters, XT60 power connectors, shielded RJ45/8P8C connectors, and various peripherials (eg. steppers, limit switches, thermistors, hot-ends etc).

Breadboard friendly, the PCB layout includes appropriately spaced headers. In effect, a breadboard can be used as a backplane for power sharing and mechanical support, as well as to arrange even more wiring as needed.

Cat 6A S/FTP cabling recommended.

#Design
RJ45/8P8C connectors are among most convenient, cheapest connectors designed to provide high performance with commodity shielded twisted-pair cabling. High power transmission is documented, exceeding 2A/pin.

Besides 'patch panel' functions, surge suppressors and EMI filters are supported.

USA companies provide all parts in these schematics, excepting the RJ45 jacks and optional terminal blocks from TE Connectivity, a Swiss company.

Pinouts are as follows, numbering by T568A standard.

##GenericIO	(Limit Switch, Depth Probe, Extruder, Stepper Driver, Radio)
	3 / 1 - Vsys/Vcc
	3 \ 2 - pGND/sGnd
	2 - 3 - Vext/Vmid/Avcc/SigAlt	(NC)								(LO)
	1 / 4 - Sig-/SigTx-		(sGND)				(Dir)		(I2C, UART)	
	1 \ 5 - Sig+/SigTx+		(COM,ANA,Probe)			(Step)		(I2C, UART)	(IF)
	2 - 6 - sGND			(NO)
	4 / 7 - PWMalternate/SigRx+	(Control, Servo, Heater)	(I2C,UART)			(RF)
	4 \ 8 - PWMdirect/SigRx-	(Fan)				(I2C,UART)

##DigitalIO	(Display, SDCard, SPI)
	3 / 1 - A0
	3 \ 2 - dRST
	2 - 3 - Vext
	1 / 4 - MOSI			(I2C, UART)
	1 \ 5 - MISO			(I2C, UART)
	2 - 6 - pGND
	4 / 7 - SCK			(I2C, UART)
	4 \ 8 - CS

##Steppers	(Stepper Motor)
	3 / 1 - Vsys
	3 \ 2 - pGND
	2 - 3 - B+		Fwd(2A/Blue/Red)		Rev(1A/Green/Blue)
	1 / 4 - A+		Fwd(1A/Green/Blue)		Rev(2A/Blue/Red)
	1 \ 5 - A-		Fwd(1B/Black/Yellow)		Rev(2B/Red/White)
	2 - 6 - B-		Fwd(2B/Red/White)		Rev(1B/Black/Yellow)
	4 / 7 - B+		Fwd(2A/Blue/Red)*		Rev(1A/Green/Blue)*
	4 \ 8 - B-		Fwd(2B/Red/White)*		Rev(1B/Black/Yellow)*

##LinearPSU
	3 / 1 - 5V
	3 \ 2 - Vee
	2 - 3 - Vcc
	1 / 4 - GND
	1 \ 5 - Vee
	2 - 6 - Vee
	4 / 7 - 3.3V
	4 \ 8 - Vee

See https://github.com/mirage335/LinearPSU/blob/master/Photo.jpg .

#Ratings
Please beware the following ratings.
* Vext is intended as logic power, and must never exceed 5.5V. Recommend 3.3V||5V depending on system needs.
* Vext may be used as a diode (eg. CDBU0530) OR-gated power bus if all connected devices can operate at 2.8V-5V.
* Vmid/Avcc are alternate uses for the Vext line, and may exceed 5.5V as appropriate.
* Vsys is intended for high-power delivery, and may be any voltage all attached devices are configured to tolerate. Recommend 12V||24V.
* Ground-referenced voltage (ie. wall current) should only be considered for Vsys. Earth-ground and neutral may be bound to pGND/sGND.
* Maximum current into an RJ45 socket or breadboard is typically around 3A/pin. Consider using high-quality header/jumpers, and redundant pins, as appropriate.
* Voltage drops can be significant, especially across pGND/sGND. Take care to follow star-toplogy grounding to the greatest extent possible when accuracy counts.
* Rough changes to voltages can be made (eg. for fans) by high-power zener diodes (ie. 863-1N5919BG).
* Pins 7/8 of GenericIO may be repurposed for digital I2C/UART if needed, specifically for digital control of stepper driver.

#Safety
Use external balancer with LiPo batteries. Cheaply available from HobbyKing among other places.

Not Ethernet compatible, will destroy network hardware.

Do not unplug powered steppers.

Beware common grounding and other wiring issues.

ClassIV lasers are extraordinarily hazardous. Backscatter from the projected spot alone is sufficient to slice a retina. Avoid exposure, and wear eye protection.

No claim of liability is made by anyone. Your accident is your accident. Use common sense, and follow all regulations. If you don't understand the safety features and limitations, don't use this circuitry or anything similar.

#FutureWork
* Battery charge control and overdischarge protection circuitry for regenerator.


#Reference
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
