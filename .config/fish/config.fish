set fish_greeting ""

#set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
if type -q exa
  ls "exa --icons --group --header --group-directories-first"
else
  alias ls "ls -p -G"
  alias la "ls -A"
  alias ll "ls -l"
  alias lla "ll -A"
end
alias clear "clear -x"
alias g git
alias p3 python3
alias cd.. "cd .."
alias clear "clear -x"
alias explorer explorer.exe
command -qv nvim && alias vim nvim

set -gx EDITOR nvim
# Pyenv
set -gx PYENV_ROOT ~/.pyenv

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.pyenv/bin $PATH

pyenv init - | source


if status is-interactive
    # Commands to run in interactive sessions can go here
end
