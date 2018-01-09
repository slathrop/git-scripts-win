# Git Shell Scripts for Windows (Batch Files)

Simple Windows Batch files for common git operations.

## Installation

Simply copy these files into the root folder of your git repo. Several free tools are also highly recommended (see download links in the following sections).

## Recommended Setup

These batch files assume that you have installed [WinMerge](http://winmerge.org/about/)
and that you have configured git to use it as your merge tool.

```bash
git config --global merge.tool winmerge

git config --global mergetool.keepBackup false
```

It's also a good idea to establish your identity with git using these two commands:

```bash
git config --global user.name "YourUserName"

git config --global user.email YourEmailAddress@example.com
```

Finally, if you need to sign-in to GitHub repos with different credentials (say, with a work account to access private repos and also with a personal account to access public repos) you'll need to tell the [Credential Manager](https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases/latest) to use the full path of the repo instead of just the host (Github.com). And you may need to set the name of the credential helper too.

```bash
git config --global credential.useHttpPath true

git config --global credential.helper manager
```

And if you ever need to clear any previously-cached credentials for GitHub to force prompting for new credentials (on your next git action requiring a login) you can run this command:

```bash
git credential-wincred erase
host=github.com
protocol=https
```

## Batch File Documentation

To use a batch file, simply enter its name at the Windows command prompt. The [Cmder](http://cmder.net/) console emulator (Full download with Git for Windows) is recommended over the built-in cmd.exe shell.

These batch scripts are designed to prompt you before taking any action against your repo. So you may always press `CTRL+C` to exit a script after launching it but before it performs any actions.

The batch script you would use most commonly is `git-update`, but all of the scripts are documented below.

### git-branches

Displays information about the branches in the current repo.

### git-changes

Prompts you for the path to a file for which you would like to review the changes and launches your diff tool (e.g., WinMerge) to allow you to review the changes.

### git-cherry-pick

Walks you through the process of picking a commit from another branch and merging it into your current branch

### git-del-local-branch

Walks you through deleting a local branch.

### git-del-remote-branch

Walks you through deleting a remote branch.

### git-merge-branch

Walks you through merging a branch to master.

### git-merge

When git fails to auto-merge your changes with other commits, use this command to launch the diff tool (e.g., WinMerge) to review each change and make the decisions necessary to complete the merge.

### git-new-branch

Walks you through the process of creating a new branch. For example, you may want to create a branch for a new or experimental feature. It is recommended that you _not_ use a branch for refactoring existing code that might also be touched by others while you are working on it.

### git-switch-branch

Walks you through switching from your current branch to a different branch so that you can work there.

### git-update

Walks you through committing your changes locally and then syncing those changes with the remote repo.
