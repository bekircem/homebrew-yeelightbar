cask "yeelightbar" do
  version "1.3.2"
  sha256 "37173061c16861ec94d9076589308d6db9268770506a7d0ca7b3ca19c5bfa5c2"

  url "https://github.com/bekircem/YeelightBar/releases/download/v#{version}/YeelightBar-#{version}.dmg"
  name "YeelightBar"
  desc "Native menu bar controller for Yeelight-compatible LAN lights"
  homepage "https://github.com/bekircem/YeelightBar"

  auto_updates true

  depends_on macos: :tahoe

  app "YeelightBar.app"

  uninstall quit: "io.github.bekircem.yeelightbar"

  zap trash: [
    "~/Library/Containers/io.github.bekircem.yeelightbar",
    "~/Library/Preferences/io.github.bekircem.yeelightbar.plist",
  ]
end
