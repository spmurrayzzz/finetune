# finetune
Scratch repo for storing configs and code related to ML finetuning

## Installation
```shell
git submodule update --init --recursive

python -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install packaging
pip install -e 'axolotl[flash-attn,deepspeed]'
```
