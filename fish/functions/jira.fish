function jira

 ################################################################
 ## with this function, git branch naming convenstion would be ##
 ## <prefix>/<ticket-number{4 digit value+}__<description>     ##
 ################################################################

 set -l branchName (git branch --show-current)
 set -l ticketNumber (branch-pipeline $branchName)

 ## WORK_JIRA_URL should be available in conf.d or env of fish 
 set -l url "$WORK_JIRA_URL/browse/$ticketNumber"

 ## open in a browser
 open $url
end
