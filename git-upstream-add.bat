@echo off

echo.
echo.
echo Did you originally Fork this repo from another one?
echo.
echo Add the original repo as an Upstream Remote so you can
echo merge new commits into this repo using "git-upstream-merge".
echo.
echo.

set /p gur="Upstream Remote URL (e.g., https://.../REPO.git): "

git remote add upstream "%gur%"
