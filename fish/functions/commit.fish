function commit --wraps='git commit -m'
set -l branchName (git branch --show-current)

#
# branch name after '__' identifier e.g MC-404__feature -> MC-404
#

#set -l trimBranchName (string match -r '.+?(?=__)' "$branchName")
git commit -m "$branchName $argv"
end
