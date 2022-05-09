function mypr
set -l branchName (git branch --show-current)
gh pr view $branchName -w
end
