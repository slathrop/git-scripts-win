@echo off

echo.
echo.

git branch -a

echo.
echo.
echo Switch to a branch, merge changes from master, and update...
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
