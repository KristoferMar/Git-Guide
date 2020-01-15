# Git-Guide
Below we find all usefull git commands:

$ git checkout <feature_branch> : Switch to another branch <br>

$ git branch -a : View all available branches <br>

### Rename github branch
1. Rename your local branch.
If you are on the branch you want to rename:

1
git branch -m new-name
If you are on a different branch:

1
git branch -m old-name new-name
2. Delete the old-name remote branch and push the new-name local branch.

1
git push origin :old-name new-name
3. Reset the upstream branch for the new-name local branch.
Switch to the branch and then:

1
git push origin -u new-name
