# .zshrc

##############
### Export ###
##############

# Terminalの出力を変更
export PS1="%c $ "

# Go
export PATH="$(go env GOPATH)/bin:$PATH"

# aqua
export PATH="$(aqua root-dir)/bin:$PATH"

#####################
### External Tool ###
#####################

# mise
eval "$(mise activate zsh)"

###############
### Aliases ###
###############

# クリア
alias cl='clear'

# 履歴表示
alias hi='history'

# ファイル開く
alias c.='code .'
alias c='code'
alias o.='open .'
alias o='open'

# 親ディレクトリに移動
alias ..='cd ..'

# 隠しファイルも含めて全表示
alias la="ls -a"

# 権限・隠しファイルを全表示
alias ll='ls -la'

# Copilot CLI
alias cop="copilot --allow-tool 'write'"

######################
### Local Settings ###
######################

# Load local settings if exists
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi
