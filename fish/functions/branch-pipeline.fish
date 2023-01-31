function branch-pipeline --description extract task number from branch name
  # param: git branch name

  ################################################################
  ## with this function, git branch naming convenstion would be ##
  ## <prefix>/<ticket-number{4 digit value+}>__<description>    ##
  ##    e.g projectNano/XXX-1234__cool-ticket-to-work-on        ##
  ################################################################

  ## start of filter pipeline below ##
  ## extract after prefix
  string match -rq '(?<nonSlash>[^\/]+$)' $argv[1]

  ## extract description 
  string match -rq '(?<maybeTicketNumber>^[^__]+)' $nonSlash

  ## extract everything after a 4 digit number
  string match -rq '(?<ticketNumber>(?<=).*.[0-9]{4}+)' $maybeTicketNumber
  echo $ticketNumber
end
