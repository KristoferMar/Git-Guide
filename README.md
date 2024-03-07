<h1>Git terms and guidelines</h1>
<h4>Git Head</h4>
- The HEAD points out the last commit in the current checkout branch. It's like a pointer to any reference. The HEAD can be understood as the "current branch". When you which branch with 'checkout' the HEAD is transfered to the new branch.

<br>

## Git status 
In all situations it's important to be aware of your changes and input. To check the status of your current branch you can run the following. <br><br>
<pre>git status</pre>

<br>

## Branches
Switch to another branch <br>
<pre>git checkout "feature_branch"</pre>
<br>
Creates and Swiches to new branch <br>
<pre>git checkout -b 'new_branch_name'</pre>
<br>
View all available branches
<pre>git branch -a</pre>

<br>
Find first commit of a given branch
<pre>git log master..<i>your_branch</i> --oneline | tail -1</pre>

<br>
<h3>Merge Branches</h3>
When executed you will take all changes within the target branch and put into your current branch which you are in right now <br>
<pre>git merge 'feature-branch'<br></pre>

<br><br>
### Delete branch

Delete branch locally
<pre>
git branch -d localBranchName
</pre>
<br>
Delete branch remotely
<pre>
git push origin --delete remoteBranchName
</pre>

<br><br>
<h3>Pull repositoriy</h3>
Pull down branch <br><br>
<pre> git pull</pre>
<p>Pull down branch and rebase all code to latest commit</p>
<pre> git pull --rebase</pre>

#### Configure pull
You can configure your pull strategy the following way
<pre>
  git config pull.rebase false  # merge (the default strategy)
  git config pull.rebase true   # rebase
  git config pull.ff only       # fast-forward only
</pre>


<br><br>
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

## Commit Commands
### Git Hard Rest to Commit/HEAD
When resetting files on Git, you essentially have two options: You can either hard reset files or soft reset files. Using "-hard" you will be left with untracked files of your working directory.<br>
Following takes you back to HEAD <br>
<pre>
git reset --hard 48a08ebe
</pre>
Following takes you back two commits before HEAD<br>
<pre>
git reset --hard HEAD~2
</pre>

Then clean out everything untracked. If you want to keep files that are not tracked due to .gitignore, be careful with this command. <br>
<pre>
git clean -fd
</pre>

<br>

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


# Worktree - "Multi branching"
It's possible to work on two or more branches simultaneously using the worktree command<br>

<br>
Get list of all worktrees:<br>
<pre>git worktree list</pre>

Create new worktree with new name and specifyed branch
<pre>git worktree add ../<i>YourWorktreeName</i> <i>YourBranchName</i></pre>

Delete a worktree
<pre>
git worktree remove --force 'path'
</pre>


## Cherry picking 
It's possible to "cherry pick" files from one repo into another in the following way.
Imagine you are locaed in repo called "main" and you want a file from the the repo called "release"
<pre>
git checkout release path/to/file.sql
git commit -m "commiting cherry-picked file"
git push
</pre>


<br>
<h2>Origin info</h2>
<h4>Check current git origin</h4>
If on a network<br>
<i>git remote show origin</i> <br>
If not on a network<br>
<i>git config --get remote.origin.url</i> <br>


<h2>The "makefile"</h2>
The makefile is a tool to add, commit and push very fast.

Develop faster by creating a makefile in the root of repo <br>
You can add the makefile to .gitignore for personal usage<br>

It looks like the following:<br>
https://github.com/KristoferMar/Git-Guide/blob/master/makefile
<br><br>
Makefule is run like this:
<pre>make git m="your message"</pre>

<br>
Guide<br>
<a href="https://panjeh.medium.com/makefile-git-add-commit-push-github-all-in-one-command-9dcf76220f48" target="_blank">https://panjeh.medium.com/makefile-git-add-commit-push-github-all-in-one-command-9dcf76220f48</a><br>


<br>
<h2>Tips and Tricks</h2>

<br>
<h4>Open repository in browser from terminal</h4>
<i>git remote -v | awk '/origin.*push/ {print $2}' | xargs open</i>


git log --graph --decorate --oneline
