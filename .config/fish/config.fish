set -g fish_greeting

if test -f /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv | source
end

if command -q go
    fish_add_path (go env GOPATH)/bin
end

if status is-interactive
    if command -q starship
        starship init fish | source
    end
end
