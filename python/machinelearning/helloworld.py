# python3 --version
# pip3 --version
# sudo apt update
# sudo apt install python3-dev python3-pip python3-venv
# python3 -m venv --system-site-packages ~/.venv
# source ~/.venv/bin/activate  # sh, bash, or zsh
# pip install --upgrade pip
# pip list  # show packages installed within the virtual environment
# deactivate  # don't exit until you're done using TensorFlow
# pip install --upgrade tensorflow matplotlib
# python -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
# docker run -it --rm -v $PWD:/tmp -w /tmp tensorflow/tensorflow python ./helloworld.py
# y = 3x + 1

import tensorflow as tf
import numpy as np
from tensorflow import keras

model = tf.keras.Sequential([keras.layers.Dense(units=1, input_shape=[1])])

model.compile(optimizer='sgd', loss='mean_squared_error')

xs = np.array([-1.0, 0.0, 1.0, 2.0, 3.0, 4.0, 5.0], dtype=float)
ys = np.array([-2.0, 1.0, 4.0, 7.0, 10.0, 13.0, 16.0], dtype=float)

model.fit(xs, ys, epochs=500)

print(model.predict([10.0]))
