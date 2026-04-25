cask "sentinel" do
  version "4.0.0"
  sha256 "b784a225cbe27e202c76ac62308e8d9b101a679a3c1ccbd8c302a1dd464fadca"

  url "https://github.com/tychop/Sentinel/releases/download/v#{version}/Sentinel-59.dmg"
  name "Sentinel"
  desc "GitHub repository, workflow, and PR monitor for macOS"
  homepage "https://github.com/tychop/Sentinel"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Sentinel.app"

  zap trash: [
    "~/Library/Application Support/Sentinel",
    "~/Library/Caches/com.pandy.sentinel.app",
    "~/Library/Preferences/com.pandy.sentinel.app.plist",
    "~/Library/Saved Application State/com.pandy.sentinel.app.savedState",
  ]
end
