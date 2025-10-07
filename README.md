# GPU Communication Benchmarking

## Launch benchmarking jobs

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

## Reference

* [Improving Network Performance of HPC Systems Using NVIDIA Magnum IO NVSHMEM and GPUDirect Async](https://developer.nvidia.com/blog/improving-network-performance-of-hpc-systems-using-nvidia-magnum-io-nvshmem-and-gpudirect-async/)
* [NVIDIA/multi-gpu-programming-models](https://github.com/NVIDIA/multi-gpu-programming-models)
