# Aliases
alias gd       "git diff"
alias gb       "git branch"
alias gs       "git switch"
alias gl       "git log"
alias gp       "git push"
alias gip      "curl http://ifconfig.io"
alias identity "aws sts get-caller-identity"
alias dc       "docker compose"
alias l        "ls -l"
alias v        "nvim"
alias vi       "nvim"
alias vim      "nvim"

# Environment variables
set -x EDITOR vim
set -x LC_CTYPE en_US.UTF-8
set -x LANG en_US.UTF-8
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x AQUA_ROOT_DIR $XDG_DATA_HOME/aquaproj-aqua

# PATH
set -x PATH /opt/homebrew/bin $PATH
set -x PATH $AQUA_ROOT_DIR/bin $PATH
set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths

# No greeting
set fish_greeting

# Open tmux when lanuching terminal
function attach_tmux_session_if_needed
  set ID (tmux list-sessions)
  if test -z "$ID"
    tmux new -s work
    return
  end
end

if test -z $TMUX && status --is-login
    attach_tmux_session_if_needed
end

# Theme
## ayu Mirage: https://github.com/dempfi/ayu
