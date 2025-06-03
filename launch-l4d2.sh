#!/bin/bash

# 🐺 Use real GPU, not llvmpipe
export MESA_VK_DEVICE_SELECT=0
export RADV_PERFTEST=aco

# 🚫 Disable KDE compositor to avoid flickering
qdbus org.kde.KWin /Compositor suspend

# 🧼 Clear broken shadercache if needed (optional on launch)
rm -rf ~/.steam/steam/steamapps/shadercache/550
rm -rf ~/.steam/steam/steamapps/compatdata/550

# 🧟 Launch Left 4 Dead 2 using native OpenGL with safe settings
steam -applaunch 550 \
  -novid -nojoy -gl -windowed -noborder -w 1600 -h 900 \
  +mat_queue_mode 2 +fps_max 60

# ⏳ Wait for L4D2 to fully close
while pgrep -f left4dead2 > /dev/null; do
  sleep 2
done

# 🎨 Re-enable compositor after game exits
qdbus org.kde.KWin /Compositor resume

