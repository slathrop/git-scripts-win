@echo off

echo.
echo Delete local branch...
echo.
echo.

set /p gbn="Branch Name: "

echo.
echo Local branch %gbn% will be deleted
pause
echo.

git branch -d %gbn%

echo.
