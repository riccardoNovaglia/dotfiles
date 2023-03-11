on findMatchingTabs(targetAddress) 
    set matchingTabs to {}
    set blankTab to missing value
    
    tell application "Google Chrome"
        repeat with w in windows
            repeat with t in tabs of w
                if URL of t contains targetAddress then
                    set end of matchingTabs to t
                else if URL of t contains "chrome://newtab/" then
                    set blankTab to t
                end if
            end repeat
        end repeat
    end tell
    
    return {matchingTabs, blankTab}
end findMatchingTabs

on run argv
    if count of argv < 1 then
        error "You need to provide at least a URL"
    end if
    set targetAddress to item 1 of argv

    set {matchingTabs, blankTab} to findMatchingTabs(targetAddress)

    tell application "Google Chrome"
        if count of matchingTabs > 0 then
            repeat with m in matchingTabs
                tell m to reload
            end repeat
        else
            if blankTab is missing value then
                make new tab at end of tabs of window 1 with properties {URL:targetAddress}
            else
                set URL of blankTab to targetAddress
            end if
        end if
    end tell
end run
