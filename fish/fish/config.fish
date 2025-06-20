if status is-interactive
    # Disable syntax highlighting except for commands
    for color in (set | grep -Eo '^fish_color_[a-zA-Z0-9_]+')
        set $color normal
    end
    set fish_color_autosuggestion '#6F6E69'
    set fish_color_error red

    # Disable greeting
    set fish_greeting ""

    # Abbreviations
    abbr -a hs      'git status -s'
    abbr -a hd      'git diff'
    abbr -a hds     'git diff --staged'
    abbr -a ha      'git add -p'
    abbr -a haa     'git add -A'
    abbr -a hc      'git commit'
    abbr -a hca     'git commit --amend'
    abbr -a hr      'git restore -p'
    abbr -a hra     'git restore .'
    abbr -a hrs     'git restore --staged -p'
    abbr -a hrsa    'git restore --staged .'
    abbr -a hsw     'git switch'
    abbr -a hco     'git checkout'
    abbr -a hb      'git branch'
    abbr -a hp      'git push'
    abbr -a hpf     'git push --force'
    abbr -a hpl     'git pull'
    abbr -a hrb     'git rebase'
    abbr -a hcp     'git cherry-pick'
    abbr -a hss     'git stash save --include-untracked'
    abbr -a hsa     'git stash apply'
    abbr -a hsd     'git stash drop'
    abbr -a hsl     'git stash list'
    abbr -a hsp     'git stash pop'
    abbr -a hl      'git log --oneline --graph'
    abbr -a hla     'git log --oneline --graph --all'


    abbr -a vim     'nvim'
    abbr -a fupd    'flatpak update'
    abbr -a upd     'sudo dnf update && sudo dnf upgrade'

    # Docker
    abbr -a dcu     'docker compose up'
    abbr -a dcd     'docker compose down'
    abbr -a dcl     'docker compose logs -f'

    # Python
    abbr -a pip     'uv pip'
    abbr -a ve      'uv venv'
    abbr -a va      'source .venv/bin/activate.fish'
    abbr -a pca     'pre-commit run --all-files'

    # Auto activate virtual env when a new shell is started
    if test -d .venv -a -f .venv/bin/activate.fish
        source .venv/bin/activate.fish
    end
end
