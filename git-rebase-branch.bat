@echo off

echo.
echo.

git branch -a

echo.
echo.
echo Before continuing, be sure that you have switched to a branch
echo *other than* master.
echo.
echo Rebase this branch to have all of the commits from master...
pause
echo.
echo.

REM "Ours" and "theirs" mean the opposite of what they do during a straight merge
git rebase -s recursive -X theirs master

echo.
