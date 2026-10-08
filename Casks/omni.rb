cask "omni" do
  version "0.1.1"
  sha256 "2afa71366ef30a1be7fa7a87a9309f998d50b23f1642299b5d4d5b6c52b0b20f"

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
  depends_on macos: :tahoe

  app "Omni.app"
end
