if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end


starship init fish | source
status --is-interactive; and /opt/homebrew/bin/rbenv init - fish | source
