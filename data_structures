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


