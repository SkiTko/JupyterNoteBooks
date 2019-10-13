#! /bin/bash

PYTHON_VENV_NAME=Jupyter
PYTHON_VERSION=3.7.4

pyenv virtualenvs | grep $PYTHON_VENV_NAME > /dev/null
found=$?

if [ $found -ne 0 ]; then
    pyenv virtualenv $PYTHON_VERSION $PYTHON_VENV_NAME
fi

pyenv activate $PYTHON_VENV_NAME

pip install -U jupyterlab
pip install -U numpy==1.16.2
pip install -U scipy
pip install -U tensorflow-gpu==1.14.0
pip install -U matplotlib
pip install -U pillow
pip install -U opencv-python
