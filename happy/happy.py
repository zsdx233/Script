import cv2
import time
import os

date = time.strftime("%Y-%m-%d", time.localtime())
print(time.strftime("%H.%M.%S", time.localtime()))

dir = './output/{}/'.format(date)
if 'output' not in os.listdir():
    os.mkdir('output')
if date not in os.listdir('./output/'):
    os.makedirs(dir)

cap = cv2.VideoCapture(0)
i = 0
while cap.isOpened():
    ret, frame = cap.read()
    # cv2.imshow('frame',frame)
    cv2.imwrite(
        './output/{}/{}.{}.jpg'.format(
            date, str(time.strftime("%H.%M.%S", time.localtime())), i), frame)
    i += 1
    time.sleep(0.2)
