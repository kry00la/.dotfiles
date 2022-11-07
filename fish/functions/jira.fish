function jira
 set -l branchName (git branch --show-current)
 ## WORK_JIRA_URL should be available in conf.d of fish 
 set -l url "$WORK_JIRA_URL/browse/$branchName"
 open $url
end
