function commit --wraps='git commit -m'
set -l branchName (git branch --show-current)
set -l ticketNumber (branch-pipeline $branchName)

git commit -m "$ticketNumber $argv"
end
