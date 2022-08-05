# Package Management
alias suiton="sudo dnf upgrade --refresh"

#youtube content download
alias youtube="yt-dlp -f best --embed-thumbnail -N 8 "
alias yoump3="yt-dlp --extract-audio "
alias gethumb="yt-dlp --get-thumbnail "

# command line download method
alias download="wget -c "
alias fetcher="aria2c -c "

## Networking
alias ping8='ping -c 8'
alias ipp='curl ipinfo.info/ip'
alias myip="curl http://ipecho.net/plain; echo"

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

alias ~="cd ~ && source ~/.bashrc"

#get the error messages from journalctl
alias journal="journalctl -p 3 -xb"


#know my weather
alias weather='curl wttr.in/Brazzaville'
