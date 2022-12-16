#! /bin/bash

# # install python
# pyenv install -v ${PYTHON_VERSION}
# pyenv which python

# # install pyclean to clean __pycache__
# pyenv shell ${PYTHON_VERSION}
# pyenv which python

# python3 -m venv venv
# pyenv shell system
# pyenv which python

# . venv/bin/activate
# pyenv which python
# pip install pyclean
# pyclean -v ${PYENV_ROOT}/versions/${PYTHON_VERSION}/
# deactivate

# pyenv which python

echo ${PYTHON_VERSION}
mv ${PYENV_ROOT} ${ARTIFACT_OPT}/pyenv