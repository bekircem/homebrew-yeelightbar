cask "yeelightbar" do
  version "1.1.0"
  sha256 "b1adac55a58949837f8423a924f7adf75cd563b66941c2f0c8d25e3e26a0801e"

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
