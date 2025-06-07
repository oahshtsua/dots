# Git Aliases
alias ha='git add -p'
alias haa='git add -A'
alias hc='git commit'
alias hca='git commit --amend'
alias hs='git status -s'
alias hp='git push'
alias hpf='git push --force'
alias hpl='git pull'
alias hb='git switch -c'
alias hsw='git switch'
alias hd='git diff'
alias hds='git diff --staged'
alias hl='git log --oneline --graph'
alias hla='git log --oneline --graph --all'
alias hsa='git stash apply'
alias hsd='git stash drop'
alias hsl='git stash list'
alias hsp='git stash pop'
alias hss='git stash save --include-untracked'
alias hcp='git cherry-pick'
alias hcl='git clean'
alias hrb='git rebase'
alias hr='git restore -p'
alias hrs='git restore --staged -p'


# Python Aliases
alias pip='uv pip'
alias pve='uv venv'
alias pva='source .venv/bin/activate'

# General Stuff
alias encrypt='gpg -c --no-symkey-cache --cipher-algo AES256'
