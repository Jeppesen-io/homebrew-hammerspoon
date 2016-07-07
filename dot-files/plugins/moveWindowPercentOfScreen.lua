--- Move window by top/left and botom/right as recent of the screen
function moveWindowPercentOfScreen(x1,y1,x2,y2)
  return function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local bounds = screen:frame()

    -- Set the window location as top/left plus height and width
    topLeftX = bounds.x + (bounds.w * x1)
    topLeftY = bounds.y + (bounds.h * y1)
    width = bounds.w * x2
    height = bounds.h * y2

    --- bring bottom/right of window within screen bounds
    if (topLeftX + width) > (bounds.x + bounds.w) then
      width = (bounds.x + bounds.w) - topLeftX
    end
    if (topLeftY + height) > (bounds.y + bounds.h) then
      height = (bounds.y + bounds.h) - topLeftY
    end

    --- Sed the window to the new location
    f.x = topLeftX
    f.y = topLeftY
    f.w = width
    f.h = height
    win:setFrame(f)
  end
end
