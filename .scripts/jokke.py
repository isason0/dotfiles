from pynput import keyboard
#inputtia ilman vammaista enterin renkkaamista

j = "jokke viiskymmentkolm "
m = "meemil pitkä "
d = "duujon kakskymmentseitse "
i = "miikamettälä leveä "
#muuttujat

print ("Valitse: (j)okke (m)eemil (d)uujon m(i)ikamettälä ")
#viesti

with keyboard.Events() as events:
    event = events.get(1e6)
    if event.key == keyboard.KeyCode.from_char('j'):
        print(j*2000)
    if event.key == keyboard.KeyCode.from_char('m'):
        print(m*2000)
    if event.key == keyboard.KeyCode.from_char('d'):
        print(d*2000)
    if event.key == keyboard.KeyCode.from_char('i'):
        print(i*2000)
    else:
        quit()
#inputti
