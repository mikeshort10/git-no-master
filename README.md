## What this script does

This script will:
- stage all your changes, i.e. `git add .`
- commit your changes with a message, i.e. `git commit -m ${command_line_argument}` 
- push changes to your repository, i.e. `git push origin ${current_git_branch}`

This script will also throw an error if you try to push directly to master. You must instead push to a different branch and merge that with master directly on GitHub, GitLab, etc.

## How to use it

0) Make sure you're using a bash shell.

1) Download the .bashrc file from this repo and add it to your root directory. If you already have a .bashrc file, simply copy and paste the code.

2) Open a terminal and run `source .bashrc` from your root directory.

3) `cd` into the directory with the git code you want to update.

4) Run `git-no-master ${commit_message}` in the command line. Examples, `git-no-master "initial commit"`.

All set! The script gets your current branch and automatically pushes to that branch on the origin remote, unless you're on the master branch.

## Notes
- This requires setting up the tracking reference initially, i.e. `git push -u origin ${branch_name}`. This is intended to prevent creating new branches on the repo by accident. To allow this, simply replace `git push origin` with `git push -u origin` in source code.

- This pushes to the standard origin remote. If you would like to push to a different remote, simply change `git push origin` to `git push ${new_remote}`.
