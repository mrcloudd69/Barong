#!/bin/bash

export KERNELNAME=GBX PAKENTOD

export LOCALVERSION=

export KBUILD_BUILD_USER=MR.CLOUD

export KBUILD_BUILD_HOST=GBXPakentod

export TOOLCHAIN=clang

export DEVICES=lavender

source helper

gen_toolchain

send_msg "⚔️ Mulai membangun ${KERNELNAME} kernel ⚔️"

START=$(date +"%s")

for i in ${DEVICES//,/ }
do 

	build ${i} -oldcam
	build ${i} -newcam

done

END=$(date +"%s")
 
DIFF=$(( END - START ))
