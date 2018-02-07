@echo off

echo.
echo Create a new branch...
echo.
echo (Local modifications to the files in your working tree
echo  are kept, so that they can be committed to the new branch)
echo.
echo.

set /p gbn="New Branch Name (use dash-separated-words): "

echo.
echo New branch will be created under the name %gbn%
pause
echo.

git push origin HEAD:refs/heads/%gbn%

echo.

git fetch origin

echo.

git checkout --track -b %gbn% origin/%gbn%

echo.

git pull

echo.
echo.
