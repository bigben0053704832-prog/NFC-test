@echo off
echo 正在启动视频播放器服务器...
echo.

REM 尝试使用Python启动服务器
python -m http.server 8000 2>nul
if %errorlevel% equ 0 goto :success

REM 如果Python不可用，尝试使用py命令
py -m http.server 8000 2>nul
if %errorlevel% equ 0 goto :success

REM 如果都不可用，显示错误信息
echo 错误：未找到Python！
echo.
echo 请先安装Python，然后重新运行此文件。
echo 或者按照README.md中的说明手动启动服务器。
echo.
pause
goto :end

:success
echo 服务器启动成功！
echo 请在浏览器中访问：http://localhost:8000
echo 按Ctrl+C停止服务器
echo.

:end