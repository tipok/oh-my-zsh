alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

function kubernetes_dashboard_token () {
    kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep kubernetes-dashboard-token | awk '{print $1}')
}

