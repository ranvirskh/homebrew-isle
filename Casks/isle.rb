cask "isle" do
  version "1.3.0"
  sha256 "61bdd933f3b1f19149b0be63e078fc45c95aa2632a7af53633eb2761f70bfa59"

  url "https://github.com/ranvirskh/isle-cc/releases/download/v#{version}/Isle-#{version}.zip"
  name "Isle"
  desc "Dynamic-island utility for the MacBook notch: now playing, lyrics, calendar, reminders and more"
  homepage "https://github.com/ranvirskh/isle-cc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Isle.app"

  zap trash: [
    "~/Library/Application Support/Isle",
    "~/Library/Caches/Isle",
    "~/Library/Caches/local.isle.app",
    "~/Library/Logs/Isle",
    "~/Library/Preferences/local.isle.app.plist",
  ]

  caveats <<~EOS
    Isle is signed with a local identity and is not notarized, so macOS may warn the first time.
    Right-click Isle in Applications, choose Open, then confirm.
  EOS
end
