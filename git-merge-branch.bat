@echo off

echo Merge a branch to master...
echo.
echo First, we'll switch to the master branch
pause
echo.

git checkout master

echo.
echo.

git branch -a

echo.
echo.

set /p gbn="Name of branch to merge into master: "

echo.
echo Branch %gbn% will be merged locally into master
pause
echo.

git merge %gbn% --no-ff

echo.
echo.
echo When you are ready to push your merged changes
echo to the remote server, run "git-update"
echo.
echo After that, if you want to fast-forward the %gbn% branch to be
echo even with master, switch back to %gbn% with "git-switch-branch"
echo and then run "git-ff-branch".
echo.
echo.
