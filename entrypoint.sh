#!/bin/sh

OUTPUT=${1:-/data/bmon.out}
INTERFACES=${2:-eth*,wlan*}
DURATION=${3:-600}

uptime > ${OUTPUT}
timeout ${DURATION} bmon -o format:fmt='$(element:name)\tRX bytes: $(attr:rx:bytes)\tTX bytes: $(attr:tx:bytes)\tBytes Rate:\tRX $(attr:rxrate:bytes)\tTX $(attr:txrate:bytes)\n' -p ${INTERFACES} >> ${OUTPUT}
uptime >> ${OUTPUT}
