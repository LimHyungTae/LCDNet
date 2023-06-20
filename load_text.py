import numpy as np

def load_text(path):
    data = np.loadtxt(path)
    print(data.shape)
    idx_pairs = []
    for (i, j) in data:
        idx_pairs.append([int(i), int(j)])
    return idx_pairs


a = load_text("/home/shapelim/qbench/kitti/00/2_6_1000.txt")
print(a)