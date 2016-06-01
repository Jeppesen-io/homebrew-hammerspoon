cask 'hammerspoon' do
  version '1.1'
  url 'https://github.com/Jeppesen-io/homebrew-hammerspoon/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-hammerspoon'
  sha256 :no_check

  artifact 'homebrew-hammerspoon-master/dot-files', target: "#{ENV['HOME']}/.hammerspoon"

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
