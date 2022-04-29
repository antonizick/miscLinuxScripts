
alias gweb='cd /var/www/html/'
alias mat='cmatrix -C blue'
alias logck='sudo tail -f /var/log/syslog'
alias pushcode='sudo cp -r ./* /var/www/html/'


alias wai='curl ipinfo.io'
alias l='ls -lh'
alias me='sudo mount -t ecryptfs "/media/nick/Seagate Backup Plus Drive/Data/unsorted" "/media/nick/Seagate Backup Plus Drive/Data/unsorted"; cd "/media/nick/Seagate Backup Plus Drive/Data/unsorted"; ls'
alias ume='cd /home/nick/;sudo umount "/media/nick/Seagate Backup Plus Drive/Data/unsorted"; ls "/media/nick/Seagate Backup Plus Drive/Data/unsorted"'
alias ea='vi /home/nick/.bash_aliases'
alias upd='sudo apt update'
alias upg='sudo apt upgrade'
alias cc='clear'
alias sudo='sudo '
alias pme='smplayer /home/nick/unsorted/'
alias his='vi /home/nick/.bash_history'
alias mhs='sudo mount -t cifs //192.168.1.5/Share/Dad /home/nick/share/ -o vers=3.0,username=nick; ls /home/nick/share'

alias umhs='cd;sudo umount /home/nick/share; ls /home/nick/share'
alias moh='sudo mount -t cifs //192.168.1.5/other.home/ /media/nick/other.home/ -o vers=3.0,username=xroot; cd /media/nick/other.home/unsorted/; ls # ls /media/nick/other.home'
alias umoh='cd;sudo umount /media/nick/other.home; ls /media/nick/other.home'
alias boh='sudo grsync'
alias gyt='youtube-dl -cit -f mp4 '
alias gmm='youtube-dl -cit --extract-audio --audio-format mp3 '
alias doi='smplayer ~/unsorted/'
alias xpn='/opt/proxpn/proXPN&'
alias cam='mplayer -ontop -noborder -geometry 320x240+1700+1840 -tv driver=v4l2:width=320:height=240:device=/dev/video0 tv://'
alias cap='cd Downloads/ScreenStudio.Ubuntu/; ~/Downloads/ScreenStudio.Ubuntu/ScreenStudio.sh&'
alias edb='vi ~/.bash_history'
alias kali='VBoxManage startvm "Kali"'
alias win='VBoxManage startvm "Windows"'
alias rar='xdg-open /outhouse/unsorted/unsorted.i.rar'
alias ra2='xdg-open /outhouse/unsorted/unsorted.b.rar'
alias ra3='xdg-open /outhouse/unsorted/unsorted.n.rar'
alias ra4='xdg-open /outhouse/unsorted/unsorted.i.rar'
alias ra5='xdg-open /outhouse/unsorted/unsorted.b.rar'
alias ra6='xdg-open /outhouse/unsorted/unsorted.n.rar'
alias ra7='xdg-open /outhouse/unsorted/unsorted.c.rar'
alias cht='cat /home/nick/.cht'
alias echt='vi /home/nick/.cht'
alias cht2='cat /home/nick/.cht2'
alias echt2='vi /home/nick/.cht2'
alias cht3='cat /home/nick/.cht3'
alias echt3='vi /home/nick/.cht3'
alias acht='cat .cht .cht2 .cht3'
alias wtc='watch -n 5 "clear; ls -lha"'
alias wmm='watch -n 5 "clear; echo " "; ls *.mp3 | wc -l; ls *.webm | wc -l; ls *.part | wc -l; ls -lha"'
alias tux='tuxcards&'
alias gpo='espeak -s 125 -v en+f3 "Launching"; gpodder&'
alias lm='echo " "; echo " "; echo "-------------------"; ls -l | grep drw; echo "---------------------------" ; ls -l | grep -v drw #| cut -c 45-'
alias rs='clear; echo " "; cal; echo " "; date; echo " "'
alias eh='vi ~/.bash_history'

alias c='clear; echo " "; echo " "; echo '░█▀█░█▀█░█▀█░▀█▀░█▀█░█▀█░▀█▀░▀▀█░▀█▀░█▀▀░█░█░░░░░█▀▀░█▀█░█▄█'; echo '░█░█░█▀█░█░█░░█░░█░█░█░█░░█░░▄▀░░░█░░█░░░█▀▄░░░░░█░░░█░█░█░█'; echo '░▀░▀░▀░▀░▀░▀░░▀░░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀░▀' ;echo " "; cal; echo " "; date; echo " "'

