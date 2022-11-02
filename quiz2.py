import pyautogui
import time
while True:
    time.sleep(4)
    pyautogui.typewrite("Hi, I am Mahmud, I am sending this message from python automatically, is this a fun?")
    time.sleep(2)
    pyautogui.press('enter')
    print("Working")