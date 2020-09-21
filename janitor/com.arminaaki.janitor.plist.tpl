<!-- 
### Job definition for docker-janitor

# Place The file in ~/Library/LaunchAgents/...
 $ cp com.arminaaki.janitor.plist ~/Library/LaunchAgents/com.arminaaki.janitor.plist

# Load the job:
  $ launchctl load ~/Library/LaunchAgents/com.arminaaki.janitor.plist

# Start the job:
  $ launchctl start com.arminaaki.janitor.plist

# Verify the job is running:
  $ log show \-\-predicate 'eventMessage contains "Janitor"' \-\-last 30m
-->

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
  "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.arminaaki.janitor</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/bin/janitor</string>
    </array>
    <key>StartInterval</key>
    <integer>FREQUENCY</integer>
</dict>
</plist>

