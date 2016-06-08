function bindWindowToKey(key,windowTitle)
  hs.hotkey.bind(centerhyper, key, function()
    local win = hs.window.find(windowTitle)
    if win ~= nil then
      local frame = win:frame()
      win:focus()
    end
  end)
end
