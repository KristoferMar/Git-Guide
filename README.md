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
<i>git clean -f 'filename'</i><br>

Ignore modified files <br>
<i>git update-index --assume-unchanged 'filename'</i><br>

Ignore ALL modified files <br>
<i>git update-index --assume-unchanged dir-im-removing/</i><br>

Revert back to a clean working directory. This command saves local modifications away and reversts the working direcrory to match the HEAD commit. <br>
<i>git stash</i><br>

<br>
<h2>Remove files </h2>
Remove file from git <br>
<i>git rm file1.txt</i><br><br>

Remove file from git wituout removing file from git project <br>
<i>git rm --cached file1.txt</i><br><br>

<br>
<h2>Revert back to last commit</h2>
First reset the changes <br>
<i>git reset HEAD --hard</i><br>

Then clean out everything untracked. If you want to keep files that are not tracked due to .gitignore, be careful with this command. <br>
<i>git clean -fd</i><br>



<br>
<h2>Commit Commands</h2>
<h4>See commit history</h4>
<i>git log</i>

<h4>Temporarily switch to a different commit </h4>
Check your commit history with the following command <br>
<i> git log --all --graph --decorate --oneline </i><br>

Temporarly Checkout into an old commit <br>
<i> git checkout 'commit ID'</i>


<br>
<h2>Revert upsie commits</h2>
<p>If you accedentially commit something to a repository which was not intented such as an API key, properties file, configuration file ect you can do some of the following - Be aware that some of these commands are very sensative</p><br>

<h4>1. Reset HEAD by going one step back</h4>
<p><b>VERY Dangerous if you are working in a team.</b></p>
<p>This command will revert EVERYTHING back to from HEAD (current commit) to the second latest commit in the history.</p><br>
<p>git reset --soft HEAD^</p>
<p>git push --force</p>

<h2>
<h2>Origin commits</h2>
<h4>Check current git origin</h4>
If on a network<br>
<i>git remote show origin</i> <br>
If not on a network<br>
<i>git config --get remote.origin.url</i> <br>
