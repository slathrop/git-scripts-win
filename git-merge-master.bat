@echo off

echo.
echo.

git branch -a

echo.
echo.
echo Before continuing, be sure that you have switched to a branch
echo *other than* master.
echo.
echo Merge master locally into this branch, favoring this branch's changes over master...
pause
echo.
echo.

git merge -s recursive -X ours master

echo.
echo.
echo When you are ready to push your merged changes
echo to the remote server, run "git-update"
echo.
echo.
