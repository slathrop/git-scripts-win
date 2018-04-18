@echo off

echo Merge Upstream Remote to master...
echo.
echo First, we'll switch to the master branch
pause
echo.

git checkout master

echo.
echo.

git branch -a

echo.
echo.

git remote --verbose

echo.
echo.

echo Upstream Remote will be merged locally into master
pause
echo.

git fetch upstream
git merge upstream/master
