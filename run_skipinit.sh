#!/bin/bash

for model in resnet32_skipinit
do
    echo "python -u trainer_skipinit.py  --arch=$model  --lr=0.01  --batch-size=64  --save-dir=save_$model |& tee -a log_$model"
    python -u trainer_skipinit.py  --arch=$model  --lr=0.01  --batch-size=64 --save-dir=save_$model | tee -a log_$model
done
