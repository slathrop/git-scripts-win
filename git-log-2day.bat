@echo off

set GLT=%DATE:/=.%
set GLT=%GLT: =.%

echo %GLT%
git log --pretty=oneline --abbrev-commit --no-merges --since=2.day --reverse --format=%%s

echo %GLT% > "%HOME%\Git.Log.%GLT%.txt"
git log --pretty=oneline --abbrev-commit --no-merges --since=2.day --reverse --format=%%s >> "%HOME%\Git.Log.%GLT%.txt"

echo Opening "%HOME%\Git.Log.%GLT%.txt"...

cmd /C notepad "%HOME%\Git.Log.%GLT%.txt"
