<h2>Branches</h2>
Below we find all usefull git commands: <br><br>
Switch to another branch <br>
<i>git checkout "feature_branch"</i> <br>
<br>
Creates and Swiches to new branch <br>
<i>git checkout -b 'new_branch_name'</i> <br>
<br>
View all available branches <br>
<i>git branch -a</i><br>

<br>
<h2>Merge Branches</h2>
When executed you will take all changes within the target branch and put into your current branch which you are in right now <br>
<i>git merge 'feature-branch'</i><br>

<br>
<h2>Delete github branch</h2>
Delete branch locally <br>
<i>git branch -d localBranchName</i><br>

<br>
Delete branch remotely <br>
<i>git push origin --delete remoteBranchName</i><br>

<br>
<h2>Rename github branch</h2>
1. Rename your local branch. <br>
If you are on the branch you want to rename: <br>
<i>git branch -m new-name </i><br>

If you are on a different branch: <br>
<i>git branch -m old-name new-name</i><br>

2. Delete the old-name remote branch and push the new-name local branch. <br>
<i>git push origin :old-name new-name</i><br>

3. Reset the upstream branch for the new-name local branch. <br>

Switch to the branch and then:<br>
<i>git push origin -u new-name </i><br>

<br>
<h2>File changes </h2>
See changes in all files <br>
<i>git diff</i><br>

See changes in specific files <br>
<i>git diff 'file name'</i><br>

See which untracked files will be deleted <br>
<i>git clean -n</i> <br>
<i>git clean -n 'filename'</i><br>

Delete all untracked file<br>
<i>git clean -f</i> <br>
$ git clean -f <-specific file name-><br>

Ignore modified files <br>
$ git update-index --assume-unchanged <-Specific file-><br>

Ignore ALL modified files <br>
$ git update-index --assume-unchanged dir-im-removing/<br>

Revert back to a clean working directory. This command saves local modifications away and reversts the working direcrory to match the HEAD commit. <br>
<b><i>git stash</i></b><br>

<br>
<h3 class="subsubTitleSection">Remove files </h3>
Remove file from git <br>
<b><i>git rm file1.txt</i></b><br>

Remove file from git wituout removing file from git project <br>
<b><i>git rm --cached file1.txt</i></b><br>


<br>
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
<i> git checkout 'commit ID' </i>




