cask "isle" do
  version "1.3.8"
  sha256 "9c14be3325a1d9deb6fec7503fb4603a76aefe6c0b7c16e41b877d3eb0434d83"

  url "https://github.com/ranvirskh/isle-cc/releases/download/v#{version}/Isle-#{version}.zip"
  name "Isle"
  desc "Dynamic-island utility for the MacBook notch"
  homepage "https://github.com/ranvirskh/isle-cc"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

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
