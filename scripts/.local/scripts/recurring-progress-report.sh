DENOMINATOR=$(task parent:$1 end.any: count)
NUMERATOR=$(task parent:$1 status:completed count)
DESC=$(task _get $1.description)
echo "$DESC"
echo "$NUMERATOR / $DENOMINATOR == $((($NUMERATOR*100 / $DENOMINATOR*100)/100))% completed"
