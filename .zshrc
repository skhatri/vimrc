export PS1="%F{blue}%1~%f%m %#"
export PROMPT="%(?.%B%F{17}%1~%b.%F{199}%1~)%f %B%F{160}→%f%b "
export RPROMPT="%B%F{blue}%*"

alias cgrep="grep -E --color"


alias k=kubectl
alias d=docker
alias p=pulumi
alias venv='f() { name=$1; if [[ -z $name ]]; then echo name is required; exit 1; fi; if [[ ! -d ~/.venv/$name ]]; then python3 -m venv ~/.venv/$name; fi; source ~/.venv/$name/bin/activate};f'

