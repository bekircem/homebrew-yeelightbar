cask "yeelightbar" do
  version "1.0.0"
  sha256 "bd38a7308ce0e4ec379234c80e494f1cf0364d76d2c9428c4b69e723a3c625d5"

  url "https://github.com/bekircem/YeelightBar/releases/download/v#{version}/YeelightBar-#{version}.dmg"
  name "YeelightBar"
  desc "Native menu bar controller for Yeelight-compatible LAN lights"
  homepage "https://github.com/bekircem/YeelightBar"

  depends_on macos: :ventura

  app "YeelightBar.app"

  uninstall quit: "io.github.bekircem.yeelightbar"

  zap trash: [
    "~/Library/Containers/io.github.bekircem.yeelightbar",
    "~/Library/Preferences/io.github.bekircem.yeelightbar.plist",
  ]
end
