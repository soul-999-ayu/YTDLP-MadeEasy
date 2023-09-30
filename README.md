# YTDLP-MadeEasy
A shell script that works on Yt-Dlp but with easy to remember commands and essential features.

## What is it?:
This is a shell script written to solve the problem of remembering YT-DLP commands that are very hard to remember. You can use this shell script to perform all the essential functions of YT-DLP (All features will be added soon). This script was originally developed for a different project, but that project failed so, we released this separately.

## Features:
* Easy to remember codes.
* Downloads the video where this file is located.
* Works in both Windows and Linux.
* Has all important features of YT-DLP.

## Requirements:
This program will automatically install YT-DLP upon running the check command:
````
sh script.sh Check
````
or
````
sh script.sh c
````
or
````
sh script.sh check
````

But if it does not, please install it manually from here: https://github.com/yt-dlp/yt-dlp/releases

Please install FFmpeg manually: https://www.videoproc.com/resource/how-to-install-ffmpeg.htm

## Available Commands:
### Notes:
* Open Terminal in the directory where the script is located and then type these commands.
* You need to use Linux Subsystem for Windows to run it in Windows.
  
### Updating YT-DLP:
````
sh script.sh Update
````
or
````
sh script.sh u
````
or
````
sh script.sh update
````
### Login with cookies:
````
sh script.sh Cookies PATH_TO_COOKIES.TXT
````
or
````
sh script.sh cookies PATH_TO_COOKIES.TXT
````
### Checking available video qualities:
````
sh script.sh Quality https://youtu.be/XlSAO9Ff2Yk
````
or
````
sh script.sh q https://youtu.be/XlSAO9Ff2Yk
````
or
````
sh script.sh quality https://youtu.be/XlSAO9Ff2Yk
````
### Downloading a video:
````
sh script.sh Download https://youtu.be/XlSAO9Ff2Yk 1080
````
or
````
sh script.sh d https://youtu.be/XlSAO9Ff2Yk 1080
````
or
````
sh script.sh download https://youtu.be/XlSAO9Ff2Yk 1080
````
1080 represents video quality in pixels (change it as your wish), change the video link with yours.
### Downloading a video with thumbnail:
````
sh script.sh Download https://youtu.be/XlSAO9Ff2Yk 1080 Thumbnail
````
or
````
sh script.sh d https://youtu.be/XlSAO9Ff2Yk 1080 t
````
or
````
sh script.sh download https://youtu.be/XlSAO9Ff2Yk 1080 thumbnail
````
### Downloading a video with subtitles:
````
sh script.sh Download https://youtu.be/XlSAO9Ff2Yk 1080 Subtitle
````
or
````
sh script.sh d https://youtu.be/XlSAO9Ff2Yk 1080 s
````
or
````
sh script.sh download https://youtu.be/XlSAO9Ff2Yk 1080 subtitle
````
### Downloading a video with splitted chapters:
````
sh script.sh Download https://youtu.be/XlSAO9Ff2Yk 1080 Chapter
````
or
````
sh script.sh d https://youtu.be/XlSAO9Ff2Yk 1080 chap
````
or
````
sh script.sh download https://youtu.be/XlSAO9Ff2Yk 1080 chapter
````
### Download a video with splitted chapters, thumbnail and subtitle:
````
sh script.sh download https://youtu.be/XlSAO9Ff2Yk 1080 t s chap
````
t s and chap can be interchanged.
### Downloading playlist as zip:
````
sh script.sh Playlist https://www.youtube.com/playlist?list=PLGNBsFe6K3EswJDg22TP8kZtMM1kRB9iG 1080
````

## Conclusion:
Many people find it hard to remember complex commands like "yt-dlp -f 'bv*[height=1080]+ba' https://youtu.be/XlSAO9Ff2Y" so, we've created this script that works on YT-DLP internally, and it does work perfectly without complex commands.
You can get the script from files sections of this page.
Kindly check our other repositories as well, Thanks.
