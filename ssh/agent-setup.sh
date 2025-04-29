if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	eval "$(ssh-agent -s)" > /dev/null 2>&1
fi

ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
