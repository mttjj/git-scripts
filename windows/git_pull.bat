@echo off

for /d %%i in (*) do (
	cd %%i
    if exist .git (
        echo updating %%i
        git pull
    )
    cd ../
)

pause
