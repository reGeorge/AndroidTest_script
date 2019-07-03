@echo off

::初始化脚本
:start
cls
echo ****************************************
echo [请输入：0]		退出
echo [请输入：1]		获取applog
echo [请输入：2]		清理applog
echo [请输入：3]		实时打印applog
echo [请输入：4]		写日志到文件
echo [直接输入回车]		执行默认操作
echo ****************************************
set /p opt=请输入:
if "%opt%"=="0" goto exit
if "%opt%"=="1" goto get_log
if "%opt%"=="2" goto clean_log
if "%opt%"=="3" goto print_log
if "%opt%"=="4" goto write_log
if "%opt%"=="" goto default

:default
echo 执行默认操作
pause
goto start

:exit
exit

:get_log
echo opt=%opt%
echo 获取applog
::adb pull 1 1
pause
goto start

:clean_log
echo opt=%opt%
echo 清理applog
adb remount
::adb shell rm -r xxx
pause
goto start

:print_log
echo opt=%opt%
echo 打印applog
adb shell "logcat -v time"
pause
goto start

:write_log
echo opt=%opt%
echo 写日志到文件
adb logcat -v time>./applog.log
pause
goto start
