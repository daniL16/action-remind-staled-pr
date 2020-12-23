#!/bin/bash

GITHUB_API_URI="https://api.github.com"
GITHUB_API_HEADER="Accept: application/vnd.github.v3+json"
GITHUB_REPOSITORY="daniL16/pr-merge-appoved"

body=$(curl -sSL -H "$GITHUB_API_HEADER" "$GITHUB_API_URI/repos/$GITHUB_REPOSITORY/pulls")
pulls=$(echo "$body" | jq --raw-output '.[] | {date_upd: .updated_at, url: .html_url, draft: .draft, state: .state, title: .title } | @base64')
days=1

 for p in $pulls; do
        pull="$(echo "$p" | base64 -d)"
        last_update=$(echo "$pull" | jq --raw-output '.date_upd')
        start_ts=$(date -d $last_update '+%s')
        end_ts=$(date -d'now' '+%s')
        days_since_last_update=$(( ( end_ts - start_ts )/(60*60*24) ))
        if [[ "$days_since_last_update" -ge "$days" ]]; then
           message=$(echo "$pull" | jq --raw-output '(.title + "." + .url)')
	   rocket::sendMessage $message
        fi
 done
