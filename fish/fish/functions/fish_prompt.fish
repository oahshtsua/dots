function fish_prompt
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_char_upstream_ahead ' ↑'
    set -g __fish_git_prompt_char_upstream_behind ' ↓'

    set dir (string replace -- $HOME '~' $PWD)
    echo
    printf '%s' (set_color blue --bold; basename $dir; set_color normal) (fish_git_prompt) ' $ '
end
