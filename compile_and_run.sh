#!/bin/bash

# Ocean Odyssey Java Game - Compile and Run Script

echo "🌊 Ocean Odyssey - Compiling and Running..."

# Create bin directory if it doesn't exist
mkdir -p bin

# Compile all Java files
echo "📦 Compiling Java files..."
javac -d bin -cp "src" src/Main/MainClass.java src/Main/Game.java src/Main/GamePanel.java src/Main/GameWindow.java src/Main/MenuFrame.java src/Main/Settings.java src/Entities/*.java src/Gamestates/*.java src/Inputs/*.java src/Levels/*.java src/Physics/*.java src/Utilz/*.java

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "✅ Compilation successful!"
    echo "🎮 Starting Ocean Odyssey..."
    
    # Run the game
    java -cp "bin:res" Main.MainClass
else
    echo "❌ Compilation failed!"
    exit 1
fi 