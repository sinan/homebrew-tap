cask "morpheus-app" do
  version "3.25.1"
  sha256 "388b75f8b54fa1814e594036ea4fe6b96f5d29e1f515597d0dee2a6341d4dccd"

  url "https://sales.notbad.engineering/d/morpheus/#{version}.dmg"
  name "Morpheus"
  desc "Move and resize windows with modifier keys and the mouse"
  homepage "https://notbad.engineering/morpheus"

  livecheck do
    url "https://sinan.github.io/morpholog/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Morpheus.app"

  uninstall quit: "co.notbadengineering.Morpheus"

  zap trash: [
    "~/Library/Application Support/co.notbadengineering.Morpheus",
    "~/Library/Caches/co.notbadengineering.Morpheus",
    "~/Library/HTTPStorages/co.notbadengineering.Morpheus",
    "~/Library/Preferences/co.notbadengineering.Morpheus.plist",
    "~/Library/Preferences/co.notbadengineering.Morpheus.prefs.plist",
  ]
end
