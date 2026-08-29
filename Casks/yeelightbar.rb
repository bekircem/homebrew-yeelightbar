cask "yeelightbar" do
  version "1.3.1"
  sha256 "6170591c150b7b348bde48694551e4441a6dec63076b40c83808dff11cd17fb5"

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
