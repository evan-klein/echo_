#!/bin/sh

# Linux
if [ `uname` = "Linux" ]; then
	CONSOLE_RESET="\e[0m"
	CONSOLE_SUCCESS="\e[92m"
	CONSOLE_DEBUG="\e[93m"
	CONSOLE_ERROR="\e[1;91m"
	CONSOLE_SPECIAL="\e[1;94m"
# macOS
elif [ `uname` = "Darwin" ]; then
	CONSOLE_RESET="\033[m"
	CONSOLE_SUCCESS="\033[0;32m"
	CONSOLE_DEBUG="\033[0;33m"
	CONSOLE_ERROR="\033[1;91m"
	CONSOLE_SPECIAL="\033[1;95m"
# 🤷🏻‍♂️
else
	CONSOLE_RESET=""
	CONSOLE_SUCCESS=""
	CONSOLE_DEBUG=""
	CONSOLE_ERROR=""
	CONSOLE_SPECIAL=""
fi

console_log () {
	CONSOLE_DATE=`date "+%Y-%m-%d %T %Z"`
	echo "${CONSOLE_DATE} - ${1}"
	if [ "$2" != "" ]; then
		sleep $2
	fi
}

console_success () {
	CONSOLE_DATE=`date "+%Y-%m-%d %T %Z"`
	echo "${CONSOLE_SUCCESS}${CONSOLE_DATE} - ${1}${CONSOLE_RESET}"
	if [ "$2" != "" ]; then
		sleep $2
	fi
}

console_debug () {
	CONSOLE_DATE=`date "+%Y-%m-%d %T %Z"`
	echo "${CONSOLE_DEBUG}${CONSOLE_DATE} - ${1}${CONSOLE_RESET}"
	if [ "$2" != "" ]; then
		sleep $2
	fi
}

console_error () {
	CONSOLE_DATE=`date "+%Y-%m-%d %T %Z"`
	echo "${CONSOLE_ERROR}${CONSOLE_DATE} - ${1}${CONSOLE_RESET}" >&2
	if [ "$2" != "" ]; then
		sleep $2
	fi
}

console_special () {
	CONSOLE_DATE=`date "+%Y-%m-%d %T %Z"`
	echo "${CONSOLE_SPECIAL}${CONSOLE_DATE} - ${1}${CONSOLE_RESET}"
	if [ "$2" != "" ]; then
		sleep $2
	fi
}