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
  alias ls "exa --icons --group --header --group-directories-first"
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
alias explorer explorer.exe
command -qv nvim && alias vim nvim
alias zz "zellij -l compact"
alias zad "zellij -l /home/don/repo/don.nguyen/ad-zellij-layout.kdl"
alias powershell "pwsh.exe"


# ad short alias
alias ssh-osim "ssh -XY ad@10.100.10.107"
alias ssh-simground "ssh ad@10.100.10.101"
alias ssh-ksat "ssh don.nguyen@ksat-workstation-01.adi.space"
alias ssh-aws-daytoday "ssh ubuntu@ops-daytoday-01.adi.space"
alias ssh-workstation-02 "ssh ubuntu@ops-workstation-02.adi.space"

# ad addresses
set -gx OSIM 10.100.10.107
set -gx SIMGROUND 10.100.10.101
set -gx EMOPUP 10.100.10.115
set -gx DAYTODAYAWS ops-daytoday-01.adi.space
set -gx WORKSTATION02 ops-workstation-02.adi.space

# ad env variables
set -gx ADWIKI /home/don/repo/wikis
set -gx OPS /home/don/repo/ops_working
set -gx GSREPO /home/don/repo/ground_software
set -gx AITREPO /home/don/repo/ait

set -gx KEYS_INI /home/don/repo/ait/SUPPORT/keys.ini
set -gx CMD_TLM_PATH /home/don/repo/ait/SYSTEM/MAX_GDS_DATA
set -gx SATDB_CSV_PATH /home/don/repo/ait/SUPPORT/ait_sat_db.csv
set -gx SECRETS_INI /mnt/ops_share/secrets.ini
set -gx APIBUILD DEV_LOCAL

set -gx MAX_GDS_POSTGRES_DB_HOST engineering-db.adi.space
set -gx MAX_GDS_POSTGRES_DB_USER gds_client
set -gx MAX_GDS_POSTGRES_DB_PASSWD gds_client

set -gx PYTHONWARNINGS ignore:Unverified

set -gx EDITOR nvim
# Pyenv
set -gx PYENV_ROOT ~/.pyenv

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.pyenv/bin $PATH
set -gx PATH ./node_modules/.bin $PATH
set -gx PATH "/mnt/c/Program Files/PowerShell/7/" $PATH

# pyenv init - | source


if status is-interactive
    # Commands to run in interactive sessions can go here
end
