#!/bin/bash
# a simple script that shows notifications after installing  packages
package=${1}
sudo yum install $package &&  notify-send "Installed" "${package} has been installed" --icon=dialog-information

