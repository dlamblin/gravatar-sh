# Either echos url (param 1) and a hash of the email (param 2)
# or pipes that that to (param 3) assuming it is a command.
url_with_md5 () {
    local t=$(echo "$1"$(echo -n $2|md5))
    if [ "$3" ]
    then
        echo "$t"|$3
    else
        echo "$t"
    fi
}
