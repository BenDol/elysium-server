@echo off
setlocal EnableDelayedExpansion
set updates=custom.sql
if exist %updates% del %updates%
for %%a in (*.sql) do (
echo /* >>%updates%
echo * %%a >>%updates%
echo */ >>%updates%
copy/b %updates%+"%%a" %updates%
echo. >>%updates%
echo. >>%updates%)
