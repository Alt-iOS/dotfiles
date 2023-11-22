if status is-interactive
    atuin init fish --disable-up-arrow | source
end

if uname -m | grep -q arm64
    eval (/opt/homebrew/bin/brew shellenv)
else
    eval (/usr/local/bin/brew shellenv)
end

complete -f -c dotnet -a "(dotnet complete (commandline -cp))"

starship init fish | source

# load_nvm >/dev/null
zoxide init fish | source

status --is-interactive; and /opt/homebrew/bin/rbenv init - fish | source
