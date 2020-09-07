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

export PATH="$HOME/.elmenv/bin:$PATH"

eval "$(elmenv init -)"

[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

export PATH="$HOME/.local/bin:$PATH"

eval "$(rbenv init -)"
# rbenv told me to do this
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
