-- Get home directory (is there a better way?)
function bindAppToKey(key,app)
  hs.hotkey.bind(metaKey, key, function() hs.application.launchOrFocusByBundleID(app) end)
end
