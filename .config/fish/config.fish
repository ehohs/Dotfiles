set -x EDITOR vim
set GHQ_SELECTOR peco

alias vi 'vim'
alias ev 'vim ~/.vimrc'
alias ef 'vim ~/.config/fish/config.fish'

alias g 'git'
alias ga 'git add .'
alias gc 'git commit -v'
alias gd 'git diff'
alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'
alias gs 'git status -s'

alias l 'ls'
alias ll 'ls -ltr'
alias la 'ls -la'
alias ls 'ls -G -F'
alias ltr 'ls -ltr'

alias grep 'grep --color'

alias mkdir 'mkdir -p'
alias rm 'rm -i'
alias cp 'cp -i'
alias mv 'mv -i'

alias cot 'open -a coteditor'
alias c 'clear'
alias h 'history'

alias cx 'chmod +x'
alias 'c-x' 'chmod -x'

alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

function reload
  source ~/.config/fish/config.fish
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

function cd
  builtin cd $argv; and ls
end

# bobthefish
set -g theme_display_date no
set -g theme_color_scheme dracula
