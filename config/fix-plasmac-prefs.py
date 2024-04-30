from qtvcp.lib.preferences import Access
import os

machineName = 'laser_cutter'
configPath = '/home/sector67/linuxcnc/configs/laser_cutter'
prefsFile = os.path.join(configPath, machineName + '.prefs')
prefs = Access(prefsFile)

prefs.putpref('Arc Voltage Offset', 22900, float, 'PLASMA_PARAMETERS')
prefs.putpref('Arc Voltage Scale', 0.10, float , 'PLASMA_PARAMETERS')
prefs.putpref('Float Switch Travel', 0.290, float , 'PLASMA_PARAMETERS')
prefs.putpref('Height Per Volt', 0.002, float , 'PLASMA_PARAMETERS')
prefs.putpref('Safe Height', 0.5, float , 'PLASMA_PARAMETERS')

prefs.putpref('Use keyboard shortcuts', True, bool, 'GUI_OPTIONS')
prefs.putpref('Ohmic probe enable', True, bool, 'ENABLE_OPTIONS')
prefs.putpref('THC enable', True, bool, 'ENABLE_OPTIONS')

