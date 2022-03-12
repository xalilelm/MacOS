# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/xalil/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim
# export EDITOR=nvim

# java home path
export JAVA_HOME=$(/usr/libexec/java_home)

# android home path
export ANDROID_HOME=/Users/xalil/Library/Android/sdk



# Aliases - Commands
alias reload="source ~/.zshrc"
alias r="ranger"
alias v="vim"
alias l="ls"
alias textedit="open -a TextEdit"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
#alias vim='nvim'
#alias v="nvim"
alias textedit="open -a TextEdit"


# intellij things
alias idea="/usr/local/bin/idea"
alias sevginselelnium="idea /Users/xalil/IdeaProjects/seleniumTestNGSevgin"
alias mysel="idea /Users/xalil/IdeaProjects/seleniumTestNGC3"
alias sevginjava="idea /Users/xalil/IdeaProjects/renasSevginJava/"
alias myjava="idea /Users/xalil/IdeaProjects/JavaRenastechC3"

# Aliases - Folder
alias h="cd ~"
alias d="cd ~/Desktop"
alias m="cd ~/Music/"
alias p="cd ~/Pictures/"
alias dn="cd ~/Downloads/"
alias doc="cd ~/Documents"
alias jv="cd ~/Desktop/bimis/javaVideos/"
alias sv="cd ~/Desktop/bimis/selenium/"
alias ssv="cd ~/Desktop/bimis/softskill/"
alias db="cd ~/Desktop/bimis/database"
alias notlar="cd ~/Desktop/Notlar/"
alias ln="vim ~/Desktop/Notlar/Linux-Bilgiler/index.md"
alias mn="vim ~/Desktop/Notlar/macnotes/index.md"
alias junk="cd /Users/xalil/junk"
alias ew="cd /Users/xalil/eclipse-workspace"
alias mi="cd ~/Desktop/bimis/miiq"

# Aliases - Config Files
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias cfg-espanso="vim /Users/xalil/Library/Preferences/espanso/default.yml"
alias nvimrc="vim /Users/xalil/.config/nvim/init.vim"
alias cfg-newsboat="vim ~/.newsboat/urls"

alias jw="vim ~/Desktop/bimis/javaVideos/javawiki/index.md"
alias jv="cd ~/Desktop/bimis/javavideos/"
alias dbv="cd ~/Desktop/bimis/database/"
alias av="cd ~/Desktop/bimis/API/"
alias notlar="cd ~/Desktop/Notlar/"
alias ln="vim ~/Desktop/Notlar/Linux-Bilgiler/index.md"
alias sw="vim ~/Desktop/bimis/selenium/selwiki/index.md"
alias ss="vim ~/Desktop/bimis/softskill/softskillindex.md"
alias dw="vim ~/Desktop/bimis/database/databaseWiki/index.md"
alias aw="vim /Users/xalil/Desktop/bimis/API/API_Wiki/index.md"
alias sv="cd ~/Desktop/bimis/selenium/"


alias int-filiz-sprintSummary="vim ~/Desktop/bimis/database/databaseWiki/DatabaseInterviewQuestions.md"
alias int-softskill="open ~/Desktop/bimis/softskill/Softskill-w-Table-of-Contents.pdf" 
alias int-tellme="open ~/Desktop/bimis/softskill/Tell_me_about_yourself.pdf"
alias int-sql="open ~/Desktop/bimis/database/DataBase_Interview/sql_interview.pdf"
alias int-sel="vim ~/Desktop/bimis/selenium/interview/Selenium_Interview_Questions.md"
alias int-framework="open ~/Desktop/bimis/CucumberBDD-FrameWork.pdf"
alias int-All="vim /Users/xalil/Desktop/bimis/interview/interviewQuestions"
alias user-story="cat /Users/xalil/snippets/.multisnippet/user_story"
alias acceptance-criteria="cat /Users/xalil/snippets/.multisnippet/acceptance_criteria"

# interview things
alias int-reqruiter-questions="vim /Users/xalil/snippets/.multisnippet/int-recruiter-call"

# Udemy Courses
alias udemy-sql="open https://www.udemy.com/course/oracle-sql-12c-become-an-sql-developer-with-subtitle/learn/lecture/"
alias udemy-api="open https://www.udemy.com/course/learn-rest-api-automation-using-rest-assured/learn/lecture/"
alias udemy-rahul-cucumber="open https://www.udemy.com/course/selenium-real-time-examplesinterview-questions/learn/lecture/"
alias udemy-dizlearn-cucumber="open https://www.udemy.com/course/cucumber-from-scratch/learn/lecture/"
alias udemy-tim-cucumber="open https://www.udemy.com/course/cucumber-framework-for-behavior-driven-development/learn/lecture/"
alias udemy-redhat="open https://www.udemy.com/course/unofficial-linux-redhat-certified-system-administrator-rhcsa-8/learn/lecture/"
alias udemy-jmeter="open https://www.udemy.com/course/learn-jmeter-from-scratch-performance-load-testing-tool/learn/lecture/"


# Android Testing Things 
alias ad="adb devices"



