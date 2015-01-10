## State data media message
## Common state of media connected object

Header header

# State    0: Unknown, 1: Init, 2: Enable, 3: Shutdown
uint32 state

# Input    (tv/tuner, player, ext1, HDMI3, VGA, HP, ext...)
MonitorInfo monitor

# Audio data
SpeakerInfo speaker

# Player data
PlayerInfo player

uint32 UNKNOWN=0
uint32 INIT=1
uint32 ENABLE=2
uint32 SHUTDOWN=3