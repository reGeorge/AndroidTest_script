@echo off

::��ʼ���ű�
:start
cls
echo ****************************************
echo [�����룺0]		�˳�
echo [�����룺1]		��ȡapplog
echo [�����룺2]		����applog
echo [�����룺3]		ʵʱ��ӡapplog
echo [�����룺4]		д��־���ļ�
echo [ֱ������س�]		ִ��Ĭ�ϲ���
echo ****************************************
set /p opt=������:
if "%opt%"=="0" goto exit
if "%opt%"=="1" goto get_log
if "%opt%"=="2" goto clean_log
if "%opt%"=="3" goto print_log
if "%opt%"=="4" goto write_log
if "%opt%"=="" goto default

:default
echo ִ��Ĭ�ϲ���
pause
goto start

:exit
exit

:get_log
echo opt=%opt%
echo ��ȡapplog
::adb pull 1 1
pause
goto start

:clean_log
echo opt=%opt%
echo ����applog
adb remount
::adb shell rm -r xxx
pause
goto start

:print_log
echo opt=%opt%
echo ��ӡapplog
adb shell "logcat -v time"
pause
goto start

:write_log
echo opt=%opt%
echo д��־���ļ�
adb logcat -v time>./applog.log
pause
goto start
