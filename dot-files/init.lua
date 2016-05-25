-- Disable animation
hs.window.animationDuration = 0

-- Set base key combo
righthyper  = {"alt","cmd"}
fullhyper   = {"ctrl","cmd","alt"}
centerhyper = {"ctrl","cmd"}

-- App launcher/switcher: - drop the mike and walk away
require 'bindAppToKey'
bindAppToKey(true,  's',  'Slack')
bindAppToKey(true,  'i',  'iTerm')
bindAppToKey(true,  'g',  'Steam')
bindAppToKey(false, 'c',  'Google Chrome')
bindAppToKey(false, 'v',  'Google Chrome Canary')
bindAppToKey(true,  'm',  'Spotify')
bindAppToKey(true,  'a',  'Visual Studio Code')

-- Window switcher
require 'bindWindowToKey'
bindWindowToKey('h','Hangouts')

-- Sleep display/computer
hs.hotkey.bind(centerhyper, 'delete', function() hs.execute('pmset displaysleepnow')  end)
hs.hotkey.bind(fullhyper,   'delete', function() hs.execute('pmset sleepnow')         end)
hs.hotkey.bind('cmd',       'delete', function() hs.execute('sleep .3 && open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app') end)

-- Reload hammerspoon config
hs.hotkey.bind(centerhyper, 'r', function() hs.reload() end)

--- Move window to left/right/top or bottom half of the screen
require 'moveWindowPercentOfScreen'
hs.hotkey.bind(centerhyper, "Left",   moveWindowPercentOfScreen(0.0,  0.0,  0.5,  1.0))
hs.hotkey.bind(centerhyper, "Right",  moveWindowPercentOfScreen(0.5,  0.0,  1.0,  1.0))
hs.hotkey.bind(centerhyper, "Up",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  0.5))
hs.hotkey.bind(centerhyper, "Down",   moveWindowPercentOfScreen(0.0,  0.5,  1.0,  1.0))

--- fullhyper + any direction maximize the window
hs.hotkey.bind(fullhyper,   "Left",   moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))
hs.hotkey.bind(fullhyper,   "Right",  moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))
hs.hotkey.bind(fullhyper,   "Down",   moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))
hs.hotkey.bind(fullhyper,   "Up",     moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))
hs.hotkey.bind(fullhyper,   "Space",  moveWindowPercentOfScreen(0.0,  0.0,  1.0,  1.0))

--- Move window back of stack (does not work perfrectly)
hs.hotkey.bind(centerhyper, "Return", function()
  local win = hs.window.focusedWindow()
  win:sendToBack()
end)

--- Bind moveScreen to hotkey
require 'moveMonitor'
hs.hotkey.bind(centerhyper, "space", moveMonitor())
