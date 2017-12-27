@echo off

echo.
echo.

git branch -a

echo.
echo.
echo Switch to a different branch...
echo.

set /p gbn="Branch Name: "

git checkout %gbn%

echo.