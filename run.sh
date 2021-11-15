CUDA_VISIBLE_DEVICES=0 python main.py \
          --model_name_or_path  hfl/chinese-roberta-wwm-ext \
          --do_train --train_file data/train.jsonl \
          --do_eval  --validation_file data/valid.jsonl \
          --learning_rate 5e-5  --fp16 \
          --num_train_epochs 3 \
          --output_dir results \
          --per_gpu_eval_batch_size=16 \
          --per_device_train_batch_size=16 \
          --overwrite_output
