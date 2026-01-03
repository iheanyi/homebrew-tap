cask "grove-menubar" do
  version "0.3.1"
  sha256 "0a75c1f293bf7bf886292edd587140637495b79046276ed4d3d2bca45897f8d5"

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
