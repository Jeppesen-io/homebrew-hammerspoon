cask 'hammerspoon' do
  version '0.1'
  url 'https://github.com/Jeppesen-io/homebrew-hammerspoon/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-hammerspoon'
  sha256 :no_check

  artifact 'homebrew-hammerspoon-master/dot-files', target: "#{ENV['HOME']}/.hammerspoon"

  depends_on cask: 'hammerspoon'

end
