cask "macclean" do
  version "1.4"
  sha256 "8922bc7c9bd7a6ccac1e4780e71530cbc49371ac8e2c73dea7434917ea84932a"

  url "https://thulem.com/files/releases/MacClean-#{version}.dmg"
  name "MacClean"
  desc "Review-first Mac cleaner for WeChat/QQ media, System Data, Xcode and AI caches"
  homepage "https://thulem.com/en/"

  livecheck do
    url "https://thulem.com/api/public/config"
    strategy :json do |json|
      json.dig("latestRelease", "version")
    end
  end

  depends_on macos: ">= :sonoma"

  app "MacClean.app"

  zap trash: [
    "~/Library/Application Support/MacClean",
    "~/Library/Caches/com.hr.MacClean",
    "~/Library/Preferences/com.hr.MacClean.plist",
    "~/Library/HTTPStorages/com.hr.MacClean",
  ]
end
