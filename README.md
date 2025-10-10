# GPU Communication Over AWS EFA Benchmarking

## Launch benchmarking jobs on K8S

```
# Launch a 2 nodes all_gather nccl-test
kubectl -f k8s/all_gather_perf.yaml

# Launch a 2 nodes all_reduce nccl-test
kubectl -f k8s/all_reduce_perf.yaml

# Launch a Jacobi single gpu test
kubectl -f k8s/jacobi_single_gpu.yaml

# Launch a 2 nodes Jacobi w/ NCCL
kubectl -f k8s/jacobi_nccl.yaml

# Launch a 2 nodes Jacobi /w NCCL + CUDA Graphs
kubectl -f k8s/jacobi_nccl_graphs.yaml
```

## Launch benchmarking jobs on Slurm

```
# Login to a compute node
srun -N 1 --pty /bin/ash

# Build a enroot sqush file
make sqush

# Start an enroot environment and build binaries
enroot create --name efa gpucomm+latest.sqsh
enroot start --mount /fsx:/fsx gpucomm /bin/bash
make

# Launch a nvshmem benchmark on Slurm
bash slurm/jacobi_nvshmem.sh

```

## Reference

* [Improving Network Performance of HPC Systems Using NVIDIA Magnum IO NVSHMEM and GPUDirect Async](https://developer.nvidia.com/blog/improving-network-performance-of-hpc-systems-using-nvidia-magnum-io-nvshmem-and-gpudirect-async/)
* [NVIDIA/multi-gpu-programming-models](https://github.com/NVIDIA/multi-gpu-programming-models)
