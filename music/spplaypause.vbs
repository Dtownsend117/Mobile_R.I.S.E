set wshshell = wscript.CreateObject("wscript.shell")
wshshell.AppActivate "wmplayer", NormalFocus
wshshell.AppActivate "WMPlayer"
wshshell.sendkeys([char]11)