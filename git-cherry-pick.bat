@echo off

echo Cherry-pick: Merge a commit into this branch from another...
echo.
echo NOTE: We assume that you have already...
echo.
echo         (1) Switched into your branch
echo.
echo         (2) Pulled the commit (git pull) you want to cherry-pick into your local repo
echo.
echo.
pause
echo.
echo.

git branch -a

echo.
echo.

set /p gcn="Commit number (SHA, e.g. 7dc032cc...) to merge (cherry-pick) into this branch: "

echo.
echo Commit %gcn% will be merged locally into this branch
pause
echo.

git cherry-pick %gcn%

echo.
echo.
echo When you are ready to push your merged changes
echo to the remote server, run "git-update"
echo.
echo.
