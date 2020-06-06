# fish_vi_key_bindings

# Git Abbreviations
abbr -a ga git add
abbr -a gst git status
abbr -a gco git checkout
abbr -a gci git commit
abbr -a gcm git commit -m
abbr -a gv "git commit -m \"[tvOS]"
abbr -a gbr git branch
abbr -a gbrd git branch -d
abbr -a gbrD git branch -D
abbr -a gbra git branch -a
abbr -a amend git commit --amend
abbr -a stg git difftool --staged
abbr -a diff git difftool
abbr -a gps git push
abbr -a gpl git pull
abbr -a browse hub browse
abbr -a gbrda "git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"

abbr -a config emacs ~/.config/fish/config.fish
abbr -a bepi bundle exec pod install

abbr plesae please
abbr pleaase please

abbr gw ./gradlew

alias did "vim +'normal Go' +'r!date' ~/did.txt"

alias love "/Applications/love.app/Contents/MacOS/love"
alias loveme "love ."
alias makelove "zip -r ../(eval basename (eval pwd)).love *"

alias astudio "open -a /Applications/Android\ Studio.app"
alias emacs "open -a Emacs"
alias emacsf "emacs (fzf)"
alias cljs "clj -m cljs.mai"
abbr -a wed "emacs ~/Documents/write-every-day.org"
abbr -a red "emacs ~/Documents/read-every-day.org"
abbr -a til "emacs ~/Develop/til/README.org"

# Environment Variables
set -g -x FASTLANE_USER dominic@memrise.com
set -g -x JIRA_API_EMAIL dominic@memrise.com
set -g -x JIRA_API_TOKEN dAzph4x4hl6v7S4fGwjnF1D1

set LD_LIBRARY_PATH '/user/local/lib'

# setup Racket
set PATH '/Applications/Racket v7.6/bin' $PATH

# Setup Rust
if test -d $HOME/.cargo/
  set PATH $HOME/.cargo/bin $PATH
end

# Setup jenv
# if test -d $HOME/.jenv
#     set PATH $HOME/.jenv/bin $PATH
#     status --is-interactive; and source (jenv init -|psub)
# end

# Setup rbenv
status --is-interactive; and source (rbenv init -|psub)

# if test -d $HOME/.rbenv
  # set PATH $HOME/.rbenv/shims $PATH
  # rbenv rehash >/dev/null ^&1
# end

#Setup pyenv
if test -d $HOME/.pyenv
  set PATH $HOME/.pyenv/bin $PATH
  set PATH $HOME/.pyenv/shims $PATH
  pyenv rehash >/dev/null ^&1
  status --is-interactive; and source (pyenv init -|psub)
  status --is-interactive; and source (pyenv virtualenv-init -|psub)
end

# Setup SwiftEnv
# status --is-interactive; and . (swiftenv init -|psub)

# Flutter
if test -d $HOME/Develop/Libs/flutter
  set FLUTTER_ROOT $HOME/Develop/Libs/flutter
  set PATH $PATH $FLUTTER_ROOT/bin
end

# Dart
set PATH $PATH $HOME/.pub-cache/bin

# Kotlin Native
if test -d $HOME/Develop/Libs/kotlin-native
  set PATH $PATH $HOME/Develop/Libs/kotlin-native/bin
end

# set JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk

# Setup React-Native Android development
# set -x ANDROID_HOME $HOME/Library/Android/sdk
# set PATH $ANDROID_HOME/tools $PATH
# set PATH $ANDROID_HOME/platform-tools $PATH

# The next line updates PATH for the Google Cloud SDK.
# bass source '~/Documents/Development/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
# bass source '~/Documents/Development/google-cloud-sdk/completion.bash.inc'

# opam configuration
source /Users/dominic/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
