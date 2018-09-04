@echo off

echo.
echo.

git branch -a

echo.
echo.
echo Steps we will take...
echo.
echo 1 - Commit changes in current branch (master)
echo 2 - Switch to another branch
echo 3 - Merge changes from master, and
echo 4 - Commit changes to the destination branch
echo.

call git-update.bat

echo.

set /p gbn="Branch Name (other than master): "

git checkout %gbn%

echo.

echo Merge master locally into this branch, favoring this branch's changes over master...
pause
echo.
echo.

git merge -s recursive -X ours master

echo.

git config --global core.autocrlf false

git add --all
git commit -am "Merge"

git pull
git push
