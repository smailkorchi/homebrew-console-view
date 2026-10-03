cask "console-view" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "1.0.1"
  sha256 arm:   "39993639819d06ea5516a49ca62df3b2770c26a732c002a1c2f752298838790d",
         intel: "49486aad20845117a0362ec1440bde50710839cb00ed0429e991936c08cfb531"

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
