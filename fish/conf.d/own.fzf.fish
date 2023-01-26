fzf_configure_bindings --git_log=\cg --directory=\cf --git_status=\ck
set fzf_directory_opts --bind "enter:execute($EDITOR {} &> /dev/tty)"
set -x fzf_git_log_opts --preview='git show {1} | delta --no-gitconfig'
