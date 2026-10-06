cask "omni" do
  version "0.1.0"
  sha256 "c5001cd3edc9860aff58e4584b23deb7f7c65d38e7258751cff3459c91539dfa"

  url "https://www.getomni.space/downloads/Omni_#{version}_aarch64.dmg"
  name "Omni"
  desc "Email triage, drafted replies and one note beside Apple Mail"
  homepage "https://www.getomni.space/"

  livecheck do
    url "https://www.getomni.space/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Omni.app"
end
