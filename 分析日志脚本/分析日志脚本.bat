@echo off

echo ��ѹ��־ѹ����
for %%i in (*.gz) do (start winrar e %%i)
for %%i in (*.rar) do (start winrar e %%i)
for %%i in (*.zip) do (start winrar e %%i)
ping 127.1 -n 5 >nul

echo �����ض�����־
for %%k in (*.log) do (
for /f "tokens=1-2 delims=:" %%i in (keyword.config) do (
set key=%%j
set output=%%i.txt
findstr "%%j" %%k >> %%i.txt
)
)
ping 127.1 -n 5 >nul

echo ɾ�����ļ�
for %%i in (*.txt) do (
if "%%~zi" equ "0" del %%i
)
)

pause
