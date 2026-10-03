cask "console-view" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "1.0.0"
  sha256 arm:   "6a66e000145f5e279b85d07b8c2aff512b49c8b26c2c9bd236c24cdeaeedfb4c",
         intel: "1b7e45b474215a5202335bd168be7f4e360ecb12dda3b361ca62298d27363ed8"

  url "https://github.com/smailkorchi/console-view/releases/download/v#{version}/Console-View-#{version}-#{arch}.dmg"
  name "Console View"
  desc "View HDMI-connected consoles through a USB capture card"
  homepage "https://github.com/smailkorchi/console-view"

  depends_on macos: :sonoma

  app "Console View.app"

  caveats <<~EOS
    Console View is ad-hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, review the app's source and release,
    then use System Settings > Privacy & Security > Open Anyway if you trust it.
  EOS
end
