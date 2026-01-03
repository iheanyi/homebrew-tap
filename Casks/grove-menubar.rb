cask "grove-menubar" do
  version "0.2.6"
  sha256 "a0d65e30c95631561a764d07cd05d22577ae72d2139647f7e979c22ae7677177"

  url "https://github.com/iheanyi/grove/releases/download/menubar-v#{version}/Grove-#{version}-macos.zip"
  name "Grove"
  desc "Menubar app for managing Grove dev servers"
  homepage "https://github.com/iheanyi/grove"

  depends_on formula: "iheanyi/tap/grove"
  depends_on macos: ">= :sonoma"

  app "Grove.app"

  zap trash: [
    "~/Library/Application Support/grove",
    "~/Library/Preferences/com.iheanyi.grove.plist",
  ]
end
