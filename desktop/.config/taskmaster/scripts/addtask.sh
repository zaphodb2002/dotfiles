#! /usr/bin/env bash

echo "Description:"
read desc

echo "Project:"
read project

tags=" "

echo "Recurrence:"
read recur

echo "CheckIn (am,lunch,pm,evening):"
read checkin


if [ $checkin = "am" ]; then
	checkin="+9h"
	tags=$tags" +am"
fi
if [ $checkin = "lunch" ]; then
	checkin="+13h"
	tags=$tags" +lunch"
fi
if [ $checkin = "pm" ]; then
	checkin="+18h"
	tags=$tags" +pm"
fi
if [ $checkin = "evening" ]; then
	checkin="+22h"
	tags=$tags" +evening"
fi


if [ $recur = "1mo" ]; then
	due="28th"
	wait_time="-27d"
	tags=$tags" +monthly"
fi
if [ $recur = "1w" ]; then
	due="sun"
	wait_time="-6d"
	tags=$tags" +weekly"
fi
if [ $recur = "1d" ]; then
	due="today"
	wait_time="-2h"
	tags=$tags" +daily"
fi

cmd="task add \"$desc\" project:$project recur:$recur due:$due$checkin wait:due$wait_time $tags"

echo $cmd
echo "Look good? (y/n)"
read confirm
if [ $confirm = "y" ]; then 
	${cmd}
else
	echo "Aborting"
fi
