. url-with-md5-function.sh
# Either echos a gravatar profile url of the email (param 1)
# or pipes that url to (param 2) assuming it is a command.
gravatar_profile () {
    url_with_md5 "https://www.gravatar.com/profile/" "$1" "$2"
}