#fzf things
ns() { find ~/Desktop/Notlar/* -type f | fzf | xargs -o vim ;}
sn() { find ~/Desktop/Notlar/* -type f | fzf | xargs -o vim ;}
mm(){find ~/Desktop/bimis/miiq/* -type f | fzf | xargs -o vim ;}


# surfraw elvi shortcuts
alias yt="sr youtube"
alias google="sr google"
alias urban="sr urban"

# fzf bookmarks
alias cfg-bookmarks="vim ~/.config/surfraw/bookmarks"
alias add-bookmarks="vim ~/.config/surfraw/bookmarks"
fzf-surfraw() { surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e)" ;}
alias bm="fzf-surfraw"
#***************************************

#===============Search by Folder==========
# search All files=====
s-all(){
		open "$(find ~/Desktop/ -type f -iname '*.*' | fzf)"
}
#==========================================
# search All files and open with vscode=====
code-all(){
		code "$(find ~/Desktop/ -type f -iname '*.*' | fzf)"
}
#=================================
# search database - every file=====
s-db(){
		open "$(find ~/Desktop/bimis/database/ -type f -iname '*.*' | fzf)"
}
#===================================

# search JAVA - every file=====
s-java(){
		open "$(find ~/Desktop/bimis/javaVideos/ -type f -iname '*.*' | fzf)"
}
#===================================

# search selenium -every File======
s-sel(){
		open "$(find ~/Desktop/bimis/selenium/ -type f -iname '*.*' | fzf)"
}
#===================================

# search API -every File======
s-api(){
		open "$(find ~/Desktop/bimis/API/ -type f -iname '*.*' | fzf)"
}
#===================================


#=======================================
# fzf things
#
# fd - cd to selected folder
fd(){
	DIR=$(find ${1:-.} -type d 2> /dev/null | fzf) && cd "$DIR"
}
#*******************************
# fvim - open selected file with vim
ff(){
		FILE=$(fzf) && vim "$FILE"
}
#*************************************
# fh - repeat history
fh(){
	eval $(history | fzf +s |sed 's/ *[0-9]* *//')
}
#**************************************
# open pdf files
fpdf(){
	mupdf "$(locate -i .pdf | fzf)"
}
# image search
fimage() {
#preview "$( locate -i .jpg .png .jpeg |fzf )"
preview "$(find . -type f -regex "^.*\.\(png\|jpg\|jpeg\)$" |fzf)"
}
#**************************************
# open mpv files
fmp4(){
	mpv "$(locate -i .mp4 | fzf)"
}
##{{{ Folder Search - search and jump to folders found
foldersearch() {
DIR=$(find ${1:-.} -type d 2> /dev/null | fzf) && cd "$DIR"
}
#{{{=====Reddit-channels-for-rtv===
alias rtv-privacy="rtv --enable-media -s /privacy"
alias rtv-linux="rtv --enable-media -s /linux"
alias rtv-opensource="rtv --enable-media -s /opensource"
alias rtv-commandline="rtv --enable-media -s /commandline"
alias rtv-Filmmakers="rtv --enable-media -s /Filmmakers"
alias rtv-qa="rtv --enable-media -s /QAGeeks"
alias rtv-suckless="rtv --enable-media -s /suckless"
#}}}*************************************

#Snippets
# location of snippets, folder created in step 2 or custom location
snippets_dir=~/snippets/.multisnippet

# edit single line snippet
add-snippetrc() { $EDITOR ~/snippets/.snippetrc ;}

#=============vmware=====================
# edit single line vmware
add-vmwarerc() { $EDITOR ~/snippets/.vmwarerc ;}

# for vmware
vmsnippet() { 
	selected="$(cat ~/snippets/.vmwarerc | sed '/^$/d' | sort -n | fzf -e -i )"
	# remove tags, leading and trailing spaces, also no newline
	echo "$selected" | sed -e s/\;\;\.\*\$// | sed 's/^[ \t]*//;s/[ \t]*$//' | tr -d '\n' | pbcopy
}
#==============end vmware=================

# edit multiline snippet
cfg-multisnippetrc() { $EDITOR $snippets_dir/"$(ls $snippets_dir | fzf -e -i)" ;}

#create new multiline snippet
multisnippet() { $EDITOR $snippets_dir/"$1" ;}

#fzf-snippet() { 
ssnippet() { 
	selected="$(cat ~/snippets/.snippetrc | sed '/^$/d' | sort -n | fzf -e -i )"
	# remove tags, leading and trailing spaces, also no newline
	echo "$selected" | sed -e s/\;\;\.\*\$// | sed 's/^[ \t]*//;s/[ \t]*$//' | tr -d '\n' | pbcopy
}

#fzf-multisnippet() { 
#smultisnippet() { 
sm() { 
	# merge filename and tags into single line
	results=$(for FILE in $snippets_dir/*
	do
		getname=$(basename $FILE)
		gettags=$(head -n 1 $FILE)

		echo "$getname \t $gettags" 

	done)

	# copy content into clipboard without tags
	filename=$(echo "$(echo $results | fzf -e -i )" | cut -d' ' -f 1)
	sed 1d $snippets_dir/$filename | pbcopy
}

#===========================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export PATH=${PATH}:$HOME/Library/Android/sdk/platform-tools/
