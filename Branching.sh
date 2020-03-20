# Get all branches
git branch -a


# Create a Git branch
# 1
git fetch && git checkout <feature>
or
git checkout -b <feature>

# 2
git add .
git commig -m "adding a change from the feature branch"
git push origin <feature>


# Switch branch
git checkout <branch name>


# Rename branch
# 1. Rename local branch 
git branch -m <new_name>

# 2. Delete old name branch 
git push origin :<old_name> <new_name>

# 3. Reset upstream branch for new name local branch
# Swithc to the new branch and execute:
git push origin -u <new_name>


# Delete branch
# localy 
git branch -d <branch_name>

# remotely
git push origin --delete <remote_branch_name>