#!/usr/bin/env bash

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python ./scripts/action-recognition/train_recognizer.py \
    --dataset kinetics400 \
    --data-dir /home/ubuntu/data/kinetics400/train_256 \
    --val-data-dir /home/ubuntu/data/kinetics400/val_256 \
    --train-list /home/ubuntu/data/kinetics400/k400_train_240618.txt \
    --val-list /home/ubuntu/data/kinetics400/k400_val_19761_cleanv3.txt \
    --mode hybrid \
    --dtype float32 \
    --prefetch-ratio 1.0 \
    --video-loader \
    --use-decord \
    --model c3d_kinetics400 \
    --num-classes 400 \
    --batch-size 16 \
    --num-gpus 8 \
    --num-data-workers 32 \
    --input-size 112 \
    --new-height 128 \
    --new-width 171 \
    --new-length 16 \
    --new-step 2 \
    --lr-mode cosine \
    --lr 0.01 \
    --momentum 0.9 \
    --wd 0.0001 \
    --num-epochs 196 \
    --warmup-lr 0.001 \
    --warmup-epochs 24 \
    --scale-ratios 1.0,0.8 \
    --save-frequency 10 \
    --log-interval 50 \
    --logging-file c3d_kinetics400.log