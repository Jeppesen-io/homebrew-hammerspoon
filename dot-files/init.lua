-- Load plugins all my plugins in the plugins dir
for dir in io.popen('ls ./plugins/*.lua| sed "s/\\.lua$//g"'):lines() do
  print("Loading plugin " .. dir)
  require(dir)
end

-- Disable animation
hs.window.animationDuration = 0

-- Set base key combo
righthyper  = {"alt","cmd"}
fullhyper   = {"ctrl","cmd","alt"}
centerhyper = {"ctrl","cmd"}

-- Browsers
bindAppToKey(false, 'c', 'Google Chrome')
bindAppToKey(false, 'v', 'Google Chrome Canary')
bindAppToKey(false, 'x', 'Firefox')
bindAppToKey(false, 'p', 'Safari')

-- Chat
bindAppToKey(false, 's', 'Slack')   -- s for slack
bindAppToKey(false, 'h', 'yakyak')  -- h for hangouts
bindAppToKey(false, 'f', 'Goofy')  -- f for faceboot

-- Other apps
bindAppToKey(false, 'i', 'iTerm')
bindAppToKey(false, 'g', 'Steam')
bindAppToKey(false, 'm', 'Spotify')
bindAppToKey(false, 'a', 'Visual Studio Code')

-- Sleep display/computer
hs.hotkey.bind(centerhyper, 'delete', function() hs.execute('pmset displaysleepnow')  end)
hs.hotkey.bind(fullhyper,   'delete', function() hs.execute('pmset sleepnow')         end)
hs.hotkey.bind('cmd',       'delete', function() hs.execute('sleep .3 && open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app') end)

-- Reload hammerspoon config
hs.hotkey.bind(centerhyper, 'r', function() hs.reload() end)

--- Move window to left/right/top or bottom half of the screen
hs.hotkey.bind(centerhyper, "Left",   moveWindowPercentOfScreen(0.0,  0.0,  0.5,  1.0))
hs.hotkey.bind(centerhyper, "Right",  moveWindowPercentOfScreen(0.5,  0.0,  1.0,  1.0))
hs.hotkey.bind(centerhyper, "Up",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  0.5))
hs.hotkey.bind(centerhyper, "Down",   moveWindowPercentOfScreen(0.0,  0.5,  1.0,  1.0))

---- move monitors, maximize and minimize
hs.hotkey.bind(fullhyper,   "Left",   moveMonitor() )
hs.hotkey.bind(fullhyper,   "Right",  moveMonitor() )
hs.hotkey.bind(fullhyper,   "Down",   function()  hs.window.focusedWindow():minimize() end )
hs.hotkey.bind(fullhyper,   "Up",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))
