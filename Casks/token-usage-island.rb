cask "token-usage-island" do
  version "1.4.1"
  sha256 "6e58f132cd418f75576be935267e1e1719d9c9a2a96c1dca2144e5b7ed2d8975"

  url "https://github.com/pierreprudh/token-usage-island/releases/download/v#{version}/TokenUsageIsland-#{version}.zip"
  name "Token Usage Island"
  desc "Notch HUD for AI-coding plan usage (Claude, Codex, OpenCode)"
  homepage "https://github.com/pierreprudh/token-usage-island"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Token Usage Island.app"

  zap trash: "~/Library/Preferences/com.pierre.tokenusageisland.plist"

  caveats <<~EOS
    Token Usage Island is ad-hoc signed (not notarized), so Gatekeeper needs it
    installed without quarantine:

      brew install --cask --no-quarantine token-usage-island

    On first launch macOS asks to read the "Claude Code-credentials" Keychain
    item — choose Always Allow.
  EOS
end
