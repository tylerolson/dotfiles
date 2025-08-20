if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"

fish_add_path --path $HOME/go/bin

starship init fish | source
