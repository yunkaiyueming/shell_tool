@echo off
cd /d E:\www2\GitHub\ideas
for /l %%i in (1,1,1) do (
	for /l %%a in (7,1,7) do (
	    for /l %%b in (23,1,31) do (
	        echo %%i: 2016-%%a-%%b 11:11:11 >>E:\www2\GitHub\ideas\test.txt
	        git add .
	        git commit -m "ok" --date "2016-%%a-%%b 11:11:11"
	    )
	)
)
