# this is woefully scuffed
import rpc
import time
import os

rpc_obj = rpc.DiscordIpcClient.for_platform('800412076371607644')
print("Running!")

while True:
    song = os.popen('./song.sh song').read()
    artist = os.popen('./song.sh artist').read()
    activity = {
            "details": song,
            "state": artist,
        }
    rpc_obj.set_activity(activity)
    time.sleep(15)
