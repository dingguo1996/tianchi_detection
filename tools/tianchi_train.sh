export CUDA_VISIBLE_DEVICES=4,5,6,7 
source activate maskrcnn_benchmark 
export NGPUS=4 
python -m torch.distributed.launch \
--nproc_per_node=$NGPUS \
/home/siting/files/DingGuo/tianchi_detection/tools/train_net.py \
--config-file "/home/siting/files/DingGuo/tianchi_detection/configs/e2e_faster_rcnn_R_50_FPN_1x.yaml" \
SOLVER.IMS_PER_BATCH 8 \
SOLVER.BASE_LR 0.01 \
SOLVER.MAX_ITER 90000 \
SOLVER.STEPS "(60000, 80000)" \
TEST.IMS_PER_BATCH 4 
