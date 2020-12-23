#!/usr/bin/env bash

ROCKET_CHAT_URL="https://chat.bulevip.com"

rocket::sendNotification(){
	data="{text":""$1"","username": "Github Bot"}"
	echo $data
	curl -H "Content-type:application/json" "{$ROCKET_CHAT_URL}/hooks/{$ROCKET_CHAT_HOOK}" -d '$data'
}
