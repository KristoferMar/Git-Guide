<h1>Git terms and guidelines</h1>
<h4>Git Head</h4>
- The HEAD points out the last commit in the current checkout branch. It's like a pointer to any reference. The HEAD can be understood as the "current branch". When you which branch with 'checkout' the HEAD is transfered to the new branch. <br>

<h2>Git status</h2>
In all situations it's important to be aware of your changes and input. To check the status of your current branch you can run the following. <br><br>
<pre>git status</pre>


<br>
<h2>Branches</h2>
Switch to another branch <br>
<i>git checkout "feature_branch"</i> <br>
<br>
Creates and Swiches to new branch <br>
<i>git checkout -b 'new_branch_name'</i> <br>
<br>
View all available branches <br>
<i>git branch -a</i><br>

<br>
<h3>Merge Branches</h3>
When executed you will take all changes within the target branch and put into your current branch which you are in right now <br>
<i>git merge 'feature-branch'</i><br>

<br>
<h3>Delete branch</h3>
Delete branch locally <br>
<i>git branch -d localBranchName</i><br>
<br>
Delete branch remotely <br>
<i>git push origin --delete remoteBranchName</i><br>

<br>
<h3>Rename github branch</h3>
1. Rename your local branch. <br><br>
If you are on the branch you want to rename: <br>
<i>git branch -m new-name </i><br>
If you are on a different branch: <br>
<i>git branch -m old-name new-name</i><br>
2. Delete the old-name remote branch and push the new-name local branch. <br><br>
<i>git push origin :old-name new-name</i><br>
3. Reset the upstream branch for the new-name local branch. <br><br>
Switch to the branch and then:<br>
<i>git push origin -u new-name </i><br>


<br>
<h2>File changes </h2>
See changes in all files <br>
<i>git diff</i><br>
<br>
See changes in specific files <br>
<i>git diff 'file name'</i><br>
<br>
See which untracked files will be deleted <br>
<i>git clean -n</i> <br>
<i>git clean -n 'filename'</i><br>
<br>
<h3>Delete all untracked file</h3>
See what will be deleted <br>
<i>git clean -n</i><br><br>
Clean untracked files <br>
<i>git clean -f</i> <br>
<i>git clean -f 'filename'</i><br>
<br>

Ignore modified files <br>
<i>git update-index --assume-unchanged 'filename'</i><br>
<br>
Ignore ALL modified files <br>
<i>git update-index --assume-unchanged dir-im-removing/</i><br>
<br>
Revert back to a clean working directory. This command saves local modifications away and reversts the working direcrory to match the HEAD commit. <br>
<i>git stash</i><br>
<br>
Reset specific unwanted files from a local commit<br>
<i>git reset HEAD path/to/unwanted_file</i><br>

<br>
<h2>Remove files </h2>
Remove file from git <br>
<i>git rm file1.txt</i><br><br>

Remove file from git wituout removing file from git project <br>
<i>git rm --cached file1.txt</i><br><br>

<h2>Commands for Uncommited commits</h2>
Can be used to discard local changes in a file, thereby restoring its last committed state. <br><br>
<pre>git restore <i>filename</i> </pre>

<br>
<h2>Commit Commands</h2>
<h3>Git Hard Rest to Commit/HEAD</h3>
When resetting files on Git, you essentially have two options: You can either hard reset files or soft reset files. Using "-hard" you will be left with untracked files of your working directory.<br>
Following takes you back to HEAD <br>
<i>git reset --hard HEAD</i><br>
Following takes you back two commits before HEAD<br>
<i>git reset --hard HEAD~2</i><br>
Then clean out everything untracked. If you want to keep files that are not tracked due to .gitignore, be careful with this command. <br>
<i>git clean -fd</i><br>

<h3>Git Soft Reset to Commit/HEAD (Revert local commit)</h3>
Contrary to the hard reset, the soft reset won't alter the working directory and the index. <br><br>
The last commit will be removed from git history. with 'HEAD~2' it will revert back 2 commits earler. <br>
<i>git reset --soft HEAD~1</i><br>

<h3>See commit history</h3>
<i>git log</i>

<h3>Temporarily switch to a different commit </h3>
Check your commit history with the following command<br>
<i> git log --all --graph --decorate --oneline </i><br>
<br>
Temporarly Checkout into an old commit <br>
<i> git checkout 'commit ID'</i> <br>


<br>
<h2>Revert upsie commits</h2>
<p>If you accedentially commit something to a repository which was not intented such as an API key, properties file, configuration file ect you can do some of the following - Be aware that some of these commands are very sensative</p><br>

<h4>1. Reset HEAD by going one step back</h4>
<p><b>VERY Dangerous if you are working in a team.</b></p>
<p>This command will revert EVERYTHING back to from HEAD (current commit) to the second latest commit in the history.</p><br>
<p>git reset --soft HEAD~1</p>
<p>git push --force</p>


<br>
<h2>Origin info</h2>
<h4>Check current git origin</h4>
If on a network<br>
<i>git remote show origin</i> <br>
If not on a network<br>
<i>git config --get remote.origin.url</i> <br>


<br>
<h2>Tips and Tricks</h2>

<h4>Add, commit & push all in one</h4>
Develop faster by creating a makefile in the root of repo <br>
You can add the makefile to .gitignore for personal usage<br>
<br>
Guide<br>
<a href="https://panjeh.medium.com/makefile-git-add-commit-push-github-all-in-one-command-9dcf76220f48" target="_blank">https://panjeh.medium.com/makefile-git-add-commit-push-github-all-in-one-command-9dcf76220f48</a><br>

<br>
<h4>Open repository in browser from terminal</h4>
<i>git remote -v | awk '/origin.*push/ {print $2}' | xargs open</i>


git log --graph --decorate --oneline
