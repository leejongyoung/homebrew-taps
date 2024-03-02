cask "egovframedev@4.2.0" do
  arch arm: "AArch64", intel: "x86_64"

  version "4.2.0"
  sha256 arm:   "b6c5a3eae903cbc4bdffa490a97853330329a4215af8ae9d5cb8d45d3cbb34c6",
         intel: "93e2cd8ba2cca542509601a1627fe7a468fadacd83aa9f667c014259afdbeaca"

  url "https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-#{version}-Mac-#{arch}.dmg"
  name "eGovFrameDev"
  desc "Open-source framework by South Korea for web-based public service development"
  homepage "https://www.egovframe.go.kr/"

  app on_arch_conditional arm: "eGovFrameDev-#{version}-Mac-#{arch}.app", intel: "eGovFrameDev-#{version}-Mac-#{arch}_dpit.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
