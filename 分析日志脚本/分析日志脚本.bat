@echo off

echo 解压日志压缩包
for %%i in (*.gz) do (start winrar e %%i)
for %%i in (*.rar) do (start winrar e %%i)
for %%i in (*.zip) do (start winrar e %%i)
ping 127.1 -n 5 >nul

echo 分析重定向日志
for %%k in (*.log) do (
for /f "tokens=1-2 delims=:" %%i in (keyword.config) do (
set key=%%j
set output=%%i.txt
findstr "%%j" %%k >> %%i.txt
)
)
ping 127.1 -n 5 >nul

echo 删除空文件
for %%i in (*.txt) do (
if "%%~zi" equ "0" del %%i
)
)

pause
