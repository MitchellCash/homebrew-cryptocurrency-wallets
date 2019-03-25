cask 'dash-core' do
  version '0.13.2.0'
  sha256 'f63cf2628036a0bdd6012fe883cc7cbb035ca948c9628c1b11a20d9fb7236f6a'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom'
  name 'Dash Core'
  homepage 'https://www.dash.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Dash-Qt.app', target: 'Dash Core.app'

  zap trash: '~/Library/Preferences/org.dash.Dash-Qt.plist'
end
