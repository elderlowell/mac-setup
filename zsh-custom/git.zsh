alias ga="git add ."
alias gc="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gcm="checkoutMainBranch; git pull"
alias ac="git add .; git commit -m"

function checkoutMainBranch () {
  if [ -n "$(git branch --list master)" ]; then
    git checkout master
  elif [ -n "$(git branch --list main)" ]; then
    git checkout main
  else
    git checkout develop
  fi
}