@echo off

echo.
echo Delete Remote branch...
echo.
echo.

set /p gbn="Branch Name: "

echo.
echo Remote branch %gbn% will be deleted
pause
echo.

git push origin :heads/%gbn%

echo.
