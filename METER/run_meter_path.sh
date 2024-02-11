source activate /home/coder/miniconda/envs/meter02
cd /home/coder/projects/METER/
python run.py with data_root=/home/coder/projects/METER/data/vqa_path num_gpus=1 num_nodes=1 task_finetune_vqa_clip_bert per_gpu_batchsize=$3 load_path=meter_clip16_288_roberta_pretrain.ckpt clip16 text_roberta image_size=144 clip_randaug max_epoch=$1 learning_rate=$2 record_id=$4 vocab_size=10000 task_vqa_path
python run.py with data_root=/home/coder/projects/METER/data/vqa_path num_gpus=1 num_nodes=1 task_finetune_vqa_clip_bert per_gpu_batchsize=$3 load_path=/home/coder/projects/METER/result/task_vqa_path_seed0_from_meter_clip16_288_roberta_pretrain/version_1/checkpoints/last.ckpt image_size=144 clip_randaug max_epoch=$1 learning_rate=$2 record_id=$4 vocab_size=10000 test_only=True task_vqa_path