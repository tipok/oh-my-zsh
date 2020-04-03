alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

function kubernetes_dashboard_token () {
    kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep kubernetes-dashboard-token | awk '{print $1}')
}

function git_diff () {
    local branch_to_compare=$1
    local current_branch=$(git rev-parse --abbrev-ref HEAD)
    git diff $branch_to_compare..$current_branch
}
