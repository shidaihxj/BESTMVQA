source activate tcl
cd /home/coder/projects/TCL
python yaml_config.py --epoch $1 --lr $2 --batch_size $3 --file_name './configs/VQA_med.yaml'

python VQA.py --config ./configs/VQA_med.yaml --output_dir output/vqa_med --checkpoint "/home/coder/projects/TCL/TCL_4M.pth" --record_id $4

python VQA.py --config ./configs/VQA_med.yaml --output_dir output/vqa_med --checkpoint /home/coder/projects/TCL/output/vqa_med/checkpoint_latest.pth --evaluate --record_id $4
