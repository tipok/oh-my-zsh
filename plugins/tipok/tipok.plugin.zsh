alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

function kubernetes_dashboard_token () {
    kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep kubernetes-dashboard-token | awk '{print $1}')
}

function git_diff () {
    local branch_to_compare=$1
    local current_branch=$(git rev-parse --abbrev-ref HEAD)
    git diff $branch_to_compare..$current_branch
}

function mov2gif () {
    local mov_file=$1
    local output_file=${2:-'out.gif'}
    ffmpeg -i $mov_file -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $output_file
}

function doom-sync () {
    ~/.emacs.d/bin/doom sync
}

function doom-update () {
    local p=$(pwd)
    cd ~/.emacs.d
    git pull --ff-only
    doom-sync
    ~/.emacs.d/bin/doom sync -u
    cd $p
}

function zsh-update () {
    local p=$(pwd)

    cd ~/.oh-my-zsh
    git pull --ff-only
    cd ~/.zsh/pure
    git pull --ff-only
    source ~/.zshrc
    cd $p
}
