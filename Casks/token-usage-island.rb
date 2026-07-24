cask "token-usage-island" do
  version "1.1.0"
  sha256 "29ac520ed2cf7e219e06273ebbbdc56a25b3de16908446b1549ed96e661ef379"

  url "https://github.com/pierreprudh/token-usage-island/releases/download/v#{version}/TokenUsageIsland-#{version}.zip"
  name "Token Usage Island"
  desc "Notch HUD for AI-coding plan usage (Claude, Codex, OpenCode)"
  homepage "https://github.com/pierreprudh/token-usage-island"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

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
