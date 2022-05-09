function push --wraps='git push origin'
set -l branchName (git branch --show-current)
git push --set-upstream origin $branchName
end
