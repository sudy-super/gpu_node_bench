#!/bin/bash

python -m venv deepspeed_test
source deepspeed_test/bin/activate

pip install deepspeed torch numpy

git clone https://github.com/microsoft/DeepSpeed.git