alias bata='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "time|state|model|capacity|to\ full|percentage"'
alias batm='watch -n 60 /home/nick/.batm.sh'
alias test='nano ~/Documents/test.txt'
alias testf='nano ~/Documents/test.full.txt'
alias s='smplayer'
# alias 504='smplayer /outhouse/Technical\ Training/504\ Course\ Video/ &'
alias 504='smplayer "/home/nick/Data/504 Course Video/" &'
alias ytu='sudo -H pip install --upgrade youtube_dl'
alias uyt='sudo -H pip install --upgrade youtube_dl'
alias sv='x11vnc -ncache 10 -usepw -reopen'
alias say='espeak -s 125 -v en+f3'
alias dev='cd /home/nick/Data/Documents/pythonlab; c; ./dev.py'
alias gtdev='cd /home/nick/Data/Documents/pythonlab; c'
alias atm='atom /home/nick/Data/Documents/pythonlab &'
alias pyc='/home/nick/Downloads/pycharm/pycharm-community-2017.1.3/bin/pycharm.sh &'
alias g='cd /home/nick/Data/Documents/pythonlab; c; ./dev.py'
alias p3='/usr/bin/python3'
alias j='jobs'
alias e='exit'
alias dck='docker version; docker-compose version ;docker-machine version; service --status-all | grep docker'
alias dcs='c; docker ps; echo; echo; echo; docker ps -a; echo; echo; echo; docker images'
alias elk='docker run -d -p 9200:9200 -p 9300:9300 -it -h elasticsearch --name elasticsearch elasticsearch; docker run -d -p 5601:5601 -h kibana --name kibana --link elasticsearch:elasticsearch kibana; docker run -h logstash --name logstash --link elasticsearch:elasticsearch -it --rm -v "$PWD":/config-dir logstash -f /config-dir/logstash.conf'
alias de='docker run -d -p 9200:9200 -p 9300:9300 -it -h elasticsearch --name elasticsearch elasticsearch'
alias dk='docker run -d -p 5601:5601 -h kibana --name kibana --link elasticsearch:elasticsearch kibana'
alias dl='docker run -h logstash --name logstash --link elasticsearch:elasticsearch -it --rm -v "$PWD":/config-dir logstash -f /config-dir/logstash.conf'
alias kelk='docker rm -f elasticsearch kibana logstash'
alias dash='watch -n 5 "clear; echo " "; cal; echo " "; date; echo " "; docker version; docker-compose version ;docker-machine version; docker ps; echo; echo; echo; docker ps -a; echo; echo; echo; docker images"'
alias sch='clear; cal -y; echo " "; date; echo " "'
alias ewp='atom /var/www/'
alias ecid='atom /media/nick/64GB/pythonlab/ &'
alias wcid='cd /media/nick/54E1-7DD1/pythonlab/cid/inw; c'
alias rcid='cd /media/nick/54E1-7DD1/pythonlab/cid/inw; c; python3 cid.py'
alias pime='ssh pi@192.168.1.2'
alias kp='keepassxc'
alias cmusic='cava'
alias egmm='atom /media/nick/64GB/pythonlab/gmm/gmm.py /media/nick/64GB/pythonlab/gmm/dev.py /media/nick/64GB/pythonlab/notes.txt.py &'
alias dat="gnome-open /media/nick/64GB/18.quiz/dat.csv"
alias www='w3m'
alias web='w3m http://www.newsnow.co.uk/h/; c'
alias 508='smplayer /home/nick/Videos/SANS508.Video'
alias sn="sudo shutdown now"
alias rnc="sudo ip link set dev wlp3s0 down; sudo macchanger -r wlp3s0; sudo ip link set dev wlp3s0 up"
alias dvpn="sudo route add 172.16.3.7 gw 10.249.160.1 dev wlp3s0"
rm0() { s ~/Documents/work.music.000.m3u & }
alias wm0="rm0; cava"
alias x='xdg-open'
alias scrub='c; ls /outhouse/unsorted/temp/; /home/nick/Data/Documents/pythonlab/nscrape/scrub.py; ls /outhouse/unsorted/temp/'
alias rat='smplayer /outhouse/unsorted/temp/*'
alias cht='c;ls /outhouse/unsorted/temp/'
alias privt='proxychains /bin/bash'
alias privb='proxychains firefox --private-window ipinfo.io'

# Retired

# alias me='sudo mount -t ecryptfs /home/nick/unsorted /home/nick/unsorted; cd /home/nick/unsorted/; ls'
# alias ume='cd /home/nick/;sudo umount /home/nick/unsorted; ls /home/nick/unsorted/'

alias stdynotes="gnome-open /media/nick/64GB/18.quiz/504.Outline.odt"
alias stdysoft="gnome-open /media/nick/64GB/18.quiz/504.Software.and.Rescources.ods"
alias stdythreat="gnome-open /media/nick/64GB/18.quiz/Threat\ matrix.ods"
alias stdyman="gnome-open /media/nick/64GB/18.quiz/man.pages.odt"

alias stat='c; bat; wai'