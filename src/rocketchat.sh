#!/usr/bin/env bash

ROCKET_CHAT_URL="https://chat.bulevip.com"

rocket::sendNotification(){
        local -r msg="$1"
	echo "$msg"
	#curl -H "Content-type:application/json" "{$ROCKET_CHAT_URL}/hooks/{$ROCKET_CHAT_HOOK}" -d '{"text": "{$msg}", "username": "Github-Bot"}'
}
