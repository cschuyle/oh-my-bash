for path in \
    /usr/local/opt/gnu-tar/libexec/gnubin \
    /usr/local/opt/gnu-sed/libexec/gnubin \
    /usr/local/opt/findutils/libexec/gnubin \
    /usr/local/sbin \
; do
    [[ "$PATH" =~ "$path" ]] || export PATH="$path:$PATH"
done

export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(jenv init -)"

set -o noclobber

export EDITOR=emacs

eval "$(pyenv init -)"
