cask "tagstudio@alpha" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.3.2"
  sha256 arm:   "eb3b6e4af852d222530f2c87e417e7c15678f42c1175c310f461823f4738a15d",
         intel: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/TagStudioDev/TagStudio/releases/download/v#{version}/tagstudio_macos_#{arch}.tar.gz"
  name "TagStudio"
  desc "Document management system"
  homepage "https://github.com/TagStudioDev/TagStudio"

  app "TagStudio.app"

  zap trash: [
    "~/Library/Preferences/com.github.tagstudiodev.plist",
    "~/Library/Saved Application State/com.github.tagstudiodev.savedState",
  ]
end
