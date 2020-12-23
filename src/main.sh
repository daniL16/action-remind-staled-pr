#!/usr/bin/env bash

source "$PR_SIZE_LABELER_HOME/src/github.sh"
source "$PR_SIZE_LABELER_HOME/src/rocketchat.sh"

main(){
   github::get_unactive_pr $2 $3
   exit $?
}
