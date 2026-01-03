cask "grove-menubar" do
  version "0.4.0"
  sha256 "b9f58a7732686a6548440425e1452c36867c8ed8f96e01a28cd276ddf06612b0"

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
