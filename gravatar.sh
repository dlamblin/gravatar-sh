#!/bin/bash

# Either echos url (param 1) and a hash of the email (param 2)
# or pipes that that to (param 3) assuming it is a command.
url_with_md5 () {
    if command -v md5 >/dev/null 2>&1
    then
        local md5cmd=md5
    elif command -v md5sum >/dev/null 2>&1
    then
        local md5cmd=md5sum
    else
        echo "I can't find md5 or md5sum"
    fi

    local url=$1
    shift
    local email=$1
    shift
    local t=$(echo "$url"$(echo -n $email|"$md5cmd"))
    if [ "$1" ]
    then
        echo "$t"|"$@"
    else
        echo "$t"
    fi
}

# Either echos a gravatar avatar url of the email (param 1)
# or pipes that url to (param 2) assuming it is a command.
gravatar_avatar () {
    url_with_md5 "https://www.gravatar.com/avatar/" "$@"
}

# Either echos a gravatar profile url of the email (param 1)
# or pipes that url to (param 2) assuming it is a command.
gravatar_profile () {
    url_with_md5 "https://www.gravatar.com/profile/" "$@"
}

gravatar_avatar "$@"
gravatar_profile "$@"

