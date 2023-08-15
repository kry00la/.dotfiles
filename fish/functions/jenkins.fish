function jenkins
    set -l project (git remote get-url origin | xargs basename -s .git)
    set -l url "$WORK_JENKINS_URL/$project/job/master"
    open $url
end
