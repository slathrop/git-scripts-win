# Git Shell Scripts for Windows (Batch Files)

Simple Windows Batch files for common **Git** operations.

## Welcome, Let's get Productive with Git on Windows!

If you are completely new to **Git** and you are on the Windows platform you're in luck, because I'm about to walk you through the steps to get productive with **Git** quickly!

### Windows - Setup for First Time Git User

My first word of advice is to familiarize yourself with using **Git** from the command-line. Yes, **Git** integration is available in most graphical code editors/IDEs, but it would be impossible to describe how to use them all, they change their interfaces from time-to-time, and you won't always be able to use your favorite editor. So learn the command-line and you'll have a solid foundation in **Git** skills.

#### Install Cmder

On Windows I highly recommend the [Cmder](http://cmder.net/) console emulator (Full download _with Git for Windows_) instead of the built-in command-line. So before proceeding please download and install [Cmder](http://cmder.net/).

Cmder can be used with the [Visual Studio Code (VSCode)](https://code.visualstudio.com/) integrated terminal. See [here](https://github.com/cmderdev/cmder/pull/1416) for details.

#### Verify that Git for Windows was Installed

[Cmder](http://cmder.net/) installed _Git for Windows_, so let's verify that. First, do Start, Run, `cmder` and at the command prompt type:

```bash
git --version
```

If _Git for Windows_ responded, you're all set to move on to the next step.

#### Folders

So now you are in [Cmder](http://cmder.net/) at the `C:\Users\...` prompt. So change directory into your root `C:\` folder.

```
cd \
```

And make a directory for all of the projects and source code that you'll be working on. I recommend:

```
md src
cd src
```

Why use your root `C:\` folder and abbreviate the folder name? I recommend this because you'll often end up with extremely long/deep nested folder hierarchies when working with source code and it's best to start with something very short.

#### Clone Your First Repo

So you're at the `C:\src` prompt in [Cmder](http://cmder.net/) and here's where the good stuff begins.

When you "clone" a source code repository (repo) **Git** will remember the original master location of the code, and thus allow you to easily check-in and "push" your changes/contributions back to that location (e.g., GitHub).

But if you simply _download_ code (from GitHub, for example) instead of _cloning_ it, there is no link established (and no tracking of changes by **Git** at all) and you will have a harder time configuring your folder to push your contributions to the original location.

If you are in that situation where you have _downloaded_ code and made some minor changes, I'd recommend that you follow these steps to actually _clone_ the repo, and then copy your previous changes from the download folder to this new, cloned folder.

So here goes, let's clone this `git-scripts-win` repo as an example. Here's the command:

```bash
git clone https://github.com/slathrop/git-scripts-win.git
```

(You can also read the GitHub documentation [here](https://help.github.com/articles/cloning-a-repository/) for more details on this command.)

This creates a new folder named `git-scripts-win`. So change your current directory to that subfolder.

```bash
cd git-scripts-win
```

You'll notice that **Cmder** has added some **Git** information to the command-prompt:

```
C:\src\git-scripts-win (master -> origin)
```

**Cmder** knows that **Git** is setup to track changes in this folder, and that you are currently working on the "master" branch.

Congratulations, you have cloned your first **Git** repo!

### Installation and Use of Windows Batch Scripts

Now that you have cloned this repo, add your local repo folder (`C:\src\git-scripts-win` if you followed the example above) [to your `PATH` environment variable](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/).

After editing your `PATH` environment variable, you'll need to exit **Cmder** and re-run it to allow the `PATH` change to be seen by **Cmder**. So do that now before continuing with the next step.

#### Practice Switching Between Branches

You may have been asked to make contributions to, say, a `dev` branch instead of the `master` branch. So how do you do that? Using the batch files (\*.bat) in this repo makes it easy. Enter this command:

```
git-switch-branch
```

And you'll see a list of available branches:

```
  dev
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/dev
  remotes/origin/master


Switch to a different branch...

Branch Name:
```

Your current branch, `master`, is starred, and you are prompted to enter the name of the branch to which you'd like to switch. Enter `dev`.

You'll see:

```
Branch Name: dev
Switched to branch 'dev'
```

#### Make Your First Contribution

Assuming you are working against a repo to which you have write access, making your first contribution to the repo is easy. After _cloning_, simply add/edit files as needed, or copy files from other locations into your local, cloned folder structure.

And here's the important, time-saving step: Copy all of the batch files from this repo (git-\*.bat) into the root folder of the repo you're working on. And then you can type:

```
git-update
```

You'll be prompted for a short "commit message" (no quotes are needed in the message). Type it in and press ENTER.

Congratulations, you've made your first contribution to a git repo!

### Additional Nice-to-Have Setup for Git on Windows

Some of the batch files in this repo assume that you have installed [WinMerge](http://winmerge.org/about/)
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

# Optional - prefer GUI prompt for credentials
git config --global credential.modalPrompt true
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

### git-ff-branch

When your branch has had no intervening changes since it was branched from, rebased against, or merged with master, and you simply want to bring your branch even with the latest changes in master, this does the job.

### git-rebase-branch

When your branch _does_ have intervening changes that cause it to differ from master, and commits have been applied to master that you want to be applied to your branch as well, this will do the job.

### git-log

Display a simple list of the latest commits.
