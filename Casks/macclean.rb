cask "macclean" do
  version "1.6"
  sha256 "c955d290a2e99616b0de52a97a08359c6593bd6228d687c37abdec701c1a1938"

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
