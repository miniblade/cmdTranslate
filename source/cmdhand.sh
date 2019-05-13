#!/bin/bash
cmdlist=$@
echo "数组的元素为: ${cmdlist[@]}"
for cmd in ${cmdlist[@]}
do
	 ret=`man $cmd > "$cmd.txt"`
	echo "sign  $ret"	
done

