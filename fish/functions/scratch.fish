function scratch -a prefix
	set -l local_date (date '+%Y-%m-%d')
	if test -n "$prefix"
		vim ~/Workstation/scratch/$prefix-$local_date.md
	else
		echo "Please insert an identifier"
	end
end
