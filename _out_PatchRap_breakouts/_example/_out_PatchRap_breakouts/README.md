

Component schematic symbols and footprints intended to simplify electrical connections between standard cables, inexpensive quick-change connectors, and tools.



Beware these files are intended to rapidly create specialized adapters (ie. breakouts) ONLY.

Such simplified adapters may have several potentially dangerous limitations.

* Proper labeling with universally unique indicators as to known compatible equipment is *strongly* encouraged.
* Justification of necessity to be documented or linked as feasible with relevant design files is *strongly* encouraged.
* May be dangerously incompatible with any equipment not specifically designed for.
* May not be standards compliant.

* Binding tabs for zip tie, foil, and plastic sheets, at each RJ45 jack, for shielding, are *strongly* encouraged.




# Connectors

RJ45 - Typically 5A/contact (without powered dis/connects).
XT60 - Typically 60A/contact .
Solderless Breadboard - Typically <3A/contact .

Mezzanine 60pin 0.3A/contact

IDC (12pin) - Offset Pins/Vias typically 3A/contact (completely untested) .

Mounting hole forced ring of contacts - 1mm balls typically 3A/contact (completely untested) .

Screw Terminals - 490-TB001-500-09BE (9-position, 5mm pitch) or similar with wire space behind clamp mechanism. Beware these may not be able to establish or maintain adequate mechanical or electrical contact.

Barrier Terminal Blocks - 38700-6109 (9-position, 8.26mm pitch) or similar.

Multi-Dimensioned Wiring Solder Points - insulated portions of wires must be woven through as many plated vias as possible. Additionally, zip ties with spacing beads (possibly a standard 3D printed part) may be needed to ensure strain relief for potentially fragile solder joints.
0.50mm (26AWG 0.4049mm, 30AWG 0.2546mm)
0.75mm (22AWG 0.6438mm)
1.25mm
2.00mm

Breakaway Lines - Using only single layers or well separated traces across a marked line on a PCB may allow the PCB to be cut or broken at that point and subsequently reconnected by any board-to-board connection mechanism.


# Rejected

Card edge connectors, when compact (ie. M.2), typically do not offer substantial improvements (ie. 0.5A/contact) over Mezzanine connectors.

Rivets typically may not adequately accommodate spacing for additional Mezzanine connectors, and may be labor intensive to install.

Wire wrap may requrire pin headers which are too expensive in some situations.

Wiring pen (solderable enamel wire) may be too labor intensive in some situations.

Standard processor sockets (eg. LGA2011) may have a high upfront cost, and possible long-term availability issues. Multiple mezzanine connectors per PCB may offer comparable performance (even if practical limits exceed 1kA/2000pins). However, these sockets have not been ruled out for all applications, particularly extremely high-current high-voltage switching modules requiring transistor cascodes, multiple isolated inputs, and watercooling.

Solder bridges from one PCB to the next have in some situations proven labor intensive and fragile, sometimes requiring a stereomicroscope to perform efficiently.

Friction contact between exposed PCB traces may be unreliable due to PCB manufacturing thickness variations or insufficient elasticity.



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



SAFETY DOCUMENTATION HERE TO BE AN EXACT COPY OF SAFETY DOCUMENTATION PROVIDED AS 'README' FOR "PatchRap" .


# Copyright

Please see 'license_PatchRapBreakouts_symbol_and_footprint_files.txt' . To the extent feasible, efforts have been made to ensure all source code is available, and all copyright license terms are fully respected. Some named files under this directory were obtained from gedasymbols.org under a 'GPL license'. All files under this directory in the absence of any license explicitly stated in the named license file or any prior license are intended to be public domain.




