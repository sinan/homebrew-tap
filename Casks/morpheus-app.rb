cask "morpheus-app" do
  version "3.25.0"
  sha256 "4f3fc5a79e7d3bbb29b298576f6111bb3d93a55a787bbd04fa2907f3b0dd6bc9"

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
