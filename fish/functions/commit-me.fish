function commit-me
  # requires bat (cat alternative)
  set -l branchName (git branch --show-current)
  set -l ticketNumber (branch-pipeline $branchName)
  echo "$ticketNumber $(bat -p ~/.dotfiles/git/.git-commit-template)" > /tmp/commit-tmp-file
  git commit -t /tmp/commit-tmp-file
end
