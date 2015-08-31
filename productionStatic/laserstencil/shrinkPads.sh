#!/bin/bash
#$1 = inputGerberFile
#$2 = resizeDimension

resizeDimension="$2"

resizePad() {
	#Basic operators, for reference.
	#echo -n $(bc <<< "$1 - $resizeDimension")
	#echo -n $(bc <<< "$1 * 0.6")
	
	newDimension=$(bc <<< "$1 - $resizeDimension")
	if [[ "$newDimension" < ".004" ]]
	then
		echo -n ".004"
	else
		echo -n "$newDimension"
	fi
	
}

#Two fields.
#^\%ADD[0-9]*.\,[0-9]*\.[0-9]*.[0-9]*\.[0-9]*.*

#One field.
#^\%ADD[0-9]*.\,[0-9]*\.[0-9]*

processFile() {

	while read line
	do
		
		#Two fields.
		if echo $line | grep '^\%ADD[0-9]*.\,[0-9]*\.[0-9]*.[0-9]*\.[0-9]*.*' > /dev/null
		then
			echo -n $(echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.\)\([0-9]*\.[0-9]*\)\(.*\)/\1/g')
			
			resizePad $(echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.\)\([0-9]*\.[0-9]*\)\(.*\)/\2/g')
			
			echo -n $(echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.\)\([0-9]*\.[0-9]*\)\(.*\)/\3/g')
			
			resizePad $(echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.\)\([0-9]*\.[0-9]*\)\(.*\)/\4/g')
			
			echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.\)\([0-9]*\.[0-9]*\)\(.*\)/\5/g'
			
			continue
		fi
		
		#One field.
		if echo $line | grep '^\%ADD[0-9]*.\,[0-9]*\.[0-9]*' > /dev/null
		then
			echo -n $(echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.*\)/\1/g')
		
			resizePad $(echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.*\)/\2/g')
		
			echo "$line" | sed 's/\(^\%ADD[0-9]*.\,\)\([0-9]*\.[0-9]*\)\(.*\)/\3/g'
			
			continue
		fi
		
		#No fields.
		echo "$line"
		
	done < $1

}

processFile "$1"