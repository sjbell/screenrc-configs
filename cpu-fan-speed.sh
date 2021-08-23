#!/usr/bin/env bash

TEMP_GREEN='100'
TEMP_YELLOW='4000'
TEMP_RED='5000'

CPU_FAN_SPEED="$(sensors | grep -o -P '(?<=Fan: ).*(?= RPM)')"

if [ "${CPU_FAN_SPEED}" -gt "${TEMP_RED}" ]; then
	TEXT_COLOR='\005{..r}'
elif [ "${CPU_FAN_SPEED}" -gt "${TEMP_YELLOW}" ]; then
	TEXT_COLOR='\005{..y}'
elif [ "${CPU_FAN_SPEED}" -gt "${TEMP_GREEN}" ]; then
	TEXT_COLOR='\005{..g}'
else
	TEXT_COLOR='\005{..b}'
fi
COLOR_RESET='\005{..g}'

printf "${TEXT_COLOR}%'d${COLOR_RESET}\n" ${CPU_FAN_SPEED}
