sudo apt update
sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
cd /opt
sudo git clone https://github.com/opencv/opencv.git
sudo git clone https://github.com/opencv/opencv_contrib.git
cd opencv
sudo mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE \
         -D CMAKE_INSTALL_PREFIX=/usr/local \
         -D INSTALL_C_EXAMPLES=ON \
         -D INSTALL_PYTHON_EXAMPLES=OFF \
         -D WITH_TBB=ON \
      -D WITH_CUDA=ON \
         -D CUDA_GENERATION="Maxwell" \
         -D CUDA_ARCH_BIN=6.1 \
      -D BUILD_opencv_cudacodec=ON \
         -D ENABLE_FAST_MATH=ON \
         -D NVCUVID_FAST_MATH=ON \
         -D CUDA_FAST_MATH=ON \
         -D WITH_CUBLAS=ON \
         -D BUILD_opencv_java=OFF \
         -D BUILD_ZLIB=ON \
         -D BUILD_TIFF=ON \
         -D WITH_GTK=ON \
         -D WITH_NVCUVID=ON \
         -D WITH_FFMPEG=ON \
         -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-11.6 \
         -D WITH_1394=ON \
         -D CUDNN_INCLUDE_DIR=/usr/local/cuda/include \
         -D CUDNN_LIBRARY=/usr/local/cuda/lib64/libcudnn.so.8.3.0  \
         -D OPENCV_GENERATE_PKGCONFIG=ON \
         -D OPENCV_PC_FILE_NAME=opencv.pc \
         -D OPENCV_ENABLE_NONFREE=ON \
         -D WITH_GSTREAMER=ON \
         -D WITH_V4L=ON \
         -D WITH_QT=ON \
         -D WITH_CUDNN=ON \
         -D OPENCV_DNN_CUDA=ON \
         -D WITH_OPENGL=ON \
         -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
         -D BUILD_EXAMPLES=ON ..
sudo make -j8
sudo make install
sudo ldconfig
cd ~
