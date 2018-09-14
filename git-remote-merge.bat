@echo off

echo Merge a remote locally into the *current* branch...
echo.
echo.

git branch -a

echo.

git remote --verbose


echo.
echo.
echo Locally-registered remote (e.g., upstream, etc.) to fetch and merge...
echo.

set /p grn="Remote Name: "

echo.
echo.
echo Branch name on remote (e.g., master)...
echo.

set /p gbn="Branch Name: "

echo.
echo.
echo The %gbn% branch of %grn% will now be merged locally...
pause
echo.

git fetch %grn%
git merge %grn%/%gbn%
