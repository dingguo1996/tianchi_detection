export CUDA_VISIBLE_DEVICES=3 
source activate maskrcnn_benchmark 

python /home/siting/files/DingGuo/tianchi_detection/tools/train_net.py \
--config-file "/home/siting/files/DingGuo/tianchi_detection/configs/e2e_faster_rcnn_R_50_FPN_1x.yaml" \
SOLVER.IMS_PER_BATCH 2 \
SOLVER.BASE_LR 0.0025 \
SOLVER.MAX_ITER 360000 \
SOLVER.STEPS "(240000, 320000)" \
TEST.IMS_PER_BATCH 1 \
OUTPUT_DIR   /home/siting/files/DingGuo/tianchi_model/faster_R50_idx009