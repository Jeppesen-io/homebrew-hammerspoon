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
bindAppToKey(false, 'p', 'Safari')
bindAppToKey(false, 's', 'Rambox')
bindAppToKey(false, 'i', 'iTerm')
bindAppToKey(false, 'm', 'Spotify')
bindAppToKey(false, 'a', 'Visual Studio Code')

-- Sleep display/computer
hs.hotkey.bind(metaKey, 'delete', function() hs.execute('pmset displaysleepnow')  end)

-- Reload hammerspoon config
hs.hotkey.bind(metaKey, 'r', function() hs.reload() end)

--- Move window to left/right/top or bottom half of the screen
hs.hotkey.bind(metaKey, "Up",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))
hs.hotkey.bind(metaKey, "Down",   moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))

---- Move monitors
hs.hotkey.bind(metaKey, "Left",   moveWindowPercentOfScreen(0.0,  0.0,  0.6,  1.0))
hs.hotkey.bind(metaKey, "Right",  moveWindowPercentOfScreen(0.6,  0.0,  1.0,  1.0))
