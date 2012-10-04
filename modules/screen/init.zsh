#
# Defines GNU Screen aliases and provides for auto launching it at start-up.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[screen] )); then
  return 1
fi

#
# Auto Start
#

zstyle -t ':prezto:module:screen:auto-start' on-remote \
  && _screen_auto_start_on_remote='yes'
zstyle -t ':prezto:module:screen' auto-start \
  && _screen_auto_start='yes'

if [[ -n "$STY" ]]; _screen_is_started='yes'
if [[ -n "$SSH_CLIENT" ]]; _screen_is_on_remote='yes'

( is-false "$_screen_is_on_remote" || is-true "$_screen_auto_start_on_remote") \
&& ( is-false "$_screen_is_started" && is-true "$_screen_auto_start" ) && {
  session="$(
    screen -list 2> /dev/null \
      | sed '1d;$d' \
      | awk '{print $1}' \
      | head -1)"

  if [[ -n "$session" ]]; then
    exec screen -x "$session"
  else
    exec screen -a -A -U -D -R -m "$SHELL" -l
  fi
}

#
# Aliases
#

alias scr='screen'
alias scrl='screen -list'
alias scrn='screen -U -S'
alias scrr='screen -a -A -U -D -R'

