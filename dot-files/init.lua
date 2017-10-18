-- Load plugins all my plugins in the plugins dir
for dir in io.popen('ls ./plugins/*.lua| sed "s/\\.lua$//g"'):lines() do
  print("Loading plugin " .. dir)
  require(dir)
end

-- Disable animation
hs.window.animationDuration = 0

-- Set base key combo
metaKey      = {'ctrl','cmd'}
superMetaKey = {'ctrl','cmd','option'}

-- Lauch or focus app by key
bindAppToKey('c', 'com.google.Chrome')
bindAppToKey('v', 'com.google.Chrome.canary')
bindAppToKey('p', 'com.apple.Safari')
bindAppToKey('s', 'com.saenzramiro.rambox')
bindAppToKey('d', 'com.googlecode.iterm2')
bindAppToKey('m', 'com.spotify.client')

-- Sleep display/computer
hs.hotkey.bind(metaKey, 'l', function() hs.execute('pmset displaysleepnow')  end)

-- Reload hammerspoon config
hs.hotkey.bind(metaKey, 'r', function() hs.reload() end)

-- fill screen
hs.hotkey.bind(metaKey, 'Up',     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))

-- bottom 20%
hs.hotkey.bind(metaKey, 'Down',   moveWindowPercentOfScreen(0.0,  0.8,  1.0,  1.0))

-- left 60%
hs.hotkey.bind(metaKey, 'Left',   moveWindowPercentOfScreen(0.0,  0.0,  0.6,  1.0))

-- right 40%
hs.hotkey.bind(metaKey, 'Right',  moveWindowPercentOfScreen(0.6,  0.0,  1.0,  1.0))

---- Move monitors
hs.hotkey.bind(superMetaKey,   'Left',   moveMonitor() )
hs.hotkey.bind(superMetaKey,   'Right',  moveMonitor() )
