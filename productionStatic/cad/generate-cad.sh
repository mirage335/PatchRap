#!/bin/bash

# Converts gEDA projects to files to suitable for CAD modeling.

# The MIT License (MIT)
# Copyright (c) 2013 Shawn Nock

# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:

# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#Derived from generate-gerbers.sh by Shawn Nock. Modified by mirage335, under same copyright as above.

#"$1" = File to check.
PWD_SanityCheck() {
	if [[ $(ls -ld ./"$1") ]]
	then
		echo -e '\E[1;32;46m Found file '"$1"', proceeding. \E[0m'
	else
		echo -e '\E[1;33;41m *DANGER* Did not find file '"$1"'! *DANGER* \E[0m'
		echo -e '\E[1;33;41m Aborting! \E[0m'
		exit
	fi
}

PWD_SanityCheck generate-cad.sh

# Generate Gerbers for each pcb file in the parent directory
count=0
for pcbname in `ls ../.. |sed -n -e '/\.pcb/s/\.pcb$//p'`; do
    if [[ ${pcbname: -4} = ".new" ]]; then
        echo "Warning: Assuming $pcbname.pcb is a development artifact, skipping"
        continue
    fi
    if [[ ! -e $pcbname ]]; then
	mkdir $pcbname
    fi
    pcb -x gerber --all-layers --name-style fixed --gerberfile $pcbname/$pcbname ../../$pcbname.pcb
	
	cd $pcbname/
	
	gerbv -b \#FFFFFF --export svg --output combined.svg $pcbname.plated-drill.cnc $pcbname.outline.gbr
	inkscape -E combined.eps combined.svg && pstoedit -dt -f dxf combined.eps combined.dxf	#Inches. Circles will be approximate
	
	gerbv -b \#cccccc --export png --dpi 1200x1200 --output Top_Copper.png -f \#00000000 -b \#cccccc $pcbname.topmask.gbr -f \#ccccccFF $pcbname.plated-drill.cnc -f \#B18883FF $pcbname.top.gbr -f \#FFFFFFFF $pcbname.topsilk.gbr -f \#000000FF $pcbname.outline.gbr
	gerbv -b \#cccccc --export png --dpi 1200x1200 --output Top_Mask.png -f \#ccccccFF -b \#102c10 $pcbname.topmask.gbr -f \#00000000 $pcbname.plated-drill.cnc -f \#00000000 $pcbname.top.gbr -f \#FFFFFFFF $pcbname.topsilk.gbr -f \#ccccccFF $pcbname.outline.gbr
	gerbv -a -b \#FFFFFF --export png --dpi 1200x1200 --output Top_Outline.png -f \#00000000 $pcbname.topmask.gbr -f \#00000000 $pcbname.plated-drill.cnc -f \#00000000 $pcbname.top.gbr -f \#00000000 $pcbname.topsilk.gbr -f \#000000FF $pcbname.outline.gbr
	convert Top_Copper.png -transparent \#cccccc Top_Copper.png
	convert Top_Mask.png -transparent \#cccccc Top_Mask.png
	convert Top_Outline.png -transparent \#cccccc Top_Outline.png
	
	convert Top_Outline.png -bordercolor white -border 1x1 -alpha set -channel RGBA -fuzz 10% -fill none -floodfill +0+0 white -shave 1x1 Top_Outline.png
	convert Top_Outline.png -fuzz 100% -fill \#0a1a0a -opaque white Top_BG.png
	convert Top_Outline.png -channel a -negate +channel -fill \#cccccc -colorize 100% Top_Outline.png
	
	convert Top_Mask.png -channel rgba -matte -fill "rgba(16,44,16,0.8)" -opaque \#102c10 Top_Mask.png
	
	composite Top_Outline.png Top_Mask.png Top_Mask_Real.png
	convert Top_Mask_Real.png -transparent \#cccccc Top_Mask_Real.png
	
	composite Top_Mask_Real.png Top_Copper.png Top_All.png
	composite Top_All.png Top_BG.png Top.png
	
	convert Top.png -background "#cccccc" -flatten Top.png
	
	mv Top.png RenderTop.png
	rm Top*.png
	
	gerbv -b \#FFFFFF --export svg --output combined.svg $pcbname.plated-drill.cnc $pcbname.outline.gbr
	inkscape -E combined.eps combined.svg && pstoedit -dt -f dxf combined.eps combined.dxf	#Inches. Circles will be approximate
	
	gerbv -b \#cccccc --export png --dpi 1200x1200 --output Bottom_Copper.png -f \#00000000 -b \#cccccc $pcbname.bottommask.gbr -f \#ccccccFF $pcbname.plated-drill.cnc -f \#B18883FF $pcbname.bottom.gbr -f \#FFFFFFFF $pcbname.bottomsilk.gbr -f \#000000FF $pcbname.outline.gbr
	gerbv -b \#cccccc --export png --dpi 1200x1200 --output Bottom_Mask.png -f \#ccccccFF -b \#102c10 $pcbname.bottommask.gbr -f \#00000000 $pcbname.plated-drill.cnc -f \#00000000 $pcbname.bottom.gbr -f \#FFFFFFFF $pcbname.bottomsilk.gbr -f \#ccccccFF $pcbname.outline.gbr
	gerbv -a -b \#FFFFFF --export png --dpi 1200x1200 --output Bottom_Outline.png -f \#00000000 $pcbname.bottommask.gbr -f \#00000000 $pcbname.plated-drill.cnc -f \#00000000 $pcbname.bottom.gbr -f \#00000000 $pcbname.bottomsilk.gbr -f \#000000FF $pcbname.outline.gbr
	convert Bottom_Copper.png +flop -transparent \#cccccc Bottom_Copper.png
	convert Bottom_Mask.png +flop -transparent \#cccccc Bottom_Mask.png
	convert Bottom_Outline.png +flop -transparent \#cccccc Bottom_Outline.png
	
	convert Bottom_Outline.png -bordercolor white -border 1x1 -alpha set -channel RGBA -fuzz 10% -fill none -floodfill +0+0 white -shave 1x1 Bottom_Outline.png
	convert Bottom_Outline.png -fuzz 100% -fill \#0a1a0a -opaque white Bottom_BG.png
	convert Bottom_Outline.png -channel a -negate +channel -fill \#cccccc -colorize 100% Bottom_Outline.png
	
	convert Bottom_Mask.png -channel rgba -matte -fill "rgba(16,44,16,0.8)" -opaque \#102c10 Bottom_Mask.png
	
	composite Bottom_Outline.png Bottom_Mask.png Bottom_Mask_Real.png
	convert Bottom_Mask_Real.png -transparent \#cccccc Bottom_Mask_Real.png
	
	composite Bottom_Mask_Real.png Bottom_Copper.png Bottom_All.png
	composite Bottom_All.png Bottom_BG.png Bottom.png
	
	convert Bottom.png -background "#cccccc" -flatten Bottom.png
	
	mv Bottom.png RenderBottom.png
	rm Bottom*.png
	
	convert -density 1200x1200 RenderTop.png RenderTop.pdf
	convert -density 1200x1200 RenderBottom.png RenderBottom.pdf
	montage -density 1200x1200 -mode concatenate -bordercolor \#000000 -border 4 -geometry '+300+300' RenderTop.png RenderBottom.png Model.pdf
	
	cd ..
	
done

find . -maxdepth 2 -type f -regextype posix-egrep -regex ".*(silk|\.cnc|\.gbr|\.eps).*" -delete

echo -e '\E[1;32;46m Finished. \E[0m'
