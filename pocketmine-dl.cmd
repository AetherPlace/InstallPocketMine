@echo off

echo [*] This installer will install the latest version of PocketMine for Windows
echo [1/5] Detecting and cleaning old installations...
del "PocketMine-MP.phar" >nul 2>&1
del "start.cmd" >nul 2>&1
rmdir /S /Q "bin" >nul 2>&1
echo [2/5] Downloading PocketMine-MP...
powershell -command Invoke-WebRequest https://github.com/pmmp/PocketMine-MP/releases/latest/download/PocketMine-MP.phar -OutFile PocketMine-MP.phar
echo [3/5] Downloading start.cmd...
powershell -command Invoke-WebRequest https://github.com/pmmp/PocketMine-MP/releases/latest/download/start.cmd -OutFile start.cmd
echo [4/5] Downloading and extracting the PHP runtime...
powershell -command Invoke-WebRequest https://jenkins.pmmp.io/job/PHP-7.4-Aggregate/lastSuccessfulBuild/artifact/PHP-7.4-Windows-x64.zip -OutFile php.zip
del "vc_redist.x64.exe" >nul 2>&1
powershell -command Expand-Archive -LiteralPath './php.zip' -DestinationPath ./
del "php.zip" >nul 2>&1
echo [5/5] Done, PocketMine environment set correctly!
echo [*] If you want, you can delete the script too.
