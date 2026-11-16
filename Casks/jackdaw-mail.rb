cask "jackdaw-mail" do
  version "0.10.337"
  sha256 "f8e036df7289cc0c458955ce32493ff909fd257b7d3367c1e9d2b0c08808d015"

  url "https://github.com/Uugsx/jackdaw-mail/releases/download/v#{version}/jackdaw-mail-#{version}.dmg",
      verified: "github.com/Uugsx/jackdaw-mail/"
  name "Jackdaw Mail"
  desc "Mail, calendar and contacts client for Exchange (OWA/EWS), IMAP and CalDAV"
  homepage "https://jackdaw-mail.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Jackdaw Mail.app"

  zap trash: [
    "~/Library/Application Support/Jackdaw Mail",
    "~/Library/Preferences/app.jackdaw.mail.plist",
  ]

  caveats <<~EOS
    The app is not notarized by Apple. On first launch, right-click the app and choose Open,
    or allow it in System Settings > Privacy & Security.
  EOS
end
