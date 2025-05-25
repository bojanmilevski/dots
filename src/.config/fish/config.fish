if status is-interactive
  source "$HOME/.config/sh/env"
  source "$HOME/.config/sh/alias"

  set fish_greeting ""

  fish_vi_key_bindings

  zoxide init fish | source

  # atuin init fish | source
  # atuin import fish > /dev/null 2>&1
end

function fish_prompt
  string join '' -- (set_color blue) (prompt_pwd) (set_color white) (fish_git_prompt) ' '
end
