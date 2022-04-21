# Base: Simple
function fish_prompt
    set -l symbol ' $ '
    set -l color $fish_color_cwd

    set_color $color
    echo -n (prompt_pwd)
    set_color normal

    echo -n $symbol
end
