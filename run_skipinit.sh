#!/bin/bash

for model in resnet20_skipinit
do
    echo "python -u trainer_skipinit.py  --arch=$model  --save-dir=save_$model |& tee -a log_$model"
    python -u trainer_skipinit.py  --arch=$model  --lr=0.01  --batch_size=64 --save-dir=save_$model | tee -a log_$model
done
