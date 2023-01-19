function jira

 ################################################################
 ## with this function, git branch naming convenstion would be ##
 ## <prefix>/<ticket-number{4 digit value+}__<description>     ##
 ################################################################

 set -l branchName (git branch --show-current)

 ## start of filter pipeline below ##

 ## extract after prefix
 string match -rq '(?<nonSlash>[^\/]+$)' $branchName
 ## extract before description
 string match -rq '(?<maybeTicketNumber>^[^__]+)' $nonSlash
 ## extract everything after a 4 digit number
 string match -rq '(?<ticketNumber>(?<=).*.[0-9]{4}+)' $maybeTicketNumber

 ## end of filter pipeline ##
 
 ## WORK_JIRA_URL should be available in conf.d or env of fish 
 set -l url "$WORK_JIRA_URL/browse/$ticketNumber"
 
 ## open in a browser
 open $url
end
