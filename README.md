# Space Shooter 3D

> A student game development project — open source, free to use and modify.

A fast-paced 3D arcade space shooter built with **Godot Engine 4.x**.  
Blast through an endless wave of meteors and obstacles, survive as long as you can, and beat your own high score!

**[Play on itch.io](https://mournfulox.itch.io/space-shooter-3d)**

---

## Gameplay

Pilot your spacecraft through an ever-accelerating obstacle course.  
Every session is different — meteors and obstacles are procedurally spawned.  
Your best survival time is saved automatically between sessions.

---

## Controls

| Action | Input |
|--------|-------|
| Move   | `W` `A` `S` `D` / Arrow Keys |
| Shoot  | `Space` |

---

## Features

- Endless survival mode with a live timer
- Procedurally spawned meteors and obstacles
- Persistent high score across sessions
- Retro arcade aesthetic with custom fonts and shaders
- Original sound effects and background music
- Modular scene structure — easy to extend and experiment with

---

## Tech Stack

| Tool | Usage |
|------|-------|
| [Godot Engine 4.x](https://godotengine.org/) | Game engine (Forward Plus renderer) |
| GDScript | Game logic and scripting |

---

## Project Structure

```
space-shooter/
├── Scenes/          # Game scenes and GDScript logic
│   ├── main.gd      # Core game loop
│   ├── player.gd    # Player controller
│   ├── laser.gd     # Projectile system
│   ├── meteors.gd   # Meteor spawner
│   ├── obstacle.gd  # Obstacle behavior
│   └── GlobalRecord.gd  # Score persistence (AutoLoad)
├── graphics/        # 3D models and textures
├── audio/           # Sound effects and music
└── fonts/           # Custom fonts
```

---

## Getting Started

1. Download and install [Godot Engine 4.x](https://godotengine.org/download/)
2. Clone or download this repository
3. Open the project in Godot (`Project > Import`)
4. Press `F5` to run

---

## About This Project

This is a **student learning project** created as part of a game development exercise.  
It was built to explore Godot's 3D pipeline, procedural spawning, and basic game feel — not a commercial product.

Feel free to use it as a reference, a starting point, or take it in any direction you like.

---

## Credits

| Asset | Source |
|-------|--------|
| 3D Models | [Kenney Space Kit](https://kenney.nl/assets/space-kit) |
| Laser SFX | [OpenGameArt](https://opengameart.org/content/laser-fire) |
| Explosion SFX | [OpenGameArt](https://opengameart.org/content/explosion-0) |
| Background Music | [OpenGameArt](https://opengameart.org/content/space-music) |

---

## License

This project is released under the **MIT License** — see [LICENSE](LICENSE) for details.

You are free to:
- Use this project for any purpose (personal, educational, commercial)
- Modify, adapt, and build upon it
- Distribute your own versions

No attribution required, though it's always appreciated.
