# The-Logos-Anomaly
 sci-fi puzzle horror game
# Overview

**The Logos Anomaly** is a 2D sci-fi exploration and survival game developed in GameMaker. The goal of this project is to enhance my skills in game design, AI programming, pixel art, and interactive storytelling. The game blends narrative design, stealth mechanics, and player-driven choices into a unique retro-style adventure.

The player must navigate a mysterious anomaly at the edge of the solar system aboard the ship *Peregrination*, collecting vital parts, avoiding or confronting enemies, and making decisions that lead to multiple possible endings. This project has allowed me to expand my abilities in object-based programming, tilemap design, sprite animation, and interactive UI creation within the GameMaker environment.

# Core Gameplay Features

- Patrol and chase AI using state machines
- Line-of-sight enemy detection
- Enemy-to-enemy collision avoidance
- Player damage system with health and invincibility frames
- Visual health bar using Draw GUI
- Interactive item collection with objectives to repair the ship
- Dynamic dream sequences and character customization planned
- Multiple ending conditions based on player choices and performance

# Game Engine

This game is being developed in **GameMaker Studio 2/2.3+** using GML (GameMaker Language), which provides a powerful framework for 2D game development.

# Development Environment

- GameMaker Studio 2 / 2.3+
- Aseprite (for pixel art sprite creation)
- Git for version control
- Visual Studio Code (for editing external GML scripts when needed)
- Trello (for tracking tasks and narrative flow)

# Key Game Objects

- `obj_player`: The main character, equipped with movement, health system, and collision detection.
- `obj_enemy_parent`: Base object for enemy AI behavior (patrol, chase, return states).
- `obj_hunter`, `obj_drone`: Subtypes of enemies with unique speeds and damage output.

 # Future Game Objects
 
- `obj_atmo_proc`, `obj_pc_conv`, `obj_qec_chip`: Collectible ship components required to complete various objectives.
- `obj_door`: An object to trigger room changes in GameMaker and separate spaces in rooms.
- `obj_computer`: An object used to save progress, store spare inventory items, and potentially more.
- `obj_inventory_manager`: Object meant to act as player inventory to store other objects.

# Future Work

- Add stealth mechanics and cover/hiding system
- Implement full item collection tracking and win condition
- Dream minigame for puzzle hints and lore
- Character stat customization during creation
- Full cutscenes for intro and endings
- Additional enemy types with varied AI
- Sound design and music integration
- Inventory and upgrade system

# Useful Resources

- [GameMaker Manual](https://manual.yoyogames.com/)
- [GML Reference](https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FGML_Reference.htm)
- [Pixel Art Tutorials (MortMort)](https://www.youtube.com/user/atMNRArt)
- [GameMaker 15 minute tutorial](https://www.youtube.com/watch?v=nwlvT-L9vFg)
- [GameMaker RPG tutorial 1](https://www.youtube.com/watch?v=1J5EydrnIPs)
- [GameMaker RPG tutorial 2](https://www.youtube.com/watch?v=xr0mqIy6DAU)

---

To run or test this project, open the `.yyp` project file in GameMaker and launch the main room from within the IDE. All assets are located within appropriate folders (sprites, objects, scripts, rooms, etc).

