@echo off

git config --global core.autocrlf false
set /p gcmsg="Commit Message: "

rem git update-index --assume-unchanged *.user

git add --all
git commit -am "%gcmsg%"

git pull
git push
