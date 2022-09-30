#!/usr/bin/osascript
#!/bin/bash
repeat 10000 times
	tell application "LyricsX"
		activate
			delay 60
		if application "LyricsX" is running then
			tell application "LyricsX" to quit
			try
				activate application
			on error number -609
			end try
		end if
	end tell
	try
		activate application
	on error number -600
	end try
end repeat

