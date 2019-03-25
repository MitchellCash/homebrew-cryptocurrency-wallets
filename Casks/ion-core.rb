cask 'ion-core' do
  version '3.1.01'
  sha256 '3a439f9b24aeb2107aa2c5b9bf9ec430cdefd64f763753198057e4af161cc30f'

  url "https://github.com/ioncoincore/ion/releases/download/v#{version}/ion-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/ioncoincore/ion/releases.atom'
  name 'ION Core'
  homepage 'https://github.com/ioncoincore/ion/blob/master/README.md'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Ion-Qt.app', target: 'Ion Core.app'

  zap trash: '~/Library/Preferences/org.ioncoin.Ion-Qt.plist'
end
