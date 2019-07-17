#!bin/bash

plugins=`cat <<EOF
https://github.com/MoonshineSG/OctoPrint-Autoscroll/archive/master.zip
https://github.com/jneilliii/OctoPrint-BedLevelVisualizer/archive/master.zip
https://github.com/tjjfvi/OctoPrint-BetterHeaterTimeout/archive/master.zip
https://github.com/vitormhenrique/OctoPrint-Enclosure/archive/master.zip
https://github.com/ntoff/OctoPrint-FanSpeedSlider/archive/master.zip
https://github.com/jneilliii/OctoPrint-FloatingNavbar/archive/master.zip
https://github.com/imrahil/OctoPrint-NavbarTemp/archive/master.zip
https://github.com/kantlivelong/OctoPrint-PSUControl/archive/master.zip
https://github.com/jneilliii/OctoPrint-TabOrder/archive/master.zip
https://github.com/Birkbjo/OctoPrint-Themeify/archive/master.zip
https://github.com/amsbr/OctoPrint-EEprom-Marlin/archive/master.zip
https://github.com/OctoPrint/OctoPrint-FirmwareUpdater/archive/master.zip
https://github.com/malnvenshorn/OctoPrint-WebcamTab/archive/master.zip
https://github.com/ieatacid/OctoPrint-TerminalCommands/archive/master.zip
https://github.com/paukstelis/OctoPrint-Cancelobject/archive/master.zip
https://github.com/OllisGit/OctoPrint-DisplayLayerProgress/releases/latest/download/master.zip
https://github.com/FormerLurker/Octolapse/archive/master.zip
EOF
`

for plugin in ${plugins}; do
  echo "installing ${plugin}"
  /home/pi/oprint/bin/python2 -m pip install ${plugin} --no-cache-dir
done
