cask 'my-docker' do
  version '0.1'
  url 'https://github.com/Jeppesen-io/homebrew-docker/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-docker'
  sha256 :no_check

  depends_on cask: 'virtualbox'

  depends_on formula: 'docker'
  depends_on formula: 'docker-machine'

end
