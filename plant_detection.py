import os
import cv2
import sys
from fastai.vision.all import *

model = load_learner('plant_disease_model.pkl')

uploader = SimpleNamespace(data = [f'public/disease/{sys.argv[1]}'])
img = PILImage.create(uploader.data[0])
prediction, _, prob = model.predict(img)
print(f'{prediction}')
sys.exit()