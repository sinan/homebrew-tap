cask "morpheus-app" do
  version "3.24.3"
  sha256 "6ac407a78910db5ce6ea41696e48223a80261a5261816ac26401947f81c4f310"

  url "https://sinan.github.io/morpholog/downloads/Morpheus-v#{version}.dmg",
      verified: "sinan.github.io/morpholog/"
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
