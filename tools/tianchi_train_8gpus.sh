export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 
source activate maskrcnn_benchmark 
export NGPUS=8 
python -m torch.distributed.launch \
--nproc_per_node=$NGPUS \
/home/siting/files/DingGuo/tianchi_detection/tools/train_net.py \
--config-file "/home/siting/files/DingGuo/tianchi_detection/configs/e2e_faster_rcnn_R_50_FPN_1x.yaml" \
SOLVER.IMS_PER_BATCH 16 \
SOLVER.BASE_LR 0.02 \
SOLVER.MAX_ITER 50000 \
SOLVER.STEPS "(30000, 40000)" \
TEST.IMS_PER_BATCH 8 \
