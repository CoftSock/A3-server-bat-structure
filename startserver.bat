@echo off
:start
 set arma3path="C:\Program Files (x86)\Steam\steamapps\common\Arma 3\"
cd /d %arma3path%
start "arma3" /min /high "arma3server.exe" -port=2302 "-config=Config\cfg\Config.cfg" "-profiles=Config\log" "-cfg=Config\cfg\basic.cfg" -name=Exile "-mod=" -world=empty -nosplash -noSound -noPause -enableHT -malloc=system
::timeout 29
::set becpath="C:\Program Files (x86)\Steam\steamapps\common\Arma 3\BEC"
::cd /d %becpath%
::start "" "bec.exe"
timeout 10800
 
taskkill /im "arma3server.exe" /F
::taskkill /im bec.exe /F
timeout 20
 
goto start
