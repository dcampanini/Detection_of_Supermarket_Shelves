# Detection of Supermarket Shelves
This project consists of a system to detect the Supermarket Shelves in the WebMarket dataset http://yuhang.rsise.anu.edu.au/

The system first transforms the RGB images to grayscale, then applies several filters and detectors, such as vertical and horizontal Sobel Filter, Canny Edge Detector and Hough Transform to identify lines in the images (green lines in the image below), using all the processing earlier indicated, finally the system generate a binary image with the shelves in black and the rest in white.   

The next image shows part of the processing to detect the supermarket shelves

![Image_system_of_detection](https://user-images.githubusercontent.com/19544865/71736869-f27fef80-2e30-11ea-9b7a-48a210c815a1.jpg)
