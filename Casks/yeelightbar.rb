cask "yeelightbar" do
  version "1.2.0"
  sha256 "72443ffb4ea9e4844d4ebcd452198dcf36ad26da2ef4e28bf4fcd4cca1b4e2d7"

  url "https://github.com/bekircem/YeelightBar/releases/download/v#{version}/YeelightBar-#{version}.dmg"
  name "YeelightBar"
  desc "Native menu bar controller for Yeelight-compatible LAN lights"
  homepage "https://github.com/bekircem/YeelightBar"

  auto_updates true

  depends_on macos: :ventura

  app "YeelightBar.app"

  uninstall quit: "io.github.bekircem.yeelightbar"

  zap trash: [
    "~/Library/Containers/io.github.bekircem.yeelightbar",
    "~/Library/Preferences/io.github.bekircem.yeelightbar.plist",
  ]
end
