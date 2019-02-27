#!/bin/bash

URL="https://maps.googleapis.com/maps/api/place/textsearch/json";
QUERY=("姫路城" "城崎温泉" "有馬温泉" "平安神宮" "八坂神社" "平等院" "東大寺" "奈良公園");
KEY="APIKEY";
DIR=".";

for((i = 0; i < ${#QUERY[@]}; i++)){
	curl -o ${QUERY[i]}.json $URL?query=${QUERY[i]}\&key=$KEY\&language=ja;
}
