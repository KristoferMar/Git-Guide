<h3 class="subsubTitleSection">Git-Guide</h3>

<h3 class="subsubTitleSection">Branches</h3>
Below we find all usefull git commands:

$ git checkout <feature_branch> : Switch to another branch <br>
$ git checkout -b <new_branch_name> : Creates and Swiches to new branch <br>

$ git branch -a : View all available branches <br>

<h3 class="subsubTitleSection">Delete github branch</h3>
Delete branch locally <br>
$ git branch -d localBranchName

Delete branch remotely <br>
$ git push origin --delete remoteBranchName

<h3 class="subsubTitleSection">Rename github branch</h3>
1. Rename your local branch.
If you are on the branch you want to rename: <br>
<i>git branch -m new-name </i> <br>

If you are on a different branch: <br>
<i>git branch -m old-name new-name</i>

2. Delete the old-name remote branch and push the new-name local branch. <br>
$ git push origin :old-name new-name

3. Reset the upstream branch for the new-name local branch. <br>

Switch to the branch and then:<br>
<i>git push origin -u new-name </i>

<h3 class="subsubTitleSection">File changes </h3>
See changes in all files <br>
$ git diff

See changes in specific files <br>
$ git diff <-file name->

See which untracked files will be deleted <br>
$ git clean -n <br>
$ git clean -n <-specific file name->

Delete all untracked file
$ git clean -f <br>
$ git clean -f <-specific file name->

Ignore modified files <br>
$ git update-index --assume-unchanged <-Specific file->

Ignore ALL modified files <br>
$ git update-index --assume-unchanged dir-im-removing/

Revert back to a clean working directory. This command saves local modifications away and reversts the working direcrory to match the HEAD commit. <br>
<b><i>git stash</i></b>

<h3 class="subsubTitleSection">Revert back to last commit</h3>
First reset the changes <br>
<b><i>git reset HEAD --hard</i></b><br>

Then clean out everything untracked. If you want to keep files that are not tracked due to .gitignore, be careful with this command. <br>
<b><i>git clean -fd</i></b><br>

<br>

<h2 class="subsubTitleSection">Temporarily switch to a different commit </h2>
Check your commit history with the following command <br>
<b><i> git log --all --graph --decorate --oneline </i></b> <br>

Temporarly Checkout into an old commit  
<i> git checkout <-commit ID-> </i>




