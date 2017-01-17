class OnePasswordBackup < Formula
  desc "Automatically copy 1Password backups to an external drive when connected"
  homepage "https://github.com/alyssais/1password-backup"
  head "https://github.com/alyssais/1password-backup", using: :git

  def install
    bin.install "1password_backup"
  end

  plist_options manual: "1password_backup"

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>Program</key>
        <string>#{bin/"1password_backup"}</string>
        <key>StartOnMount</key>
        <true/>
        <key>EnableGlobbing</key>
        <true/>
        <key>WatchPaths</key>
        <array>
          <string>/Users/*/Library/Containers/*.com.agilebits.onepassword-osx-helper/Data/Library/Backups/</string>
        </array>
      </dict>
    </plist>
    EOS
  end
end
