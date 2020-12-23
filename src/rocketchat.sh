#!/usr/bin/env bash

ROCKET_CHAT_URL="https://chat.bulevip.com"

rocket::sendNotification(){
        local -r $message='test'
	local -r prs=$(github::get_unactive_pr)
	echo $prs
	curl -H "Content-type:application/json" "{$ROCKET_CHAT_URl}/hooks/{$ROCKET_CHAT_HOOK}" -d '{"text": "$message", "username": "Github-Bot"}'
}
