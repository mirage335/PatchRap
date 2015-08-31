#!/bin/bash
#$1 = ngcFile
#$2 = power (0-255)
#$3 = speed (mm/min)

power="$2"
feedrate="$3"
rapidFeedRate=2000

convertUnits() {
	offset=100
	
	echo -n $(bc <<< "$1 * 25.4 + $offset")
}

echo "M106 S255 (Fan on.)"

#For best results, home the machine, send it to the offset point, and THEN start the job. That will keep the laser from bumping around unnecessarily.
#echo "g0 z5 (Keep laser high until starting point is reached, in case the table is imperfect.)"

echo "G0 x100 y100 f$rapidFeedRate (  Set origin and speed.  )"

sed -i 's/^G90.*//g' "$1"

sed -i 's/^G94.*//g' "$1"

sed -i 's/^G20.*//g' "$1"

while read line
do
	
	if echo $line | grep '^X' > /dev/null
	then
	
		echo -n 'G0 X'
		
		convertUnits $(echo $line | sed 's/^X//' | cut -f1 -d\ )
		
		echo -n ' Y'
		
		convertUnits $(echo $line | sed 's/^X.*Y//')
		
		echo " F$feedrate"
		
		continue
	fi
	
	if echo $line | grep '^G00 X' | grep rapid > /dev/null
	then
	
		echo -n 'G00 X'
		
		convertUnits $(echo $line | sed 's/^G00\ X//' | cut -f1 -d\ )
		
		echo -n ' Y'
		
		convertUnits $(echo $line | sed 's/^G00\ X.*Y//' | cut -f1 -d\ )
		
		echo " F$rapidFeedRate (rapid move to begin)"
		
		continue
	fi
	
	if echo $line | grep 'retract' > /dev/null
	then
		echo "M400"
		echo "M5"
		echo "M42 P13 S0 (OFF - LASER)"
		echo $line
		continue
	fi
	
	if echo $line | grep 'plunge' > /dev/null
	then
		echo $line
		echo "M400"
		echo "M3"
		echo "M42 P13 S$power (ON - LASER)"
		continue
	fi
	
	if echo $line | grep 'dwell' > /dev/null
	then
		continue
	fi
	
	if echo $line | grep 'M3' > /dev/null
	then
		continue
	fi
	
	if echo $line | grep 'M2 ( Program end. )' > /dev/null
	then
		continue
	fi
	
	echo $line
	
	
	
done < $1

echo "M106 S0 (Fan off.)"