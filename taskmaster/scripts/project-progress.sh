#!/bin/bash
DESC=$(task _get $1.description)
NUMERATOR=$(task parent:$1 status:completed count)
DENOMINATOR=$(task parent:$1 end.any: count)

if [[ $DENOMINATOR -gt 1 ]]; then
	PCT=$((($NUMERATOR*100 / $DENOMINATOR*100)/100))
	echo $1
	echo $DESC
	echo "$NUMERATOR / $DENOMINATOR == $PCT%"
else
	echo $1
	echo "0 / 0 == 0%"
fi

echo ""
