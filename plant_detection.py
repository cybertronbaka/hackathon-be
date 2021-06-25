import os
import cv2
import sys
from fastai.vision.all import *

model = load_learner(path, 'plant_disease_model.pkl')

image = cv2.imread(f'/public/uploads/{sys.args[0]}')
img = PILImage.create(image)
prediction, _prob = model.predict(img)
sys.exit(f'{prediction}/{_prob}')