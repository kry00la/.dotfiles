function remote-file --d open a file base from remote url
   if test -n "$argv[1]"
     set -l remote (git remote show origin | grep Fetch.URL)
     set -l branch (git branch --show-current)

     # pipeline extracting url that can be use to open a file in github
     # NOTE: that this script currently support ssh connection
     # example:
     # git@github.com:kry00la/.dotfiles.git -> github.kray00la/.dotfiles
     #  [1]                [2]          [3]

     string match -rq '(?<removedPrefix>[^@]*$)' $remote-url #removed (1) from the example above
     string match -rq '(?<removedSuffix>.*(?=.git))' $removedPrefix #removed (3) from the example above
     set -l replacedColonWithSlashes (string replace -a ':' '/' $removedSuffix) # replace all ':' -> '/' from the example above

     open "https://$replacedColonWithSlashes/blob/$branch/$argv[1]"
   else
     echo "please input an argument"
   end
end
