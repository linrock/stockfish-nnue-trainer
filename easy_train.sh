#!/bin/bash

python3 easy_train.py \
  --training-dataset=/root/data/Leela-dfrc_n5000.binpack \
  --gpus="0," \
  --experiment-name=2 \
  --start-lambda=1.0 \
  --end-lambda=0.75 \
  --gamma=0.995 \
  --lr=4.375e-4 \
  --start-from-engine-test-net True \
  --tui=False \
  --seed=$RANDOM \
  --max_epoch=800 \
  --auto-exit-timeout-on-training-finished=900 \
  --network-testing-threads 8
