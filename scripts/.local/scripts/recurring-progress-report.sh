#!/bin/bash
LMS_PROCESS_SORTING=(	"eb9b31bb" "ee055a87" "6952b906" "47c0d2fd" "d6d5af8a" )
LMS_PROCESS_CHECKINS=( "1e0b95c1" "0af6407d" "dfa84126" "78dbb19b" )
LMS_PROCESS_HONEYDO=( "9e824161"	"5bb7ceef" "15a26808" "6140b4a1" )
LMS_PROCESS_AUDITING=( "ef6545a6" "f8040c1d" "744e2e16" "1692fdbb" "0355b8c3" "b20912bf" "30c9c9eb" "47ba56d0" "bf16a200" "895d4e44" "1d2987ab" "9e46d83b" "426e763d" "c09d2cb1" "1a0c55d9" )

SUBSISTENCE_SLEEP_HABITS=( "c22ae2fe" "9856d1dc" "b4c314c6" )
SUBSISTENCE_SLEEP_CPAP=( "dbc4a80d" "f0c2258a" )

SUBSISTENCE_DISCIPLINE_ORGANIZATION=("ee3747ee" "23ea2a40" "e82d2382" "1c338e10" "57905942" "77c4b5c6")
SUBSISTENCE_DISCIPLINE_TIME=( "f3da98e8" "5cda2fb1" "f0284e9e" "5ece6fa9" "38e5a989" )

SUBSISTENCE_EMOTION_TRACKING=( "0c1f38d3" "b50ce945" "7659df89" "49507e77" "78073f48" )

SUBSISTENCE_WATER_DRINKING=( "0fb9252f" "eb010ea3" "9c200d6a" "738234ab" "6106f039" "38e39538" "b45ab5b2" "e4c004f4" )

SUBSISTENCE_EXERCISE_ACTIVITIES=( "ee6f637f" "508c069f" )
SUBSISTENCE_EXERCISE_STEPS=( "b5c6f383" "d6ae6058" "9f709f77" "109fb5b9" "649a2f3f" "1aabc0b1" "132908d3" "4457cf69" "5280531c" "0d59ea3a" )
SUBSISTENCE_EXERCISE_WEIGHT=( "30b55659" "575d1ab4" "a8cff588" )

report () {
	if [[ "$1" = "lms" ]]; then
		echo "LMS.Process.CheckIns"
		LEN=$((${#LMS_PROCESS_CHECKINS[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${LMS_PROCESS_CHECKINS[$i]}
		done

		echo "LMS.Process.Sorting"
		LEN=$((${#LMS_PROCESS_SORTING[@]} - 1 )) 
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${LMS_PROCESS_SORTING[$i]}
		done
	
		echo "LMS.Process.HoneyDo"
		LEN=$((${#LMS_PROCESS_HONEYDO[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${LMS_PROCESS_HONEYDO[$i]}
		done

		echo "LMS.Process.Auditing"
		LEN=$((${#LMS_PROCESS_AUDITING[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${LMS_PROCESS_AUDITING[$i]}
		done
	fi

	if [[ "$1" = "subsistence" ]]; then
		echo "Subsistence.Sleep.Habits"
		LEN=$((${#SUBSISTENCE_SLEEP_HABITS[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_SLEEP_HABITS[$i]}
		done

		echo "Subsistence.Sleep.CPAP"
		LEN=$((${#SUBSISTENCE_SLEEP_CPAP[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_SLEEP_CPAP[$i]}
		done
	
		echo "Subsistence.Discipline.Organization"
		LEN=$((${#SUBSISTENCE_DISCIPLINE_ORGANIZATION[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_DISCIPLINE_ORGANIZATION[$i]}
		done

		echo "Subsistence.Discipline.Time"
		LEN=$((${#SUBSISTENCE_DISCIPLINE_TIME[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_DISCIPLINE_TIME[$i]}
		done
		
		echo "Subsistence.Emotion.Tracking"
		LEN=$((${#SUBSISTENCE_EMOTION_TRACKING[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_EMOTION_TRACKING[$i]}
		done
		
		echo "Subsistence.Water.Drinking"
		LEN=$((${#SUBSISTENCE_WATER_DRINKING[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_WATER_DRINKING[$i]}
		done
		
		echo "Subsistence.Exercise.Activities"
		LEN=$((${#SUBSISTENCE_EXERCISE_ACTIVITIES[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_EXERCISE_ACTIVITIES[$i]}
		done
		
		echo "Subsistence.Exercise.Steps"
		LEN=$((${#SUBSISTENCE_EXERCISE_STEPS[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_EXERCISE_STEPS[$i]}
		done
		
		echo "Subsistence.Exercise.Weight"
		LEN=$((${#SUBSISTENCE_EXERCISE_WEIGHT[@]} - 1))
		for i in $(seq 0 ${LEN}); do
			project-progress.sh ${SUBSISTENCE_EXERCISE_WEIGHT[$i]}
		done
	fi
}

report $1

