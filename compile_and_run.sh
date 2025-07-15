#!/bin/bash

# Ocean Odyssey Java Game - Compile and Run Script

echo "🌊 Ocean Odyssey - Compiling and Running..."

# Create bin directory if it doesn't exist
mkdir -p bin

# Compile all Java files
echo "📦 Compiling Java files..."
javac -d bin -cp "src" src/main/MainClass.java src/main/Game.java src/main/GamePanel.java src/main/GameWindow.java src/main/MenuFrame.java src/main/Settings.java src/Entities/*.java src/gamestates/*.java src/inputs/*.java src/Levels/*.java src/Physics/*.java src/utilz/*.java

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "✅ Compilation successful!"
    echo "🎮 Starting Ocean Odyssey..."
    
    # Run the game
    java -cp "bin:res" main.MainClass
else
    echo "❌ Compilation failed!"
    exit 1
fi 