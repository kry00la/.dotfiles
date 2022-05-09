function git-ammend-now
set -l now (date)
git commit --amend --no-edit --date "(now)"
end
