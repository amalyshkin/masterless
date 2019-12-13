REM ===---=== Per branch testing helper v.1.2
@echo off
set slash=\
set disk=D:
set branch=%%branch-name%%
if %1.==/. (
  set slash=/
  set disk=/d
  shift
)
if %1.==\. shift
if %1.==-. (
  if not %2.==. set branch=%2
) else (
  if not %1.==. set branch=GIT-%1
)
rem echo %disk%
echo git checkout %branch%
echo git pull origin %branch%
echo git pull origin master
echo [ git reset --hard HEAD ]
echo git push origin %branch%
