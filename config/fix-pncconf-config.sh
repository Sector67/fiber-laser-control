#sed -i -e '/^setp hm2_5i25.0.dpll.01.timer-us/d' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.hal
#sed -i -e '/^setp hm2_5i25.0.stepgen.timer-number/d' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.hal
sed -i -e 's/^setp    hm2_7i92.0.encoder.00.filter 1/setp    hm2_7i92.0.encoder.00.filter 0/' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.hal
# Fix the missing quote
sed -i -e 's/^loadrt hm2_eth board_ip="192.168.1.121, config="num_encoders=1 num_pwmgens=1 num_stepgens=3"/loadrt hm2_eth board_ip="192.168.1.121", config="num_encoders=1 num_pwmgens=1 num_stepgens=3"/' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.hal

sed -i -e '/USER_COMMAND_FILE/d' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.ini
sed -i '/\[DISPLAY\]/a USER_COMMAND_FILE = qtplasmac_custom_post.py' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.ini
# remove duplicate ini file entries so that the python config parser works
#sed -i -e '0,/POSITION_FEEDBACK = ACTUAL/{/POSITION_FEEDBACK = ACTUAL/d;}' /home/sector67/linuxcnc/configs/laser_cutter/laser_cutter.ini
