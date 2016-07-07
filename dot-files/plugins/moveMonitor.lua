---- Move window between screens
function moveMonitor()
  return function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local screens= hs.screen.allScreens()
    if #screens > 1 then
      win:moveToScreen(screen:next())
    end
  end
end
