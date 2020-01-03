# Detection of Supermarket Shelves
This project consists of a system to detect the Supermarket Shelves in the WebMarket dataset http://yuhang.rsise.anu.edu.au/

The system first transform the RGB images to grayscale, then apply several filters and detectors such as vertical and horizontal Sobel filter, Canny edge detector and Hough transform to identify lines in the images (green lines in the image below), using all the processing early indicated finally the system generate a binary image with the shelves in black and the rest in white.   

![Image_system_of_detection](https://user-images.githubusercontent.com/19544865/71736869-f27fef80-2e30-11ea-9b7a-48a210c815a1.jpg)
