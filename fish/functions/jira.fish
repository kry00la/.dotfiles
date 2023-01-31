function jira

 ################################################################
 ##      open jira issue based from git branch ticket name     ##
 ################################################################

 set -l branchName (git branch --show-current)
 set -l ticketNumber (branch-pipeline $branchName)

 ## WORK_JIRA_URL should be available in conf.d or env of fish 
 set -l url "$WORK_JIRA_URL/browse/$ticketNumber"

 ## open in a browser
 open $url
end
