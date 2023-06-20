min_rs=(2 6 10)
max_rs=(6 10 12)
for seq in "00" "02" "05" "06" "07" "08"
    do  

    for jj in 0 1 2
    do
        python -m evaluation.inference_yaw_general --root_folder /data/kitti --dataset kitti --validation_sequence $seq --weights_path /pretreined_models/LCDNet-kitti360.tar --start_idx ${min_rs[$jj]} --end_idx ${max_rs[$jj]} --ransac
    done
done
