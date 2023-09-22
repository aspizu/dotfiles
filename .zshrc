source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle reobin/typewritten@main
antigen bundle Aloxaf/fzf-tab
antigen apply

HISTFILE=~/.zsh_history
SAVEHIST=65536
HISTSIZE=65536
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=black"

zstyle ':completion:*' menu yes select

bindkey "^[[1;5D" backward-word 
bindkey "^[[1;5C" forward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line


alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

alias ls='exa --icons' # pacman -S exa
alias ll='ls -l --no-permissions --no-user'
alias la='ls -a'
alias lla='ll -a'
alias lt='ls -TL=3'
alias wifi='iwctl station wlan0'
alias hx=helix
alias rg=ranger

function tw {
  turbowarp-desktop "$@" &> /dev/null & disown
}

# alias codium='codium --enable-features=UseOzonePlatform --ozone-platform=wayland'

function onsave {
  set +e
  CHECK=null
  while true; do
    RECHECK=$(stat -c %Y $1)
    if [ $RECHECK != $CHECK ]; then
      CHECK=$RECHECK
      bash -c "$2"
    fi
  done
}

function fan {
  if [ $1 = "on" ]; then
    sudo bash -c 'echo 0 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[:print:]]*/pwm1_enable'
  elif [ $1 = 'off' ]; then
    sudo bash -c 'echo 2 > /sys/devices/platform/asus-nb-wmi/hwmon/hwmon[[:print:]]*/pwm1_enable'
  fi
}
alias vexture='python ~/Projects/vexture/vexture '
unsetopt AUTO_CD
alias sb2gs='python -m sb2gs'
alias cpp='clang -Werror -Wall -lstdc++ '
alias cc='clang -Werror -Wall '
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ::='python -m gptutil '

function ::sh {
  :: sh "$(history | tail -n 10)" "$@"
}

# source "$HOME/.cargo/env"
unsetopt PROMPT_SP # https://github.com/vercel/hyper/issues/2144#issuecomment-326741620
alias cc='clang -Werror -Weverything -Wno-declaration-after-statement -Wno-unsafe-buffer-usage -Wno-padded -Wno-switch-enum -Wno-unused-parameter -Ofast'