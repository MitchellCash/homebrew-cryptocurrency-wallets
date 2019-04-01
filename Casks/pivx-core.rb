cask 'pivx-core' do
  version '3.2.0'
  sha256 'dae844e0a2aa8b72c09bba8cd40d46e338d3d6801aa342a9b79e7bbe5e7e5f8a'

  # github.com/PIVX-Project/PIVX was verified as official when first introduced to the cask
  url "https://github.com/PIVX-Project/PIVX/releases/download/v#{version}/pivx-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/PIVX-Project/PIVX/releases.atom'
  name 'PIVX Core'
  homepage 'https://pivx.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'PIVX-Qt.app', target: 'PIVX Core.app'

  zap trash: [
               '~/Library/Preferences/org.pivx.PIVX-Qt.plist',
               '~/Library/Saved Application State/io.pivx.Pivx-Qt.savedState',
             ]
end
