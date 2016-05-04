#########################
# Prompt
# 
# 参考：bashプロンプトのカスタマイズ http://www.deftrash.com/blog/archives/2006/05/bash_1.html
# NOTE: 使える変数
#   \u: カレントユーザ名
#   \h: ホスト名(短い)
#   \H: ホスト名(長い)
#   \w: $HOMEからカレントディレクトリへのパス
#   \W: カレントディレクトリ名
#   \d: "Fri May 26" みたいな形式の日付
#   \t: hh:MM:ss形式の時刻(24h)
#   \T: hh:MM:ss形式の時刻(12h)
#   \n: 改行
#   \S: rootなら#、その他なら$を表示する
#########################
source /usr/local/etc/bash_completion
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_STATESEPARATOR='|'
export PS1="\n[&:\j] \u: \[\e[00;34m\]\w\[\e[0m\]\[\e[00;35m\]\$(__git_ps1)\[\e[0m\]\n( ˘ω˘).oO( "

#########################
# Override command
# 
# http://natelandau.com/my-mac-osx-bash_profile/
#########################
alias cp='cp -iv'             # Preferred 'cp' implementation
alias mv='mv -iv'             # Preferred 'mv' implementation
alias rm='rm -iv'             # Preferred 'rm' implementation
alias mkdir='mkdir -pv'       # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'         # Preferred 'ls' implementation
cd() { builtin cd "$@"; ll; } # Always list directory contents upon 'cd'
alias less='less -FSRXc'      # Preferred 'less' implementation

#########################
# History
#########################
# 連続した重複コマンドを履歴に残さない(ignoredups,ignorespace,erasedups)
export HISTCONTROL=ignoreboth
export HISTIGNORE="fg*:bg*:history*:cd*:jobs*"
export HISTSIZE=10000
export HISTTIMEFORMAT='%Y%m%d %T'

#########################
# Development > Homebrew
#########################
HOMEBREW_CASK_APP_DIR=/Applications
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export HOMEBREW_CASK_OPTS=--appdir=$HOMEBREW_CASK_APP_DIR
export HOMEBREW_MAKE_JOBS=4
alias brew="env PATH=$PATH \brew"

#########################
# Development > Docker
#########################
if ! docker-machine status | grep Running > /dev/null; then
    docker-machine start default
fi
eval "$(docker-machine env default)"

#########################
# Development > Git
#########################
export PATH="$(brew --prefix git)/share/git-core/contrib/diff-highlight:$PATH"

#########################
# Programming > Any env
#########################
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

#########################
# Programming > Bash
#########################
export LS_COLORS="no=00:fi=00:di=32:ln=36"

# Require Bash 4.0+
peco_ghq() {
    local selected
    selected="$(ghq list -p | peco --null)"
    if [ -n "$selected" ]; then
        cd $selected
    fi
}
# http://qiita.com/comutt/items/f54e755f22508a6c7d78
peco_select_history() {
    local l=$(HISTTIMEFORMAT= history | cut -d" " -f4- | tac | sed -e 's/^\s*[0-9]*    \+\s\+//' | peco --query "$READLINE_LINE")
    $l
}

bind -x '"\C-]": peco_ghq'
bind -x '"\C-r": peco_select_history'

#########################
# Programming > Go
#########################
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

#########################
# Programming > PHP
#########################
export PATH=$HOME/.composer/vendor/bin:$PATH
