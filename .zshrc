
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/Scripts/antigen.zsh

antigen bundle git
antigen bundle z
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme spaceship-prompt/spaceship-prompt
antigen apply

alias ip="ipconfig getifaddr en0"
alias d="npm run dev"
alias b="npm run build"
alias vd="vercel dev"
alias p="npx vite preview"
alias c="code ."
alias gc="npx git-cz"

function rn() {
  rm -rf node_modules pnpm-lock.yaml yarn.lock
}

function w() {
  cd ~/work/$1
}

function i() {
  cd ~/i/$1
}

function f() {
  cd ~/forks/$1
}

function t() {
  cd ~/test/$1
}

function clone() {
  git clone $1
}

function unproxy {
  unset ALL_PROXY
}

function proxy {
  export ALL_PROXY="http://127.0.0.1:7890"
}

export ALL_PROXY="http://127.0.0.1:7890"

# pnpm
export PNPM_HOME="/Users/yuyin/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
