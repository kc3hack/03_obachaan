#!/bin/bash

URL="https://maps.googleapis.com/maps/api/place/textsearch/json";
QUERY=("海遊館" "USJ" "万博記念公園" "通天閣" "大阪城" "住吉大社" "あべのハルカス" "グランフロント大阪" "なんばグランド花月" "嵐山" "清水寺" "金閣寺" "伏見稲荷大社");
KEY="AIzaSyCSwvdYuqxuEK57xxz6eZjYdjvmzfDsqhM";
DIR=".";

for((i = 0; i < ${#QUERY[@]}; i++)){
	curl -o ${QUERY[i]}.json $URL?query=${QUERY[i]}\&key=$KEY\&language=ja;
}
