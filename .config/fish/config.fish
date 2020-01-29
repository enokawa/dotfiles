# aliases
alias gd       "git diff"
alias gb       "git branch"
alias gl       "git log"
alias gp       "git push"
alias v        "vim"
alias gip      "curl http://ifconfig.io"
alias identity "aws sts get-caller-identity"
alias be       "bundle exec"
alias dc       "docker-compose"
alias k        "kubectl"


# Complete aws-cli

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws2_completer | sed \'s/ $//\'; end)'
