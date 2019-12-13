REM ===---=== Per branch testing helper v.1.2
@echo off
set branch=`branch-name`
if not %1.==\. if not %1.==/. %0 \ %1 %2
if %2.==. %0 %1 - %branch%
if not %2.==-. %0 %1 - GIT-%2
if %3.==. %0 %1 %2 %branch%
set slash=\
set disk=D:
set branch=%3
if %1.==/. (
  set slash=/
  set disk=/d
)
rem echo %disk%
echo git fetch
echo git checkout %branch%
echo git pull origin %branch%
echo git pull origin GIT-%%release%%
echo [ git reset --hard HEAD ]
echo git push origin %branch%
