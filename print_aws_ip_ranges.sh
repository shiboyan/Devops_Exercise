#!/bin/bash
function help(){
    cat <<- EOF
	    Desc: the script use to print ip for specific region
	    Usage: sh print_aws_ip_ranges.sh "region_name"
            EOF
    exit 0
}
if [ ! -n "$1" ] ;then
    help 
else
    curl https://ip-ranges.amazonaws.com/ip-ranges.json > file
    allregion=`cat file |grep  region |sort -u |awk '{print $NF}' |sed 's/\"//g' |sed 's/,//g'`
    var=$1
    if [[ $allregion =~ $var ]]; then 
        cat file |grep -B 1 region |grep -B 1 $1 |grep "ip_prefix" |awk '{print $NF}' |sed s/,//g |sed s/\"//g
        sum=$(cat file |grep -B 1 region |grep -B 1 $1 |grep "ip_prefix" |awk '{print $NF}' |sed s/,//g |sed s/\"//g |wc -l)
        echo "total is "$sum
     else
        echo "erro invalid region"
        exit -1
     fi
fi

