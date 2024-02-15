set wshshell = wscript.CreateObject("wscript.shell")
wshshell.AppActivate "wmplayer", NormalFocus
wshshell.sendkeys "%"
wshshell.sendkeys "%{P}{N}"