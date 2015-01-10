## Statedata components
## sub-type of Player capability

# State    0: Unknown, 1: stop, 2: play, 3: pause, 4: fastforward, 5: fastbackward, 6: moveto
uint32 state

# Speed play (or forward / reverse)
int32 speed

# Position
duration stamp
duration totaltime

bool canseek
bool subtitleenabled
int32 mediaid
MediaType mediatype

string title
string file
string thumbnail