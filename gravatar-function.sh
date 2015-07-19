. url-with-md5-function.sh
# Either echos a gravatar avatar url of the email (param 1)
# or pipes that url to (param 2) assuming it is a command.
gravatar_avatar () {
    url_with_md5 "https://www.gravatar.com/avatar/" "$1" "$2"
}
