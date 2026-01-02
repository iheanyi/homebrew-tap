cask "grove-menubar" do
  version "menubar-v0.2.4"
  sha256 "4d47bc247e3c79e4d2f740b51dfd4cbf645c60697a9086e3736e938325f6a3a3"

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
