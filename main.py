from audiostream import get_input
from time import sleep

def callback_mic(data):
    print('i got', len(data))

mic = get_input(callback=callback_mic)
mic.start()
sleep(5)
mic.stop()
