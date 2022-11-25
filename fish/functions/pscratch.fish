function pscratch --argument prefix
        set -l local_date (date '+%Y-%m-%d')
        if test -n "$prefix"
           vim ~/Personal/scratch/$prefix-$local_date.md
        else
           echo "Please insert an identifier, (e.g: startup-idea -> startup-idea-2022-11-25.md"
        end
end
