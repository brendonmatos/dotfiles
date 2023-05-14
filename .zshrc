bindkey "[D" backward-word
bindkey "[C" forward-word

source ~/antigen.zsh

antigen bundle git
antigen bundle npm
antigen bundle colorize
antigen bundle github
antigen bundle brew
antigen bundle osx
antigen bundle bundler
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme denysdovhan/spaceship-prompt

antigen bundle kiurchv/asdf.plugin.zsh
antigen bundle desyncr/auto-ls
antigen apply

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

eval $(thefuck --alias)

alias gco="git checkout"
alias gci="git commit"

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

if [ `machine` != arm64e ]; then
  arch -arm64 /bin/zsh
fi

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd


. /opt/homebrew/opt/asdf/libexec/asdf.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
