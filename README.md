# Git-Guide
Below we find all usefull git commands:

$ git checkout <feature_branch> : Switch to another branch <br>

$ git branch -a : View all available branches <br>

### Delete github branch 

Delete branch locally <br>
$ git branch -d localBranchName

Delete branch remotely <br>
$ git push origin --delete remoteBranchName

### Rename github branch
1. Rename your local branch.
If you are on the branch you want to rename:

$ git branch -m new-name <br>
If you are on a different branch:

$ git branch -m old-name new-name

2. Delete the old-name remote branch and push the new-name local branch. <br>
$ git push origin :old-name new-name

3. Reset the upstream branch for the new-name local branch. <br>
Switch to the branch and then:

$ git push origin -u new-name
