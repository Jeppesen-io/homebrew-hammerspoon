cask 'my-hammerspoon' do

  version '1.11'
  url 'https://github.com/Jeppesen-io/homebrew-hammerspoon/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-hammerspoon'
  sha256 :no_check

  artifact 'homebrew-hammerspoon-master/dot-files/init.lua',  target: "#{ENV['HOME']}/.hammerspoon/init.lua"
  artifact 'homebrew-hammerspoon-master/dot-files/plugins',   target: "#{ENV['HOME']}/.hammerspoon/plugins"

  depends_on cask: 'hammerspoon'

  postflight do

    # Dont show in dock
    `defaults write org.hammerspoon.Hammerspoon MJShowDockIconKey -int 0`

    # show in menu
    `defaults write org.hammerspoon.Hammerspoon MJShowMenuIconKey -int 1`

    # Dont autoupdate
    `defaults write org.hammerspoon.Hammerspoon SUEnableAutomaticChecks -int 1`

  end

end
