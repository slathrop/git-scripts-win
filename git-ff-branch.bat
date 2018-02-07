@echo off

echo.
echo.

git branch -a

echo.
echo.
echo Before continuing, be sure that you have switched to a branch
echo *other than* master.
echo.
echo Fast-forward this branch to be even with master...
pause
echo.
echo.

git merge --ff-only origin/master

echo.