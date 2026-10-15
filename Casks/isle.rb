cask "isle" do
  version "1.3.3"
  sha256 "9d5881eacff8f55ab40746212a812f983d347a4aa393e7beccf3ab00939e7c69"

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
