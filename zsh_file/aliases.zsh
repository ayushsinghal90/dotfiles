alias l='eza -lah'
alias ls=eza
alias bin='brew install'
alias bup='brew update && brew upgrade && brew cleanup'
alias buin='brew uninstall'

# GIT ALIASES -----------------------------------------------------------------
alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gdev='git checkout dev'
alias gmas='git checkout master'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'


alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch -D'

alias grdev='git checkout dev && git reset --hard origin/dev && git pull origin dev'
alias grmas='git checkout master && git reset --hard origin/master && git pull origin master'

alias ga='git add -p'
alias gaa='git add .'

alias gl=pretty_git_log

alias gcp='git cherry-pick'

alias git-current-branch="git branch | grep \* | cut -d ' ' -f2"
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gec='git status | grep "both modified:" | cut -d ":" -f 2 | xargs nvim -'
alias gcan='gc --amend --no-edit'
