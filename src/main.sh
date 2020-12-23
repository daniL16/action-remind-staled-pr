#!/usr/bin/env bash

source "$PR_SIZE_LABELER_HOME/src/github.sh"
source "$PR_SIZE_LABELER_HOME/src/rocketchat.sh"

main(){
   
   export GITHUB_TOKEN="$1"
   export ROCKET_CHAT_HOOK="$2"
   export INACTIVE_DAYS="$3"

   github::get_unactive_pr

   exit $?
}
