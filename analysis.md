# Add all to commit
```
git add .
```

# See changes between two commits
```
git diff 0da94be 59ff30c > my.patch 
```

# Reset to revious commit

## Hard reset
This command resets the index and working tree. Any changes to tracked files in the working tree since commit are discarded.
```
git reset --hard <commit>
```

## Soft reset
If you want to keep your current working tree but reset the head to a previous commit
```
git reset --soft <commit>
```


# Reset using revert (Safe for public history)
Reverting a Single Commit: This command creates a new commit that undoes the changes of a previous commit. This is a safe way to undo changes without rewriting public history.
```
git revert <commit>
```