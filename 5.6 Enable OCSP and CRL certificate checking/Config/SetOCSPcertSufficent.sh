#!/bin/bash

user=$( python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");' )

defaults write /Users/$user/Library/Preferences/com.apple.security.revocation OCSPSufficientPerCert -int 1