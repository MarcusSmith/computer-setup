#!/bin/bash
set -e

# Install homebrew (which also installs xcode command line tools, including git)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

script_path="$(dirname $0)"

# Set up bash_profile and bashrc
sh "$script_path/bash-profile.sh"

# Set up git conveniences
sh "$script_path/git.sh"

exit 0
