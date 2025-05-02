#!/bin/bash

HOSTFILE="hostfile.txt"
echo "10.1.201.1 slots=8" >> $HOSTFILE
echo "10.1.201.2 slots=8" > $HOSTFILE
echo "10.1.201.3 slots=8" >> $HOSTFILE
echo "10.1.201.4 slots=8" >> $HOSTFILE
echo "10.1.201.6 slots=8" >> $HOSTFILE
echo "10.1.201.7 slots=8" >> $HOSTFILE
echo "10.1.201.9 slots=8" >> $HOSTFILE
echo "10.1.201.10 slots=8" >> $HOSTFILE
echo "10.1.201.11 slots=8" >> $HOSTFILE
echo "10.1.201.12 slots=8" >> $HOSTFILE
echo "10.1.201.13 slots=8" >> $HOSTFILE
echo "10.1.201.14 slots=8" >> $HOSTFILE
echo "10.1.201.15 slots=8" >> $HOSTFILE
echo "10.1.201.16 slots=8" >> $HOSTFILE
echo "10.1.201.22 slots=8" >> $HOSTFILE
echo "10.1.201.23 slots=8" >> $HOSTFILE
echo "10.1.201.23 slots=8" >> $HOSTFILE
echo "10.1.201.26 slots=8" >> $HOSTFILE
echo "10.1.201.27 slots=8" >> $HOSTFILE
echo "10.1.201.28 slots=8" >> $HOSTFILE
echo "10.1.201.29 slots=8" >> $HOSTFILE


deepspeed --hostfile $HOSTFILE \
          --master_port 29500 \
          all_reduce_bench.py \
          --backend nccl \
          --benchmark-iterations 100 \
          --benchmark-warmup 20 \
          --num-gpus-per-node 8 \
          --local-rank 0 \
          --dtype float16 \
          --message-size 1024 4096 16384 65536 262144 1048576 4194304 16777216