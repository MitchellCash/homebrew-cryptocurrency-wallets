cask 'pivx-core' do
  version '3.1.1'
  sha256 '75f1a265b36c5f1df2a389a3b1d90bcfbd78625e8cd7ea723867c791c031c94c'

  # github.com/PIVX-Project/PIVX was verified as official when first introduced to the cask
  url "https://github.com/PIVX-Project/PIVX/releases/download/v#{version}/pivx-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/PIVX-Project/PIVX/releases.atom'
  name 'PIVX Core'
  homepage 'https://pivx.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'PIVX-Qt.app', target: 'PIVX Core.app'

  zap trash: '~/Library/Preferences/org.pivx.PIVX-Qt.plist'
end
