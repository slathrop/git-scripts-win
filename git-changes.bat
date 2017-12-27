@echo off

git status

echo.
echo For which file would you like to review the changes?
set /p gdpath="Enter or paste the path of the file: "

git difftool --no-prompt "%gdpath%"
