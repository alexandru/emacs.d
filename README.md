# My Emacs Settings

Installs dependencies automatically by means of `package.el`. Requires Emacs 24.

## Usage

Clone the repo:

```bash
git clone git@github.com:alexandru/emacs.d.git ~/.emacs.d
```

## Emacs Setup

### Installation

My preferred installation on MacOS:

```sh
brew cask install emacs
```

This installs:

```
App '/Applications/Emacs.app'.
Binary '/usr/local/bin/emacs'.
Binary '/usr/local/bin/ebrowse'.
Binary '/usr/local/bin/emacsclient'.
Binary '/usr/local/bin/etags'.
```

**GOTCHA:** make sure these are on the system path and have priority over the system's Emacs.

### MacOS Service


Create `~/Library/LaunchAgents/my.emacs.plist`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>KeepAlive</key>
    <true/>
    <key>Label</key>
    <string>my.Emacs</string>
    <key>ProgramArguments</key>
    <array>
      <string>/Applications/Emacs.app/Contents/MacOS/emacs</string>
      <string>--fg-daemon</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
  </dict>
</plist>
```

The service can then be loaded via:

```sh
launchctl load -w ~/Library/LaunchAgents/my.emacs.plist
```

Or unloaded via:

```sh
launchctl unload -w ~/Library/LaunchAgents/my.emacs.plist
```

### Script for running EmacsClient

Placed in `~/bin/run-emacsclient`:

``` bash
#!/usr/bin/env bash

if [ -z "$EMACSCLIENT_OPTS" ]; then
    EMACSCLIENT_OPTS="-nc"
fi    

if [ $# -eq 0 ]; then
    COMMAND='/usr/local/bin/emacsclient '$EMACSCLIENT_OPTS' -e "(if (display-graphic-p) (x-focus-frame nil))"'
else
    COMMAND='/usr/local/bin/emacsclient '$EMACSCLIENT_OPTS' "$@"'
fi

if [ -z "$(shopt | grep login_shell)" ]; then
    echo "$COMMAND" | exec bash --login -s "$@"
else
    eval "exec $COMMAND"        
fi
```

Also place this in `~/bin/run-emacsclient-cli`:

``` bash
#!/usr/bin/env bash

export EMACSCLIENT_OPTS='-t'
exec "$HOME/bin/run-emacsclient" "$@"
```

### Bash Settings

```bash
# Default editor
export EDITOR="$HOME/bin/run-emacsclient-cli"
export VISUAL="$EDITOR"
export ALTERNATE_EDITOR="vim"

# Editor aliases
alias e="$HOME/bin/run-emacsclient-cli"
alias ew="$HOME/bin/run-emacsclient"
alias notes='$HOME/bin/run-emacsclient -e "(if (display-graphic-p) (x-focus-frame nil))" -e "(deft)" | grep -v nil'
```

### MacOS Apps

For executing the `emacsclient` in GUI mode as a regular app (via
Spotlight search, from the Dock, etc), packaged apps are provided in
[./apps/MacOS Apps.tar.gz](./apps/MacOS Apps.tar.gz).

These are created and can be edited with the 
[MacOS Automator](https://support.apple.com/guide/automator/welcome/mac)
and can be edited by it.

They do nothing more than to execute `$HOME/bin/run-emacsclient`
(script described above) with certain parameters. The path to the
script can be edited via Automator.
