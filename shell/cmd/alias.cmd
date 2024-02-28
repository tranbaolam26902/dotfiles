@echo off

doskey clear=cls

doskey gi=git init
doskey gbm=git branch -M master
doskey gs=git status
doskey gd=git diff
doskey gaa=git add .
doskey gcm=git commit -m $*
doskey gp=git push
doskey gpc=git push -u origin campbells
doskey gpm=git push -u origin master
doskey gpl=git pull
doskey gplc=git pull origin campbells
doskey gplm=git pull origin master
doskey gra=git restore .

doskey dndb=dotnet-ef Database Update
doskey dnb=dotnet build
doskey dnr=dotnet run --urls=https://localhost:$*
