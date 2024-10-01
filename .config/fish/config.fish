if status is-interactive
	source "$HOME/.config/sh/env"
	source "$HOME/.config/sh/alias"
	set fish_greeting ""
	fish_vi_key_bindings
	zoxide init fish | source
end
