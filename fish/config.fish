if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end
if uname -m | grep -q arm64
    eval (/opt/homebrew/bin/brew shellenv)
else
    eval (/usr/local/bin/brew shellenv)
end
complete -f -c dotnet -a "(dotnet complete (commandline -cp))"
starship init fish | source
status --is-interactive; and /opt/homebrew/bin/rbenv init - fish | source
