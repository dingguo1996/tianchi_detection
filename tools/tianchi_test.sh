export CUDA_VISIBLE_DEVICES=6,7 
source activate maskrcnn_benchmark
python /home/siting/files/DingGuo/tianchi_detection/tools/train_net.py \
--config-file "/home/siting/files/DingGuo/tianchi_detection/configs/e2e_faster_rcnn_R_50_FPN_1x.yaml" \
TEST.IMS_PER_BATCH 1 
