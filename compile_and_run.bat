@echo off
REM Ocean Odyssey Java Game - Compile and Run Script for Windows

echo 🌊 Ocean Odyssey - Compiling and Running...

REM Create bin directory if it doesn't exist
if not exist "bin" mkdir bin

REM Compile all Java files
echo 📦 Compiling Java files...
javac -d bin -cp "src" src\Main\MainClass.java src\Main\Game.java src\Main\GamePanel.java src\Main\GameWindow.java src\Main\MenuFrame.java src\Main\Settings.java src\Entities\*.java src\Gamestates\*.java src\Inputs\*.java src\Levels\*.java src\Physics\*.java src\Utilz\*.java

REM Check if compilation was successful
if %ERRORLEVEL% EQU 0 (
    echo ✅ Compilation successful!
    echo 🎮 Starting Ocean Odyssey...
    
    REM Run the game
    java -cp "bin;res" Main.MainClass
) else (
    echo ❌ Compilation failed!
    pause
) 