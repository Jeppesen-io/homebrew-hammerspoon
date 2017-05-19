-- Load plugins all my plugins in the plugins dir
for dir in io.popen('ls ./plugins/*.lua| sed "s/\\.lua$//g"'):lines() do
  print("Loading plugin " .. dir)
  require(dir)
end

-- Disable animation
hs.window.animationDuration = 0

-- Set base key combo
metaKey = {"ctrl","cmd"}

-- Lauch or focus app by key
bindAppToKey(false, 'c', 'Google Chrome')
bindAppToKey(false, 'v', 'Google Chrome Canary')
bindAppToKey(false, 'x', 'Firefox')
bindAppToKey(false, 'p', 'Safari')
bindAppToKey(false, 's', 'Slack')
bindAppToKey(false, 'g', 'Goofy')
bindAppToKey(false, 'i', 'iTerm')
bindAppToKey(false, 'm', 'Spotify')
bindAppToKey(false, 'a', 'Visual Studio Code')

-- Sleep display/computer
hs.hotkey.bind(metaKey, 'delete', function() hs.execute('pmset displaysleepnow')  end)

-- Reload hammerspoon config
hs.hotkey.bind(metaKey, 'r', function() hs.reload() end)

--- Move window to left/right/top or bottom half of the screen
hs.hotkey.bind(metaKey, "Up",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  0.65))
hs.hotkey.bind(metaKey, "Down",   moveWindowPercentOfScreen(0.0,  0.65,  1.0,  1.0))

---- Move monitors
hs.hotkey.bind(metaKey,   "Left",   moveMonitor() )
hs.hotkey.bind(metaKey,   "Right",  moveMonitor() )

---- Resize window to fill screen
hs.hotkey.bind(metaKey,   "f",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))


---- Switch to window using hints
hs.hotkey.bind(metaKey, "o", function()
  hs.hints.windowHints()
end)
