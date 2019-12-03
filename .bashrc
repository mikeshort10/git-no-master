# git add rootDir, commit, and push
git-going () { 
	branch=$(git symbolic-ref --short HEAD);
	message=$1;
	if [ "$#" != "1" ]; then
	    echo "Expected 1 argument, received $#"
	elif [ $branch == "master" ]; then
	    echo "Cannot push directly to $branch. Please choose a different branch."
	else 
		git add .;
		git commit -m "$message";
		git push origin $branch;
	fi
}
