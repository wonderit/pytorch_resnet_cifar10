#!/bin/bash

for model in resnet20_nobn
do
    echo "python -u trainer_nobn.py  --arch=$model  --save-dir=save_$model |& tee -a log_$model"
    python -u trainer_nobn.py  --arch=$model  --save-dir=save_$model | tee -a log_$model
done
