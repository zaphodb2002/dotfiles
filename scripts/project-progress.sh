#!/bin/bash

NUMERATOR=$(task project:$1 status:completed count)
DENOMINATOR=$(task project:$1 end.any: count)

PCT=$((($NUMERATOR*100 / $DENOMINATOR*100)/100))

echo "$NUMERATOR / $DENOMINATOR == $PCT%"
