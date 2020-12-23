#!/usr/bin/env bash

ROCKET_CHAT_URL="https://chat.bulevip.com"

rocket::sendNotification(){
	msg="$1"
	data="{\"text\":\"${msg}\",\"username\": \"Github Bot\"}"
	echo $data
	curl -H "Content-type:application/json" "{$ROCKET_CHAT_URL}/hooks/{$ROCKET_CHAT_HOOK}" -d '$data'
}
