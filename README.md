# In-air Hand Gesture Signature - Motion History Image - Blocks (iHGS-MHI-BLOCKS)
Implementation of Custom Image Processing Algorithm For 3D Features Generation. 
For paper titled [Revolutionizing Signature Recognition: A Contactless Approach with Convolutional-Recurrent Neural Network (C-RNN)]([https://joiv.org/index.php/joiv/article/view/2359](https://doi.org/10.14716/ijtech.v15i4.6744)
### ⚠️ The algorithm's source code will be uploaded to this repository once the article is published.⚠️
## Abstract
This custom image processing algorithm standardizes and preserves the full sequence of in-air hand gesture signatures. It processes 2000 samples across 100 classes, representing 100 individuals, ensuring the complete preservation of information within 10 frames using MHI and a specialized image processing technique. Each sample, with dimensions 640 x 480 x N, varies in frame count (N). This algorithm uniquely standardizes these varying frame counts, encapsulating all spatio-temporal information within a concise 10-frame format.
<img src="https://alvinlfc.com/image/iHGS-MHI-BLOCKS.jpg" width="600" height="700" alt="MSCNN">

## Getting Started

To clone this repository and start exploring the this image processing algorithm on your local machine.

```bash
git clone https://github.com/alvinlimfangchuen/iHGS-MHI-BLOCKS.git
```

### Prerequisites

- **MATLAB**: Compatible with any version,  this algorithm was specifically developed in **MATLAB 2021a**.
- **Dependencies**: No first-party toolboxes or third-party libraries are required for this algorithm.



### Dataset

The implementation of this project is based on the In-Air Hand Gesture Signature (iHGS) database, which is currently the only publicly available image-based dataset for in-air hand gesture signature recognition.
For more information on the iHGS database and to access it for your research, please visit the following link and contact the corresponding author:

[In-Air Hand Gesture Signature (iHGS) Database](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10439358/)

Please ensure you adhere to the dataset's usage guidelines and cite it appropriately in your work.

## Citation

```bibtex
@article{lim2024inair,
  title={Revolutionizing Signature Recognition: A Contactless Method with Convolutional Recurrent Neural Networks},
  author={Alvin Fang Chuen Lim, Wee How Khoh, Ying Han Pang, Hui Yen Yap},
  doi = {(https://doi.org/10.14716/ijtech.v15i4.6744)},
  journal={International Journal of Technology},
  volume={15(4)},
  pages={pp. 1102-1117},
  year={2024}
}
```
