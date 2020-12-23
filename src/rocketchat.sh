#!/usr/bin/env bash

ROCKET_CHAT_URL="https://chat.bulevip.com"

rocket::sendNotification(){
        local -r $message=$2
	local -r prs=$(github::get_unactive_pr)
	curl -H "Content-type:application/json" "{$ROCKET_CHAT_URl}hooks/{$ROCKET_CHAT_HOOK} -d '{"text": "$message", "username": "Github-Bot"}'
}
