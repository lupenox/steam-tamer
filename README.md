# 🐺 Steam Tamer: A Flicker-Free L4D2 Launch Script for Linux

Tame your Steam games with ease. This custom Bash script launches **Left 4 Dead 2** on Linux (Nobara, KDE Plasma) with optimal performance and **no screen flicker**. Designed for integrated GPUs and gamers who want smoother gameplay without tearing or compositor headaches.

## 🎮 Features

- 🧠 Forces use of real GPU (`RADV`, not `llvmpipe`)
- 🎯 Launches L4D2 with clean, safe flags (`-gl`, `-noborder`, `+fps_max`)
- 🧼 Auto-clears shader and compat cache for game stability
- 🛑 Suspends KDE compositor on launch, resumes after exit
- 🐧 Linux-native performance with OpenGL
- 🔒 Portable and open-source!

## 🚀 Usage

1. **Clone this repo** or download `launch-l4d2.sh` manually:
   ```bash
   git clone https://github.com/lupenox/steam-tamer.git
   cd steam-tamer
   chmod +x launch-l4d2.sh
Run the script from your terminal:

bash
Copy
Edit
./launch-l4d2.sh
Enjoy a clean, flicker-free Left 4 Dead 2 session at 1600x900 with 60 FPS lock.

⚙️ Dependencies
Steam installed (steam)

KDE Plasma with qdbus

Mesa Vulkan drivers (RADV)

Nobara or Fedora-based distro recommended

❓ Why This Exists
Some Linux systems (especially with integrated AMD GPUs) default to software rendering (llvmpipe), causing performance issues. KDE’s compositor also causes screen flickering in borderless windowed mode. This script fixes both problems — cleanly and automatically.

🛠️ Author
Made with love and stubbornness by Lupenox
🧠 DevOps enthusiast | 🐧 Linux lover | 💻 CS student | 🎮 Game modder
