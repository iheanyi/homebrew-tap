cask "grove-menubar" do
  version "0.3.0"
  sha256 "13cd2623b6233ce42a60d86343000e30dcf6b2fc15b5066eba748295dcd51eea"

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
