if status is-interactive
	source "$HOME/.config/sh/env"
	source "$HOME/.config/sh/alias"
	zoxide init fish | source
	set fish_greeting ""
end
