@echo off

setlocal enabledelayedexpansion

set /A linecount=0
for /F %%s in (class_info.txt) do (
    set /A linecount+=1
    if !linecount! == 1 (
        set class=%%s
        echo cloning repos for !class!
        echo ==========
    ) else (
        for /F "tokens=1,2 delims=," %%a in ("%%s") do (
            if not exist %%a (
                git clone git@github.com:%%b/!class!.git %%a
            ) else (
                echo %%a already exists
            )
        )
        echo .....
    )
)

pause
