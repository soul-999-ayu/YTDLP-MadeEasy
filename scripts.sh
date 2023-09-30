if [ "$1" = "Check" ] || [ "$1" = "c" ] || [ "$1" = "check" ] ;
then
	if [ ! command -v <yt-dlp --version> /dev/null ]
	then	
		if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]
		then
			echo "Installing"
			sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
			sudo chmod a+rx /usr/local/bin/yt-dlp
		elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]
		then
			scoop install yt-dlp
		elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]
		then
			scoop install yt-dlp
		fi
	else
		echo "Yt-dlp is installed. Current version is:"
		yt-dlp --version
	fi
elif [ "$1" = "Quality" ] || [ "$1" = "q" ] || [ "$1" = "quality" ] ;
then
	yt-dlp -F $2
elif [ "$1" = "Download" ] || [ "$1" = "d" ] || [ "$1" = "download" ] ;
then	
	__thumb="0"
	__sub="0"
	__chap="0"
	if [ "$4" = "Thumbnail" ] || [ "$5" = "Thumbnail" ] || [ "$6" = "Thumbnail" ] || [ "$4" = "t" ] || [ "$5" = "t" ] || [ "$6" = "t" ] || [ "$4" = "thumbnail" ] || [ "$5" = "thumbnail" ] || [ "$6" = "thumbnail" ] ;
	then
		__thumb="1"
	fi
	if [ "$4" = "Subtitle" ] || [ "$5" = "Subtitle" ] || [ "$6" = "Subtitle" ] || [ "$4" = "s" ] || [ "$5" = "s" ] || [ "$6" = "s" ] || [ "$4" = "subtitle" ] || [ "$5" = "subtitle" ] || [ "$6" = "subtitle" ];
	then
		__sub="1"
	fi
	if [ "$4" = "Chapter" ] || [ "$5" = "Chapter" ] || [ "$6" = "Chapter" ] || [ "$4" = "chap" ] || [ "$5" = "chap" ] || [ "$6" = "chap" ] || [ "$4" = "chapter" ] || [ "$5" = "chapter" ] || [ "$6" = "chapter" ];
	then
		__chap="1"
	fi
	
	if [ "$__thumb" = "1" ] ;
	then
		if [ "$__sub" = "0" ] ;
		then
			if [ "$__chap" = "0" ] ;
			then
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --write-thumbnail
			else
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --write-thumbnail --split-chapters
			fi
		else
			if [ "$__chap" = "0" ] ;
			then
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --write-thumbnail --write-subs
			else
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --write-thumbnail --split-chapters --write-subs
			fi
		fi
	else
		if [ "$__sub" = "0" ] ;
		then
			if [ "$__chap" = "0" ] ;
			then
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3"
			else
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --split-chapters
			fi
		else
			if [ "$__chap" = "0" ] ;
			then
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --write-subs
			else
				yt-dlp -f 'bv*[height='$3']+ba' $2 -o "%(title)s""-$3" --split-chapters --write-subs
			fi
		fi
	fi
elif [ "$1" = "Update" ] || [ "$1" = "u" ] || [ "$1" = "update" ] ;
then
	yt-dlp -U
elif [ "$1" = "Cookies" ] || [ "$1" = "cookies" ] ;
then
	yt-dlp --cookies $2
elif [ "$1" = "Playlist" ] ;
then
	yt-dlp -f "bestvideo[height='$3']+bestaudio/best[height='$3']" --yes-playlist -o "%(title)s-%(id)s.%(ext)s" --embed-chapters $2
fi
