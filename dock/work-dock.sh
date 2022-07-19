#!/bin/sh

# "tile-data" =             {
#     "bundle-identifier" = "com.google.Chrome";
#     "file-data" =                 {
#         "_CFURLString" = "file:///Applications/Google%20Chrome.app/";
#         "_CFURLStringType" = 15;
#     };
#     "file-label" = "Google Chrome";
# };
# "tile-data" =             {
#     "bundle-identifier" = "com.tinyspeck.slackmacgap";
#     "file-data" =                 {
#         "_CFURLString" = "file:///Applications/Slack.app/";
#         "_CFURLStringType" = 15;
#     };
#     "file-label" = Slack;
# };
# "tile-data" =             {
#     "bundle-identifier" = "com.google.Chrome.app.fmgjjmmmlfnkbppncabfkddbjimcfncm";
#     "file-data" =                 {
#         "_CFURLString" = "file:///Users/riccardo.novaglia/Applications/Chrome%20Apps.localized/Gmail.app/";
#         "_CFURLStringType" = 15;
#     };
#     "file-label" = Gmail;
# };
# "tile-data" =             {
#     "bundle-identifier" = "com.google.Chrome.app.kjgfgldnnfoeklkmfkjfagphfepbbdan";
#     "file-data" =                 {
#         "_CFURLString" = "file:///Users/riccardo.novaglia/Applications/Chrome%20Apps.localized/Meet.app/";
#         "_CFURLStringType" = 15;
#     };
#     "file-label" = Meet;
# };
# "tile-data" =             {
#     "bundle-identifier" = "com.google.Chrome.app.eilembjdkfgodjkcjnpgpaenohkicgjd";
#     "file-data" =                 {
#         "_CFURLString" = "file:///Users/riccardo.novaglia/Applications/Chrome%20Apps.localized/Keep.app/";
#         "_CFURLStringType" = 15;
#     };
#     "file-label" = Keep;
# };

# <dict>
#       <key>tile-data</key>
#       <dict>
#           <key>file-data</key>
#           <dict>
#               <key>_CFURLString</key>
#               <string>file:///Applications/Google%20Chrome.app/</string>
#               <key>_CFURLStringType</key>
#               <integer>15</integer>
#           </dict>
#       </dict>
# </dict>

__dock_item() {
    printf '%s%s%s%s%s' \
           '<dict><key>tile-data</key><dict><key>file-data</key><dict>' \
           '<key>_CFURLString</key><string>' \
           "$1" \
           '</string><key>_CFURLStringType</key><integer>15</integer>' \
           '</dict></dict></dict>'
}

CHROME=$(__dock_item 'file:///Applications/Google%20Chrome.app/')
# echo $CHROME
defaults write com.apple.dock persistent-apps -array-add $CHROME
 
killall Dock

# https://stackoverflow.com/questions/59614341/add-terminal-to-dock-persistent-apps-with-default-write-with-foreign-language-ma
