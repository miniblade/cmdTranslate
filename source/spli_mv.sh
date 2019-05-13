#!/bin/bash
echo $1
split -b 30k -d ${1}.txt $1
ls |grep -e  ${1}0 -e ${1}1|xargs -I % mv % %.txt
echo `ls|grep $1`
