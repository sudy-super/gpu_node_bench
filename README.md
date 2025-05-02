# GPU Node Bench

## 前提

- 全ノード同じpythonバージョンであること
- venvがインストールされていること
- 全ノード同じCUDAバージョン、NCCLバージョンであること
- RoCE通信が有効化されていること
- NVLinkがオンになっていること

## 手順

1. 仮想環境作成・依存関係インストール

```
bash bench_env.sh
```

2. `run_allreduce_bench.sh`を`./DeepSpeed/benchmarks/communication`に配置する

3. 実行

```
cd ./DeepSpeed/benchmarks/communication
bash bench.sh
```