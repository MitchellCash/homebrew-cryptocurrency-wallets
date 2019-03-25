cask 'dash-electrum' do
  version '3.2.5.1'
  sha256 '9acfd9675f3dea2b16ccb19d1bf290e6476795ff6fa7344270cd55a8dbe0cbc7'

  # github.com/akhavr/electrum-dash was verified as official when first introduced to the cask
  url "https://github.com/akhavr/electrum-dash/releases/download/#{version}/Dash-Electrum-#{version}-macosx.dmg"
  appcast 'https://github.com/akhavr/electrum-dash/releases.atom'
  name 'Dash Electrum'
  homepage 'https://electrum.dash.org/'

  app 'Dash Electrum.app'
end
