function jira

 ################################################################
 ## with this function, git branch naming convenstion would be ##
 ## <prefix>/<ticket-number>__<description>                    ##
 ################################################################

 set -l branchName (git branch --show-current)
 ## extract after prefix
 string match -rq '(?<nonSlash>[^\/]+$)' $branchName
 ## extract before description
 string match -rq '(?<ticketNumber>^[^__]+)' $nonSlash
 
 ## WORK_JIRA_URL should be available in conf.d or env of fish 
 set -l url "$WORK_JIRA_URL/browse/$ticketNumber"

 open $url
end
