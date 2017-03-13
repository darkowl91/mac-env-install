-- run dev tools install
do shell script "xcode-select --install"
do shell script "sleep 1"

tell application "System Events"
	tell process "Install Command Line Developer Tools"
		keystroke return
		click button "Agree" of window "License Agreement"
	end tell
end tell

-- wait to complete dev tools istall
tell application "System Events"
	tell process "Install Command Line Developer Tools"
		repeat until get properties of button 1 of window "Install Command Line Developer Tools" is not equal to "Done"
		end repeat
		click button "Done" of window "Install Command Line Developer Tools"
	end tell
end tell

-- get path to sh script
tell application "Finder"
	set myFolder to parent of (path to me) as string
	set sh_name to myFolder & "brew-env-install.sh"
	set sh_path to quoted form of POSIX path of sh_name
end tell

-- run sh script for brew
do shell script "bash " & sh_path with administrator privileges


