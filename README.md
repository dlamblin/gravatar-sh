# Gravatar urls from the shell
A shell script to take an email address and turn it into a gravatar profile
url or a gravatar avatar url.

This was written on Mac OS X 10.10.4 and assumes there is a command `md5` in
your path.

## Example useage
To echo both urls to the terminal:
```
$ ./gravatar.sh dlamblin+github@gmail.com
https://www.gravatar.com/avatar/e70d89f50bdd84da5892f083c5692372
https://www.gravatar.com/profile/e70d89f50bdd84da5892f083c5692372
$
```
To copy the profile url into the clipboard for pasting somewhere:
```
$ ./gravatar.sh dlamblin+github@gmail.com pbcopy
$ pbpaste 
https://www.gravatar.com/profile/e70d89f50bdd84da5892f083c5692372
$
```
Opens the gravatar and the profile links in your default browser.
```
$ ./gravatar.sh dlamblin@gmail.com xargs open
```

