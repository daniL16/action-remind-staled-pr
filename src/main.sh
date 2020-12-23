#!/usr/bin/env bash

source "$PR_SIZE_LABELER_HOME/src/github.sh"
source "$PR_SIZE_LABELER_HOME/src/rocketchat.sh"

main(){
   
   export GITHUB_TOKEN="$1"
   export ROCKET_CHAT_TOKEN="$2"
   export INACTIVE_DAYS="$3"

   rocket::sendNotification $4

   exit $?
}
