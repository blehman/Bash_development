#!/usr/bin/env bash
#################
echo $(date)
dt=$(date +%Y%m%d_%H%M)

#################
# list
#################
 
#--create:
declare -a pub_list=(twitter tumblr disqus fsq wp-com wp-org)

#--assign:
list_items=$(echo ${pub_list[@]})
my_item=${pub_list[5]}

#--reference:
echo ${pub_list[@]}
echo ${pub_list[5]}

#--loop:
for pub in "${pub_list[@]}"; do
    echo "---------------------------------"
    echo "$pub"
done

#################
# dictionary
#################

#--create:
declare -A twitter_handle

#--assign:
twitter_handle["jrmontague"]=jrmontag
twitter_handle["jkobl"]=JeffAKolb
twitter_handle["shendrickson"]=DrSkippy27
twitter_handle["blehman"]=WordCrank

#--reference:
echo ${twitter_handle["jrmontague"]}

#--loop:
for i in "${!twitter_handle[@]}"; do
    echo "key: $i"
    echo "value: ${twitter_handle[$i]}"
done

################
# date object
################

#--create range:
start_date="2014-01-09 22:00:00";  
end_date="2014-01-10 22:00:00";  

#--create date objects:
current=$(date -d "${start_date:0:4}${start_date:5:2}${start_date:8:2} ${start_date:11:2}")
end=$(date -d "${end_date:0:4}${end_date:5:2}${end_date:8:2} ${end_date:11:2}")

#--loop:
while [ "$end" != "$current" ];do
    path=$(date -d "$current" +%Y%m%d.%H)
    year="${path:0:4}"
    mnth="${path:4:2}"
    day="${path:6:2}"
    hour="${path:9:2}"
    echo $path
    current=$(date -d "$current +1 hours")
done


