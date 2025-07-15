@echo off
REM Ocean Odyssey Java Game - Compile and Run Script for Windows

echo 🌊 Ocean Odyssey - Compiling and Running...

REM Create bin directory if it doesn't exist
if not exist "bin" mkdir bin

REM Compile all Java files
echo 📦 Compiling Java files...
javac -d bin -cp "src" src\main\MainClass.java src\main\Game.java src\main\GamePanel.java src\main\GameWindow.java src\main\MenuFrame.java src\main\Settings.java src\Entities\*.java src\gamestates\*.java src\inputs\*.java src\Levels\*.java src\Physics\*.java src\utilz\*.java

REM Check if compilation was successful
if %ERRORLEVEL% EQU 0 (
    echo ✅ Compilation successful!
    echo 🎮 Starting Ocean Odyssey...
    
    REM Run the game
    java -cp "bin;res" main.MainClass
) else (
    echo ❌ Compilation failed!
    pause
) 