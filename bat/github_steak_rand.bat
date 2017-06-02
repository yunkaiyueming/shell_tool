@echo off
cd /d E:\www2\GitHub\ideas
for /l %%a in (3,1,12) do (
    set rd=%random%%%21
	if %rd% gtr 11
        echo 2016-%%a-%%b 11:11:11 >>E:\www2\GitHub\ideas\test.txt
        ::git add .
        ::git commit -m "ok" --date "2016-%%a-%%b 11:11:11"
    )
)