local apps = require('apps')

hl.on("hyprland.start", function()
  hl.exec_cmd(apps.terminal)
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("awww img ~/Pictures/2.jpg")
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
end)
