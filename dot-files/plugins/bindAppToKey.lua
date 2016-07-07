-- Get home directory (is there a better way?)
homeDir=hs.execute('echo $HOME | tr -d \'\\n\'')

function bindAppToKey(useHomeAppPath,key,app)
  local appPath

  if useHomeAppPath==true then
    appPath=homeDir .. '/Applications/' .. app .. '.app'
  else
    appPath=app
  end

  hs.hotkey.bind(centerhyper, key, function() hs.application.launchOrFocus(appPath) end)
end
