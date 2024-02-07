# my additions start here
# my aliases
alias hdsentinel='sudo /home/isti/.local/bin/hdsentinel_019c_x64'
#alias minivmac='/home/isti/.local/bin/minivmac/minivmac'
alias lookneko='oneko -time 200000'
alias openttd='/home/isti/.local/bin/openttd-13.4-linux-generic-amd64/openttd'

# shows the temperatures and cpu MHz.
# needs lm-sensors.
function looksensors () { watch 'cat /proc/meminfo | grep "MemAvailable" ; cat /proc/loadavg; cat /proc/cpuinfo | grep "cpu MHz"; sensors | grep -E "Package id 0|Core 0|Core 1|temp1|fan1"'; }

# check the host file.
# shows host file without empty and 0.0.0.0 lines.
function lookhosts () { sed '/^#/ d; /^$/ d; /^0.0.0.0/ d' /etc/hosts; }
