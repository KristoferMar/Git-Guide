# Get all branches
git branch -a


# Create a Git branch
## 1
```
git fetch && git checkout <feature>
or
git checkout -b <feature>
```

#### Add changes, commit locally, push to global git
## 2
```
git add .
git commig -m "adding a change from the feature branch"
git push origin <'feature>
```

# Switch branch
```
git checkout <branch name>
```

# Rename branch
### Rename local branch 
Given you are located in the branch 
```
git branch -m <new_name>
```
Then push the renamed branch
```
git push origin new-branch-name
```

<br>

# Delete branch
### localy 
```
git branch -d <branch_name>
```

### remotely
```
git push origin --delete <remote_branch_name>
```