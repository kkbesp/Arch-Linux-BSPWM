# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
zinit ice depth=1; zinit light romkatv/powerlevel10k
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

export HISTFILE=~/.zhistory
export HISTSIZE=3000
export SAVEHIST=3000

source .zinit/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

alias merge="xrdb -merge $HOME/.Xresources"
alias ez="$EDITOR $HOME/.zshrc"
alias grep="grep --color=always"
alias ls="ls --color=auto"
alias la="ls -alFh --color=auto"
alias llp="stat -c '%A %a %n' {*,.*}"
alias ll="ls -a --color=auto"
alias l="ls -CF --color=auto"
alias .l="dirs -v"
alias /="cd /"
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......='cd ../../../../..'
alias q="exit"
alias gi="git init"
alias gs="git status"
alias gl="git log --stat --pretty=oneline --graph --date=short"
alias ga="git add --all"
alias ar="cd Documents/Arch-Linux-BSPWM/"
alias vd="cd cd Documents/Void-Linux-BSPWM/"
gac () {
  git add --all
  git commit -am "Update"
  git push
}
alias gr="git remote"
alias gf="git fetch"
alias gpl="git pull"
alias gp="git push"
alias gpm="git push origin master"

alias y="yay"
alias ys="yay -S"
alias yn="yay -S --noconfirm"
alias yl="yay -S --noconfirm --needed - < ~/.pkglist.txt"
alias ysn="yay --noconfirm"
alias yo="yay -S --overwrite='*'"
alias yU="yay -U"
alias yUo="yay -U --overwrite='*'"
alias yc="yay -Sc"
alias ycc="yay -Scc"
alias yy="yay -Syy"
alias yu="yay -Syyu"
alias yun="yay -Syyu --noconfirm"
alias yr="yay -R"
alias yrs="yay -Rs"
alias yrsn="yay -Rsn"
alias yrn="yay -R --noconfirm"
alias ynskip='yay --noconfirm --mflags "--nocheck --skipchecksums --skippgpcheck"'
alias yngpg='yay --noconfirm --gpgflags "--keyserver keys.gnupg.net"'

# распаковать архив не указывая тип распаковщика
function ex {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Использование: ex <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        NAME=${1%.*}
        #mkdir $NAME && cd $NAME
        case "$1" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "ex: '$1' - Не может быть распакован" ;;
        esac
    else
        echo "'$1' - не является допустимым файлом"
    fi
fi
}

# Упаковка в архив командой pk 7z /что/мы/пакуем имя_файла.7z
function pk () {
  if [ $1 ] ; then
    case $1 in
      tbz)       tar cjvf $2.tar.bz2 $2      ;;
      tgz)       tar czvf $2.tar.gz  $2       ;;
      txz)       tar -caf $2.tar.xz  $2       ;;
      tar)       tar cpvf $2.tar  $2       ;;
      bz2)       bzip $2 ;;
      gz)        gzip -c -9 -n $2 > $2.gz ;;
      zip)       zip -r $2.zip $2   ;;
      7z)        7z a $2.7z $2    ;;
      *)         echo "'$1' не может быть упакован с помощью pk()" ;;
    esac
  else
    echo "'$1' не является допустимым файлом"
  fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
